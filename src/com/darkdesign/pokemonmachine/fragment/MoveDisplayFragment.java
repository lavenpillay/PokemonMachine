package com.darkdesign.pokemonmachine.fragment;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import android.app.Fragment;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
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
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimpleMoveListAdapter;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Move;
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
	
	public static SimpleMoveListAdapter movesListAdapter;
	
	private TextWatcher filterTextWatcher = new TextWatcher() {
		public void afterTextChanged(Editable s) {
	    }

	    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
	    }

	    public void onTextChanged(CharSequence s, int start, int before, int count) {
	    	Log.d(TAG, "Filter Text Changed" + s);
	    	
	    	if (s.length() > 0) {
	    		movesListAdapter.getFilter().filter(s);
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
		
		//adapter.getFilter().filter("Sand");
	}
	
	
	 @Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		 Log.i(TAG, "onCreateView() - Called");
		 
		 this.inflater = inflater;
		 view = inflater.inflate(R.layout.fragment_moves, container, false);
	   

		 this.assetHelper = new AssetHelper((PokemonMachineActivity)getActivity());
   
		 applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)getActivity());
   
		 filterText = (EditText) view.findViewById(R.id.txtFilter);
		 filterText.addTextChangedListener(filterTextWatcher);
   
		 // Handle List
		 String[] moveNames = PokemonMachineActivity.cache.getAllMoveNames();
		 movesListAdapter = new SimpleMoveListAdapter(getActivity(), moveNames);
	
		 ListView listView = (ListView) view.findViewById(R.id.mlist);
		 listView.setAdapter(movesListAdapter);
		 listView.invalidate();
   
		 listView.setOnItemClickListener(new OnItemClickListener() {
			 public void onItemClick(AdapterView<?> parent, View view,
					 int position, long id) {

				Log.i(TAG, "Item Clicked");

				String nameToCheck = (String) parent.getItemAtPosition(position);
				int moveId = Util.arrayIndexOf(PokemonMachineActivity.cache.getAllMoveNames(), nameToCheck); // because of zero-index
				update(PokemonMachineActivity.cache.getAllMoves().get(moveId));

			 }
		 });
   
		 ImageButton btnClearNameFilter = (ImageButton)view.findViewById(R.id.btnClearNameFilter);

		 btnClearNameFilter.setOnClickListener(new OnClickListener() {
			 @Override
			 public void onClick(View v) {
				 EditText edtName = (EditText)view.findViewById(R.id.txtFilter);
				 edtName.setText("");
			 }
		 });
   
		 listView.setFastScrollEnabled(Config.FAST_SCROLL);
		 listView.setFastScrollAlwaysVisible(Config.FAST_SCROLL_VISIBILITY);
		 listView.setScrollBarStyle(View.SCROLLBARS_OUTSIDE_INSET);
   
		 // Select default MOVE
		 //update(PokemonMachineActivity.cache.getItemById(0));

		 return view;
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
		 
		 moveInformationArea.addView(moveNameLayout);
		 
		 // Description
		 LinearLayout moveEffectLayout = (LinearLayout)inflater.inflate( R.layout.card_entry, null );
			
		 TextView txtEffectTitle = (TextView) moveEffectLayout.findViewById(R.id.heading);
		 txtEffectTitle.setText("Detailed description");
		 
		 TextView txtEffectLong = (TextView) moveEffectLayout.findViewById(R.id.content);
		 txtEffectLong.setText(Html.fromHtml(getFormattedLongEffect(move)));
		 //txtDescription.setTextSize(TypedValue.COMPLEX_UNIT_PT, 9);
		 
		 // Get Pokemon with selected move
		 int[] compatiblePokemonIds = PokemonMachineActivity.db.getPokemonIdsForMove(move.getId());
		 
		 for (int i=0; i < compatiblePokemonIds.length; i++) {
			 LinearLayout pokemonLayout = (LinearLayout)inflater.inflate( R.layout.evolution_state_image, null );
			 FlowLayout.LayoutParams lp = new FlowLayout.LayoutParams(10, 10);
			 pokemonLayout.setLayoutParams(lp);
			 
			 ImageView imgPokemon = (ImageView) pokemonLayout.findViewById(R.id.imgPokemonEvolution);
			 Bitmap bmp = assetHelper.getBitmapFromAsset("pokemon_sprites/" + Util.padLeft(compatiblePokemonIds[i], Constants.POKEMON_ID_LENGTH) + ".png");
			 imgPokemon.setImageBitmap(bmp);
			 
			 pokemonArea.addView(pokemonLayout);
		 }
		
		 moveInformationArea.addView(moveEffectLayout);
	 }
	 
	/**
	 * 
	 * @param moveLearnType
	 */
	private void updateMoveList() {
		/*
		ArrayList<Move> moveToDisplay = pokemon.getMovesByType(moveLearnType);
		
		if (moveLearnType.equalsIgnoreCase(Constants.LEARN_TYPE_LEVEL_UP)) {
			moveSubset = Util.sortMovesByLevel(moveSubset);
		}
		
		PokemonDisplayFragment.movesData.clear();
		PokemonDisplayFragment.movesData.addAll(moveSubset);
		PokemonDisplayFragment.movesListAdapter.notifyDataSetChanged();
		*/
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
