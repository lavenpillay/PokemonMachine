package com.darkdesign.pokemonmachine.fragment;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import android.app.Fragment;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.shapes.ArcShape;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimpleMoveListAdapter;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;
import com.darkdesign.pokemonmachine.layout.FlowLayout;

public class MoveDisplayFragment extends Fragment {
	private String TAG = MoveDisplayFragment.class.toString();
	private View view;
	private EditText filterText = null;
	
	private AssetHelper assetHelper;
	private DatabaseHelper db;
	private SharedPreferences applicationSettings;
	private LayoutInflater inflater;
	private ListView mList;
	
	private ArrayList<Move> allMoves;
	public static ArrayList<Move> movesList;
	
	public SimpleMoveListAdapter movesListAdapter;
	
	private TextWatcher filterTextWatcher = new TextWatcher() {
		public void afterTextChanged(Editable s) {
			
	    }

	    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
	    	//updateMoveCounter();
	    }

	    public void onTextChanged(CharSequence s, int start, int before, int count) {
	    	if (s.length() > 0) {
	    		movesListAdapter.getFilter().filter(s);
	    		//mList.invalidate();
	    	} else if (s.length() == 0) {
	    		movesListAdapter.getFilter().filter("");
	    	}
	    }
	};
	
	/**
	 * 
	 */
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		super.onActivityCreated(savedInstanceState);
		    
		Log.i(TAG, "onActivityCreated() - Called");
		
		this.allMoves = PokemonMachineActivity.cache.getAllMoves();
		
		//adapter.getFilter().filter("Sand");
	}
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

	};
	
	
	 @Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		 Log.i(TAG, "onCreateView() - Called");
		 
		 this.inflater = inflater;
		 view = inflater.inflate(R.layout.fragment_moves, container, false);
	     mList = (ListView) view.findViewById(R.id.mlist); 

		 this.assetHelper = new AssetHelper((PokemonMachineActivity)getActivity());
   
		 applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)getActivity());
   
		 filterText = (EditText) view.findViewById(R.id.txtFilter);
		 filterText.addTextChangedListener(filterTextWatcher);
   
		 // Handle List
		 movesList = PokemonMachineActivity.db.getAllMoves();
		 movesListAdapter = new SimpleMoveListAdapter(getActivity(), movesList);
	
		 ListView listView = (ListView) view.findViewById(R.id.mlist);
		 listView.setAdapter(movesListAdapter);
		 listView.invalidate();
   
		 listView.setOnItemClickListener(new OnItemClickListener() {
			 public void onItemClick(AdapterView<?> parent, View view,
					 int position, long id) {

				 update((Move) parent.getItemAtPosition(position));

			 }
		 });
		 
		 // Update Move Counter
		 updateMoveCounter();
   
		 ImageButton btnClearNameFilter = (ImageButton)view.findViewById(R.id.btnClearNameFilter);

		 btnClearNameFilter.setOnClickListener(new OnClickListener() {
			 @Override
			 public void onClick(View v) {
				 EditText edtName = (EditText)view.findViewById(R.id.txtFilter);
				 edtName.setText("");
			 }
		 });
		 
		Spinner spnMovesetSelector = (Spinner) view.findViewById(R.id.spnMoveSetSelector);
		spnMovesetSelector.setOnItemSelectedListener(new OnItemSelectedListener() {
		    @Override
		    public void onItemSelected(AdapterView<?> parentView, View selectedItemView, int position, long id) {
		    	movesListAdapter.clear();
		    	
		        if (position != 0) {
		        	
		        	String[] movesetNames = getResources().getStringArray(R.array.move_selectors);
		        	int typeId = PokemonMachineActivity.cache.getTypeIdByName(movesetNames[position]);
		        	int[] moveIds = PokemonMachineActivity.db.getMoveIdsByType(typeId);
		        	
		        	
		        	ArrayList<Move> movesByType = new ArrayList<Move>();
		        	for (int i=0; i < moveIds.length; i++) {
		        		movesByType.add(allMoves.get(moveIds[i] - 1));
		        	}
		        	//movesList.addAll(movesByType);
		        	movesListAdapter.addAll(movesByType);
		        } else {
		        	movesListAdapter.addAll(allMoves);
		        }
		        	
		        movesListAdapter.notifyDataSetChanged();

		        TextView txtMoveCount = (TextView) view.findViewById(R.id.txtMoveCount);
		        txtMoveCount.setText(String.valueOf(movesListAdapter.getCount()));
		    }


		    @Override
		    public void onNothingSelected(AdapterView<?> parentView) {
		        // your code here
		    }

		});

		 listView.setFastScrollEnabled(Config.FAST_SCROLL);
		 listView.setFastScrollAlwaysVisible(Config.FAST_SCROLL_VISIBILITY);
		 listView.setScrollBarStyle(View.SCROLLBARS_OUTSIDE_INSET);
   
		 // Select default MOVE
		 update(movesListAdapter.getItem(0));

		 return view;
	 }
	 
	private void updateMoveCounter() {
		TextView txtMoveCount = (TextView) view.findViewById(R.id.txtMoveCount);
		txtMoveCount.setText(String.valueOf(movesListAdapter.getCount()));
	}
	 
	 public void update(Move move) {
		 LinearLayout moveInformationArea = (LinearLayout) view.findViewById(R.id.moveInformationArea);
		 moveInformationArea.removeAllViews();
		 
		 FlowLayout pokemonArea = (FlowLayout) view.findViewById(R.id.pokemonArea);
		 pokemonArea.removeAllViews();
		 
		 // Name
		 LinearLayout moveNameLayout = (LinearLayout)inflater.inflate( R.layout.card_entry, null );
		
		 TextView txtMoveName = (TextView) moveNameLayout.findViewById(R.id.heading);
		 txtMoveName.setText(move.getName());
		 TextView txtEffectShort = (TextView) moveNameLayout.findViewById(R.id.content);
		 txtEffectShort.setText(move.getEffectShort());
		 
		 moveInformationArea.addView(moveNameLayout);
		 
		 // Stats display
		 LinearLayout statsLayout = (LinearLayout)inflater.inflate( R.layout.move_stats_icons_display, null );
		 
		 String power = (move.getDamageClass().equalsIgnoreCase("non-damaging")) ? "--" : String.valueOf(move.getPower());
		 String accuracy = (move.getAccuracy() > 0) ? String.valueOf(move.getAccuracy()) : "--" ;
		 
		 TextView txtMovePower = (TextView) statsLayout.findViewById(R.id.txtMovePower);
		 txtMovePower.setText(power);
		 TextView txtMoveAccuracy = (TextView) statsLayout.findViewById(R.id.txtMoveAccuracy);
		 txtMoveAccuracy.setText(accuracy);
		 TextView txtMovePowerPoints = (TextView) statsLayout.findViewById(R.id.txtMovePowerPoints);
		 txtMovePowerPoints.setText(String.valueOf(move.getPP()));
		 
		 moveInformationArea.addView(statsLayout);
		 
		 // Detailed Description
		 LinearLayout moveEffectLayout = (LinearLayout)inflater.inflate( R.layout.card_entry, null );
			
		 TextView txtEffectTitle = (TextView) moveEffectLayout.findViewById(R.id.heading);
		 txtEffectTitle.setText("Detailed description");
		 
		 TextView txtEffectLong = (TextView) moveEffectLayout.findViewById(R.id.content);
		 txtEffectLong.setText(Html.fromHtml(getFormattedLongEffect(move)));
		 //txtDescription.setTextSize(TypedValue.COMPLEX_UNIT_PT, 9);
		 
		 moveInformationArea.addView(moveEffectLayout);
		 
		 // Get Pokemon with selected move
		 
		 final int[] compatiblePokemonIds = PokemonMachineActivity.db.getPokemonIdsForMove(move.getId());
		 
		 TextView txtPokemonCount = (TextView) view.findViewById(R.id.txtPokemonCount);
		 txtPokemonCount.setText(String.valueOf(compatiblePokemonIds.length));
		 
		 for (int i=0; i < compatiblePokemonIds.length; i++) {
			 
			 final int pokemonId = compatiblePokemonIds[i];
			 LinearLayout pokemonLayout = (LinearLayout)inflater.inflate( R.layout.evolution_state_image, null );
			 FlowLayout.LayoutParams lp = new FlowLayout.LayoutParams(10, 10);
			 pokemonLayout.setLayoutParams(lp);
			 
			 ImageView imgPokemon = (ImageView) pokemonLayout.findViewById(R.id.imgPokemonEvolution);
			 Bitmap bmp = assetHelper.getBitmapFromAsset("pokemon_sprites/" + Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH) + ".png");
			 imgPokemon.setImageBitmap(bmp);
			 
			 TextView txtName = (TextView) pokemonLayout.findViewById(R.id.txtPokemonEvolutionName);
			 //txtName.setText(PokemonMachineActivity.cache.getPokemon(pokemonId).getName());
			 txtName.setText(Util.toTitleCase(PokemonMachineActivity.db.getPokemonName(pokemonId)));
			 
			 imgPokemon.setOnClickListener(new OnClickListener() {
			    public void onClick(View v) {
			    	PokemonMachineActivity.pokemonDisplayFragment.update(PokemonMachineActivity.cache.getPokemon(pokemonId));
					((PokemonMachineActivity)getActivity()).getViewPager().setCurrentItem(PokemonMachineActivity.FRAGMENT_POSITION_POKEMON, true);
			    }
			 });
			 
			 pokemonArea.addView(pokemonLayout);
		 }
	 }
	
	private String getFormattedLongEffect(Move move) {
		String htmlString = move.getEffectLong();
		
		htmlString = htmlString.replace("[]", "");
		htmlString = htmlString.replace("$effect_chance", "<font color=" + Constants.COLOR_EFFECT_CHANCE + ">" + move.getEffectChance() + "</font>");
		
		// Handle Moves
        String myPattern = "\\{move:.*?\\}";
        Pattern p = Pattern.compile(myPattern);
        Matcher m = p.matcher(htmlString);

        StringBuffer formattedString = new StringBuffer();
        while (m.find()) {
            String match = m.group();
            match = match.replace("{move:", "");
            match = match.replace("}", "");
                        
            m.appendReplacement(formattedString, "<font color=" + Constants.COLOR_MOVE_NAME + ">" + match.toUpperCase() + "</font>");
        }
        m.appendTail(formattedString);
        htmlString = formattedString.toString();
        
        // Handle Mechanics 1
        myPattern = "\\[(.*?)\\]\\{mechanic:.*?\\}";
        p = Pattern.compile(myPattern);
        m = p.matcher(htmlString);

        formattedString = new StringBuffer();
        while (m.find()) {
            String match = m.group(1);
            m.appendReplacement(formattedString, "<font color=" + Constants.COLOR_MECHANIC_NAME + ">" + match.toUpperCase() + "</font>");
        }
        m.appendTail(formattedString);
        htmlString = formattedString.toString();
        
        // Handle Mechanics 2
        myPattern = "\\{mechanic:(.*?)\\}";
        p = Pattern.compile(myPattern);
        m = p.matcher(htmlString);

        formattedString = new StringBuffer();
        while (m.find()) {
            String match = m.group(1);
            m.appendReplacement(formattedString, "<font color=" + Constants.COLOR_MECHANIC_NAME + ">" + match.toUpperCase() + "</font>");
        }
        m.appendTail(formattedString);
        htmlString = formattedString.toString();
        
        // Handle Ability
        myPattern = "\\{ability:(.*?)\\}";
        p = Pattern.compile(myPattern);
        m = p.matcher(htmlString);

        formattedString = new StringBuffer();
        while (m.find()) {
            String match = m.group(1);
            m.appendReplacement(formattedString, "<font color=" + Constants.COLOR_ABILITY_NAME + ">" + match.toUpperCase() + "</font>");
        }
        m.appendTail(formattedString);
        htmlString = formattedString.toString();
        
        // Handle Item
        myPattern = "\\{item:(.*?)\\}";
        p = Pattern.compile(myPattern);
        m = p.matcher(htmlString);

        formattedString = new StringBuffer();
        while (m.find()) {
            String match = m.group(1);
            m.appendReplacement(formattedString, "<font color=" + Constants.COLOR_ITEM_NAME + ">" + match.toUpperCase() + "</font>");
        }
        m.appendTail(formattedString);
        htmlString = formattedString.toString();
        
        //Log.d(TAG, "NEW TEXT: " + htmlString);
        
		return htmlString;
	}
}
