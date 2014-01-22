package com.darkdesign.pokemonmachine.fragment;

import java.io.IOException;
import java.util.ArrayList;

import android.app.Fragment;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.fragment.PokemonListFragment.OnPokemonListItemSelectedListener;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class PokemonDisplayFragment extends Fragment {
	public static final String EXTRA_MESSAGE = "EXTRA_MESSAGE";
	private String TAG = PokemonDisplayFragment.class.getName();
	
	private AssetHelper assetHelper;
	private SharedPreferences applicationSettings;
	private View v; 
	private EditText filterText = null;
	
	private static SimplePokemonListAdapter pokemonListAdapter;

	private TextWatcher filterTextWatcher = new TextWatcher() {

	    public void afterTextChanged(Editable s) {
	    }

	    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
	    }

	    public void onTextChanged(CharSequence s, int start, int before, int count) {
	    	if (s.length() > 0) {
	    		PokemonListFragment.pokemonListAdapter.getFilter().filter(s);
	    	}
	    }

	};
	
	public static final PokemonDisplayFragment newInstance(String message)
	{
		PokemonDisplayFragment f = new PokemonDisplayFragment();
		Bundle bdl = new Bundle(1);
		bdl.putString(EXTRA_MESSAGE, message);
		f.setArguments(bdl);
		
		pokemonListAdapter = PokemonListFragment.pokemonListAdapter;
		
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
	   
	   return v;
	 }
	 
	 public void update(Pokemon pokemon) {
	 
		 // Handle Images
		 ImageView i = (ImageView)v.findViewById(R.id.imageView1);
		 ImageView pokemonType1 = (ImageView)v.findViewById(R.id.imgType1);
		 ImageView pokemonType2 = (ImageView)v.findViewById(R.id.imgType2);;
		 
		 try {
			 String id = Util.padLeft(String.valueOf(pokemon.getId()), Constants.POKEMON_ID_LENGTH);
			 Bitmap bm = assetHelper.getBitmapFromAsset("pokemon_images/" + id + ".png");
			 
			 i.setImageBitmap(bm);
			 
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
			 
			 
		 } catch (IOException ioe) {
			 Log.e(getTag(), ioe.toString());
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
	     heightTextView.setText(height);
	     
	     TextView weightTextView = (TextView)v.findViewById(R.id.txtWeight);
	     // Convert to kg
	     String weight = String.valueOf(Double.parseDouble(pokemon.getWeight()) / 10);
	     
	     if (applicationSettings.getBoolean("pref_use_imperial", false)) {
	    	 weight = "CONVERTED";
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
	     genderTextView.setText(pokemon.getGenderRate());
	     
	     TextView catchRateTextView = (TextView)v.findViewById(R.id.txtCatchRate);
	     catchRateTextView.setText(String.valueOf(pokemon.getCatchRate()));
	     
	     TextView eggCyclesTextView = (TextView)v.findViewById(R.id.txtEggCycles);
	     eggCyclesTextView.setText(String.valueOf(pokemon.getEggCycles()));
	     
	     TextView happinessTextView = (TextView)v.findViewById(R.id.txtHappiness);
	     happinessTextView.setText(String.valueOf(pokemon.getHappiness()));
	     
	     TextView growthRateTextView = (TextView)v.findViewById(R.id.txtGrowthRate);
	     growthRateTextView.setText(String.valueOf(pokemon.getGrowthRate()));
	 }
	 
	@Override
	public void onDestroy() {
	    super.onDestroy();
	    filterText.removeTextChangedListener(filterTextWatcher);
	}	 
}

