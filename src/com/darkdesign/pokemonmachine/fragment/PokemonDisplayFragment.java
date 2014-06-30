package com.darkdesign.pokemonmachine.fragment;

import java.util.ArrayList;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimpleMoveListAdapter;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.dialog.PokemonDetailedViewPopup;
import com.darkdesign.pokemonmachine.dialog.PopupManager;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;
import com.tjerkw.slideexpandable.library.SlideExpandableListAdapter;

public class PokemonDisplayFragment extends Fragment {
	public static final String EXTRA_MESSAGE = "EXTRA_MESSAGE";
	private String TAG = PokemonDisplayFragment.class.getName();
	
	private AssetHelper assetHelper;
	private SharedPreferences applicationSettings;
	private View v; 
	private EditText filterText = null;
	
	public static ArrayList<Move> movesData = new ArrayList<Move>();	
	
	public static SimplePokemonListAdapter pokemonListAdapter;
	public static SimpleMoveListAdapter movesListAdapter;
	
	private int lastViewedPokemonId = -1;

	private TextWatcher filterTextWatcher = new TextWatcher() {

	    public void afterTextChanged(Editable s) {
	    }

	    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
	    }

	    public void onTextChanged(CharSequence s, int start, int before, int count) {
	    	if (s.length() > 0) {
	    		pokemonListAdapter.getFilter().filter(s);
	    	} else if (s.length() == 0) {
	    		pokemonListAdapter.getFilter().filter("");
	    	}
	    }

	};
	
	public static final PokemonDisplayFragment newInstance(String message)
	{
		PokemonDisplayFragment f = new PokemonDisplayFragment();
		Bundle bdl = new Bundle(1);
		bdl.putString(EXTRA_MESSAGE, message);
		f.setArguments(bdl);
		
	 	return f;
	}

	 

	@Override
	  public void onActivityCreated(Bundle savedInstanceState) {
	    super.onActivityCreated(savedInstanceState);
	    
	    Log.d(TAG, "PokemonListFragment.onActivityCreated() - Called");
	    
	    //adapter.getFilter().filter("Sand");

	  }	
	
	 @Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
	   v = inflater.inflate(R.layout.fragment_display_pokemon, container, false);

	   this.assetHelper = new AssetHelper((PokemonMachineActivity)getActivity());
	   
	   applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)getActivity());
	   
	   filterText = (EditText) v.findViewById(R.id.txtFilter);
	   filterText.addTextChangedListener(filterTextWatcher);
	   
	   // Handle Pokemon List
	   String[] names = getResources().getStringArray(R.array.pokemon_names);
	   pokemonListAdapter = new SimplePokemonListAdapter(getActivity(), names);
		
	   ListView listView = (ListView) v.findViewById(R.id.plist);
	   listView.setAdapter(pokemonListAdapter);
	   listView.invalidate();
	   
	   listView.setOnItemClickListener(new OnItemClickListener() {
	        public void onItemClick(AdapterView<?> parent, View view,
	                int position, long id) {

	          Log.i("PokemonListFragment", "Item Clicked");
	  		  
	  		  OnPokemonListItemSelectedListener listener = (OnPokemonListItemSelectedListener) getActivity();
	  		  String name = pokemonListAdapter.getItem(position);
	  		  int pokemonId = Util.arrayIndexOf(pokemonListAdapter.getAllData(), name) + 1;
	  		  listener.onPokemonListItemSelected(Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH));	        	
	       }
	    });
	   
	   listView.setFastScrollEnabled(Config.FAST_SCROLL);
	   listView.setFastScrollAlwaysVisible(Config.FAST_SCROLL_VISIBILITY);
	   listView.setScrollBarStyle(View.SCROLLBARS_OUTSIDE_INSET);
	   
	   	// Handle Moves List
	   		// Create Test Data
		Move testMove1 = new Move();
		testMove1.setName("Test Name 1");
		testMove1.setMethod("Test Learn Type 1");
		testMove1.setResourceURI("/etc");
		
		PokemonDisplayFragment.movesData.add(testMove1);
		
		movesListAdapter = new SimpleMoveListAdapter(getActivity(), movesData);
		
		ListView movesListView = (ListView) v.findViewById(R.id.mlist);
		
		movesListView.setAdapter(new SlideExpandableListAdapter(
				movesListAdapter,
                R.id.expandable_toggle_button,
                R.id.expandable
        ));
        
		//movesListView.setAdapter(movesListAdapter);
	   
	   return v;
	 }
	 
	 @Override
	 public void onPause() {
		 super.onPause();
		 if (((PokemonMachineActivity) getActivity()) != null) {
			 lastViewedPokemonId = ((PokemonMachineActivity) getActivity()).currentSelectedPokemon.getId();
		 }
	 }
	 
	 @Override
	 public void onResume() {
		 super.onResume();
		 if (lastViewedPokemonId != -1) {
			 ((PokemonMachineActivity) getActivity()).executeSearch(lastViewedPokemonId);
		 }
	 }
	 
	 public void update(final Pokemon pokemon) {
	 
		 // Handle Images
		 ImageView pokemonArtView = (ImageView)v.findViewById(R.id.imageView1);
		 ImageView pokemonType1 = (ImageView)v.findViewById(R.id.imgType1);
		 ImageView pokemonType2 = (ImageView)v.findViewById(R.id.imgType2);
		 
		 pokemonArtView.setClickable(true);
		 pokemonArtView.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Log.v("ART", "Clicked Pokemon Image !");
				PopupManager.showPokemondetailPopup((Activity) v.getContext(), pokemon.getId());
			}
		});

		 String id = Util.padLeft(String.valueOf(pokemon.getId()), Constants.POKEMON_ID_LENGTH);
		 Bitmap bm = assetHelper.getBitmapFromAsset("pokemon_images/" + id + ".png");
		 
		 pokemonArtView.setImageBitmap(bm);
		 
		 ArrayList<Type> pokemonTypes = pokemon.getTypes();
		 
		 Bitmap type1 = assetHelper.getBitmapFromAsset("type_images_medium/" + pokemonTypes.get(0).getName() + ".png");
		 pokemonType1.setImageBitmap(type1);
		 
		 if (pokemonTypes.size() > 1) {
			 Bitmap type2 = assetHelper.getBitmapFromAsset("type_images_medium/" + pokemonTypes.get(1).getName() + ".png");
			 pokemonType2.setImageBitmap(type2);
		 } else {
			 // Remove 2nd Type icon
			 pokemonType2.setImageResource(android.R.color.transparent);
		 }

		 TextView idTextView = (TextView)v.findViewById(R.id.txtID);
	     idTextView.setText("#" + String.valueOf(pokemon.getId()) + " ");
		 
		 TextView nameTextView = (TextView)v.findViewById(R.id.txtName);
	     nameTextView.setText(pokemon.getName());
	     
	     TextView speciesTextView = (TextView)v.findViewById(R.id.txtSpecies);
	     speciesTextView.setText(Util.toTitleCase(pokemon.getSpecies()) + " Pokemon");

	     TextView heightTextView = (TextView)v.findViewById(R.id.txtHeight);
	     // Convert to meters
	     String height = String.valueOf(Double.parseDouble(pokemon.getHeight()) / 10);
	     
	     if (applicationSettings.getBoolean("pref_use_imperial", false)) {
	    	 height = Util.convertMetersToImperial(Double.parseDouble(height));
	    	 TextView heightUnitTextView = (TextView)v.findViewById(R.id.lblHeightUnit);
	    	 heightUnitTextView.setText("");
	     }
	     heightTextView.setText(height);
	     
	     TextView weightTextView = (TextView)v.findViewById(R.id.txtWeight);
	     // Convert to kg
	     String weight = String.valueOf(Double.parseDouble(pokemon.getWeight()) / 10);
	     
	     if (applicationSettings.getBoolean("pref_use_imperial", false)) {
	    	 weight = Util.convertKilogramsToImperial(Double.parseDouble(pokemon.getWeight()));
	    	 TextView weightUnitTextView = (TextView)v.findViewById(R.id.lblWeightUnit);
	    	 weightUnitTextView.setText(" lb");
	     }
	     weightTextView.setText(weight);
	     
	     TextView hpTextView = (TextView)v.findViewById(R.id.txtHP);
	     hpTextView.setText(String.valueOf(pokemon.getHp()));
	     
	     View hpBarView = (View)v.findViewById(R.id.barHP);
	     hpBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getHp()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));
	     
	     TextView attackTextView = (TextView)v.findViewById(R.id.txtATK);
	     attackTextView.setText(String.valueOf(pokemon.getAttack()));
	     
	     View attackBarView = (View)v.findViewById(R.id.barATK);
	     attackBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getAttack()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));
	     
	     TextView defenseTextView = (TextView)v.findViewById(R.id.txtDEF);
	     defenseTextView.setText(String.valueOf(pokemon.getDefense()));
	     
	     View defenseBarView = (View)v.findViewById(R.id.barDEF);
	     defenseBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getDefense()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));	     
	     
	     TextView spAttackTextView = (TextView)v.findViewById(R.id.txtSPATK);
	     spAttackTextView.setText(String.valueOf(pokemon.getSpAtk()));
	     
	     View spAttackBarView = (View)v.findViewById(R.id.barSPATK);
	     spAttackBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getSpAtk()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));
	     
	     TextView spDefenseTextView = (TextView)v.findViewById(R.id.txtSPDEF);
	     spDefenseTextView.setText(String.valueOf(pokemon.getSpDef()));
	     
	     View spDefenseBarView = (View)v.findViewById(R.id.barSPDEF);
	     spDefenseBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getSpDef()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));
	     
	     TextView speedTextView = (TextView)v.findViewById(R.id.txtSPD);
	     speedTextView.setText(String.valueOf(pokemon.getSpeed()));
	     
	     View speedBarView = (View)v.findViewById(R.id.barSPD);
	     speedBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getSpeed()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));

	     // EV Yield 
	     TextView evTextView = (TextView)v.findViewById(R.id.txtEVYield);
	     evTextView.setText(String.valueOf(pokemon.getEvYield()));
	     
	     // Breeding Info
	     TextView genderTextView = (TextView)v.findViewById(R.id.txtMaleFemaleRatio);
	     genderTextView.setText(getGenderRatio(pokemon.getGenderRate()));
	     
	     TextView catchRateTextView = (TextView)v.findViewById(R.id.txtCatchRate);
	     catchRateTextView.setText(String.valueOf(pokemon.getCatchRate()));

	     TextView growthRateTextView = (TextView)v.findViewById(R.id.txtGrowthRate);
	     growthRateTextView.setText(String.valueOf(pokemon.getGrowthRate()));	     
	     
	     //TextView eggCyclesTextView = (TextView)v.findViewById(R.id.txtEggCycles);
	     //eggCyclesTextView.setText(String.valueOf(pokemon.getEggCycles()));
	     
	     TextView happinessTextView = (TextView)v.findViewById(R.id.txtHappiness);
	     happinessTextView.setText(String.valueOf(pokemon.getHappiness()));
	 }
	 
	 private String getGenderRatio(String genderRatio) {
		 String returnString = "";
		 
		 if (genderRatio.equalsIgnoreCase("-1")) {
			 returnString = Constants.GENDER_RATE_STRING_GENDERLESS;
		 } else if (genderRatio.equalsIgnoreCase("0")) {
			 returnString = Constants.GENDER_RATE_STRING_0;
		 } else if (genderRatio.equalsIgnoreCase("1")) {
			 returnString = Constants.GENDER_RATE_STRING_1;
		 } else if (genderRatio.equalsIgnoreCase("2")) {
			 returnString = Constants.GENDER_RATE_STRING_2;
		 } else if (genderRatio.equalsIgnoreCase("4")) {
			 returnString = Constants.GENDER_RATE_STRING_4;
		 } else if (genderRatio.equalsIgnoreCase("6")) {
			 returnString = Constants.GENDER_RATE_STRING_6;
		 } else if (genderRatio.equalsIgnoreCase("8")) {
			 returnString = Constants.GENDER_RATE_STRING_8;
		 }
		 
		 return returnString;
	 }
	 
	 private String getCatchRate(String catchRate) {
		 int rate = (Integer.parseInt(catchRate) / 255) * 100;
		 
		 return String.valueOf(rate) + "%";
	 }
	 
	@Override
	public void onDestroy() {
	    super.onDestroy();
	    filterText.removeTextChangedListener(filterTextWatcher);
	}
	
	
	//Container Activity must implement this interface
	public interface OnPokemonListItemSelectedListener {
	    public void onPokemonListItemSelected(String id);
	}	
}
