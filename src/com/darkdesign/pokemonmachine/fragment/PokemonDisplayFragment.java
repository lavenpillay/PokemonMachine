package com.darkdesign.pokemonmachine.fragment;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Typeface;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
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
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.dialog.PopupManager;
import com.darkdesign.pokemonmachine.element.Evolution;
import com.darkdesign.pokemonmachine.element.Item;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;
import com.darkdesign.pokemonmachine.listener.OnPokemonListItemSelectedListener;
import com.tjerkw.slideexpandable.library.SlideExpandableListAdapter;

public class PokemonDisplayFragment extends Fragment implements OnPokemonListItemSelectedListener 
{
	public static final String EXTRA_MESSAGE = "EXTRA_MESSAGE";
	private String TAG = PokemonDisplayFragment.class.getName();
	
	private AssetHelper assetHelper;
	private SharedPreferences applicationSettings;
	private View view; 
	private EditText filterText = null;
	
	public static ArrayList<Move> movesData = new ArrayList<Move>();	
	
	public static SimplePokemonListAdapter pokemonListAdapter;
	public static SimpleMoveListAdapter movesListAdapter;
	
	private int lastViewedPokemonId = -1;
	
	//The "x" and "y" position of the Popup Window
    private Point p;

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
	
	/**
	 * 
	 * @param message
	 * @return
	 */
	public static final PokemonDisplayFragment newInstance(String message)
	{
		PokemonDisplayFragment f = new PokemonDisplayFragment();
		Bundle bdl = new Bundle(1);
		bdl.putString(EXTRA_MESSAGE, message);
		f.setArguments(bdl);
		
	 	return f;
	}
	
	/**
	 * 
	 */
	@Override
	public void setUserVisibleHint(boolean isVisibleToUser) {
	    super.setUserVisibleHint(isVisibleToUser);

	    // Make sure that we are currently visible
	    if (this.isVisible()) {
	        // If we are becoming invisible, then...
	    	Log.d(TAG, "PokemonDisplayFargment is Visible");
	        if (!isVisibleToUser) {
	            Log.d(TAG, "Not visible anymore.  Stopping audio.");
	            // TODO stop audio playback
	        }
	    }
	}

	/**
	 * 
	 */
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		super.onActivityCreated(savedInstanceState);
		    
		Log.d(TAG, "PokemonListFragment.onActivityCreated() - Called");
		
		//adapter.getFilter().filter("Sand");
	}	
	
	 @Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
	   view = inflater.inflate(R.layout.fragment_display_pokemon, container, false);

	   this.assetHelper = new AssetHelper((PokemonMachineActivity)getActivity());
	   
	   applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)getActivity());
	   
	   filterText = (EditText) view.findViewById(R.id.txtFilter);
	   filterText.addTextChangedListener(filterTextWatcher);
	   
	   // Handle Pokemon List
	   String[] names = getResources().getStringArray(R.array.pokemon_names);
	   pokemonListAdapter = new SimplePokemonListAdapter(getActivity(), names);
		
	   ListView listView = (ListView) view.findViewById(R.id.plist);
	   listView.setAdapter(pokemonListAdapter);
	   listView.invalidate();
	   
	   listView.setOnItemClickListener(new OnItemClickListener() {
	        public void onItemClick(AdapterView<?> parent, View view,
	                int position, long id) {

	          Log.i(TAG, "Item Clicked");

	          // TODO re-implment the listener
	          /*
	  		  OnPokemonListItemSelectedListener listener = (OnPokemonListItemSelectedListener) this;
	  		  String name = pokemonListAdapter.getItem(position);
	  		  int pokemonId = Util.arrayIndexOf(pokemonListAdapter.getAllData(), name) + 1;
	  		  listener.onPokemonListItemSelected(Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH));
	  		  */	        
	          
	          String name = pokemonListAdapter.getItem(position);
	  		  int pokemonId = Util.arrayIndexOf(pokemonListAdapter.getAllData(), name) + 1;
	          update(PokemonMachineActivity.cache.getPokemon(pokemonId));
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
	   
	   	// Handle Moves List
	   		// Create Test Data
		Move testMove1 = new Move();
		testMove1.setName("Test Name 1");
		testMove1.setMethod("Test Learn Type 1");
		testMove1.setResourceURI("/etc");
		
		PokemonDisplayFragment.movesData.add(testMove1);
		
		movesListAdapter = new SimpleMoveListAdapter(getActivity(), movesData);
		
		ListView movesListView = (ListView) view.findViewById(R.id.mlist);
		
		movesListView.setAdapter(new SlideExpandableListAdapter(
				movesListAdapter,
                R.id.expandable_toggle_button,
                R.id.expandable
        ));
		
		// Select default pokemon
		update(PokemonMachineActivity.cache.getPokemon(1));

		return view;
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
	 	((PokemonMachineActivity) getActivity()).currentSelectedPokemon = pokemon;
			 
		updateBasicInformation(pokemon);
			 
		// Update Moves list and Notify Adapter
		if (pokemon.getMoves().size() == 0) {
			pokemon.setMoves(PokemonMachineActivity.db.getMovesForPokemon(pokemon));
		
			// Update Cache
			Log.d(TAG, "[MOVES_UPDATED] Updating POKEMON_CACHE with ID = " + pokemon.getId());
			PokemonMachineActivity.cache.addPokemonToCache(pokemon);
		}

		updateMoveList(pokemon, Constants.LEARN_TYPE_LEVEL_UP);
		
		updateEvolutions(pokemon);
		
		updateTypeWeaknessDisplay(pokemon);
	}

	private void updateEvolutions(final Pokemon pokemon) {
		// Update Evolutions
		ArrayList<Evolution> evolutions = new ArrayList<Evolution>();
		
		// Update Cache if required
		if (pokemon.getEvolutions().size() == 0) {
			evolutions = PokemonMachineActivity.db.getEvolutions(pokemon.getId());
			pokemon.setEvolutions(evolutions);
			// Update Cache
			Log.d(TAG, "[EVOLUTIONS_UPDATED] Updating POKEMON_CACHE with ID = " + pokemon.getId());
			PokemonMachineActivity.cache.addPokemonToCache(pokemon);
		}

		LayoutInflater inflater = (LayoutInflater) getActivity().getSystemService( Context.LAYOUT_INFLATER_SERVICE );
		LinearLayout holder = (LinearLayout) view.findViewById(R.id.evolutionsHolder);
		// Remove current displays
		holder.removeAllViews();
		
		buildEvolutionChain(pokemon, assetHelper, inflater, holder);
	}
	 
	/**
	 * 
	 * @param moveLearnType
	 */
	private void updateMoveList(Pokemon pokemon, String moveLearnType) {
		ArrayList<Move> moveSubset = pokemon.getMovesByType(moveLearnType);
		
		if (moveLearnType.equalsIgnoreCase(Constants.LEARN_TYPE_LEVEL_UP)) {
			moveSubset = Util.sortMovesByLevel(moveSubset);
		}
		
		PokemonDisplayFragment.movesData.clear();
		PokemonDisplayFragment.movesData.addAll(moveSubset);
		PokemonDisplayFragment.movesListAdapter.notifyDataSetChanged();
	}

	private void updateBasicInformation(final Pokemon pokemon) {
		// Handle Images
		 ImageView pokemonArtView = (ImageView)view.findViewById(R.id.imageView1);
		 ImageView pokemonType1 = (ImageView)view.findViewById(R.id.imgType1);
		 ImageView pokemonType2 = (ImageView)view.findViewById(R.id.imgType2);
		 
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

		 TextView idTextView = (TextView)view.findViewById(R.id.txtID);
	     idTextView.setText("#" + String.valueOf(pokemon.getId()) + " ");
		 
		 TextView nameTextView = (TextView)view.findViewById(R.id.txtName);
	     nameTextView.setText(pokemon.getName());
	     
	     TextView speciesTextView = (TextView)view.findViewById(R.id.txtSpecies);
	     speciesTextView.setText(Util.toTitleCase(pokemon.getSpecies()) + " Pokemon");

	     TextView heightTextView = (TextView)view.findViewById(R.id.txtHeight);
	     // Convert to meters
	     String height = String.valueOf(Double.parseDouble(pokemon.getHeight()) / 10);
	     
	     if (applicationSettings.getBoolean("pref_use_imperial", false)) {
	    	 height = Util.convertMetersToImperial(Double.parseDouble(height));
	    	 TextView heightUnitTextView = (TextView)view.findViewById(R.id.lblHeightUnit);
	    	 heightUnitTextView.setText("");
	     }
	     heightTextView.setText(height);
	     
	     TextView weightTextView = (TextView)view.findViewById(R.id.txtWeight);
	     // Convert to kg
	     String weight = String.valueOf(Double.parseDouble(pokemon.getWeight()) / 10);
	     
	     if (applicationSettings.getBoolean("pref_use_imperial", false)) {
	    	 weight = Util.convertKilogramsToImperial(Double.parseDouble(pokemon.getWeight()));
	    	 TextView weightUnitTextView = (TextView)view.findViewById(R.id.lblWeightUnit);
	    	 weightUnitTextView.setText(" lb");
	     }
	     weightTextView.setText(weight);
	     
	     TextView hpTextView = (TextView)view.findViewById(R.id.txtHP);
	     hpTextView.setText(String.valueOf(pokemon.getHp()));
	     
	     View hpBarView = (View)view.findViewById(R.id.barHP);
	     hpBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getHp()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));
	     
	     TextView attackTextView = (TextView)view.findViewById(R.id.txtATK);
	     attackTextView.setText(String.valueOf(pokemon.getAttack()));
	     
	     View attackBarView = (View)view.findViewById(R.id.barATK);
	     attackBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getAttack()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));
	     
	     TextView defenseTextView = (TextView)view.findViewById(R.id.txtDEF);
	     defenseTextView.setText(String.valueOf(pokemon.getDefense()));
	     
	     View defenseBarView = (View)view.findViewById(R.id.barDEF);
	     defenseBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getDefense()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));	     
	     
	     TextView spAttackTextView = (TextView)view.findViewById(R.id.txtSPATK);
	     spAttackTextView.setText(String.valueOf(pokemon.getSpAtk()));
	     
	     View spAttackBarView = (View)view.findViewById(R.id.barSPATK);
	     spAttackBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getSpAtk()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));
	     
	     TextView spDefenseTextView = (TextView)view.findViewById(R.id.txtSPDEF);
	     spDefenseTextView.setText(String.valueOf(pokemon.getSpDef()));
	     
	     View spDefenseBarView = (View)view.findViewById(R.id.barSPDEF);
	     spDefenseBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getSpDef()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));
	     
	     TextView speedTextView = (TextView)view.findViewById(R.id.txtSPD);
	     speedTextView.setText(String.valueOf(pokemon.getSpeed()));
	     
	     View speedBarView = (View)view.findViewById(R.id.barSPD);
	     speedBarView.setLayoutParams(new LinearLayout.LayoutParams((int)(Integer.valueOf(pokemon.getSpeed()) * Constants.STAT_BAR_LENGTH_MULTIPLIER), Constants.STAT_BAR_HEIGHT));

	     // EV Yield 
	     TextView evTextView = (TextView)view.findViewById(R.id.txtEVYield);
	     evTextView.setText(String.valueOf(pokemon.getEvYield()));
	     
	     // Breeding Info
	     TextView genderTextView = (TextView)view.findViewById(R.id.txtMaleFemaleRatio);
	     genderTextView.setText(getGenderRatio(pokemon.getGenderRate()));
	     
	     TextView catchRateTextView = (TextView)view.findViewById(R.id.txtCatchRate);
	     catchRateTextView.setText(String.valueOf(pokemon.getCatchRate()));

	     TextView growthRateTextView = (TextView)view.findViewById(R.id.txtGrowthRate);
	     growthRateTextView.setText(String.valueOf(pokemon.getGrowthRate()));	     
	     
	     //TextView eggCyclesTextView = (TextView)v.findViewById(R.id.txtEggCycles);
	     //eggCyclesTextView.setText(String.valueOf(pokemon.getEggCycles()));
	     
	     TextView happinessTextView = (TextView)view.findViewById(R.id.txtHappiness);
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
	
	/**
	 * 
	 */
	public void onPokemonListItemSelected(String id) {
		TextView pokemonNameFilterTextView = (TextView) view.findViewById(R.id.txtFilter);
		Util.hideSoftKeyboard(pokemonNameFilterTextView);
		
		update(PokemonMachineActivity.cache.getPokemon(Integer.valueOf(id)));
	}	
	
	public void updateTypeWeaknessDisplay(Pokemon pokemon) {
		// Update Type Weaknesses
		int[][] matrix = PokemonMachineActivity.cache.getTypeEfficacyMatrix();
		
		HashMap<Integer, Integer> textFieldIdByTypeId = new HashMap<Integer, Integer>();
		textFieldIdByTypeId.put(Constants.TYPE_BUG, R.id.txtDamageBug);
		textFieldIdByTypeId.put(Constants.TYPE_DARK, R.id.txtDamageDark);
		textFieldIdByTypeId.put(Constants.TYPE_DRAGON, R.id.txtDamageDragon);
		textFieldIdByTypeId.put(Constants.TYPE_ELECTRIC, R.id.txtDamageElectric);
		textFieldIdByTypeId.put(Constants.TYPE_FAIRY, R.id.txtDamageFairy);
		textFieldIdByTypeId.put(Constants.TYPE_FIGHTING, R.id.txtDamageFighting);
		textFieldIdByTypeId.put(Constants.TYPE_FIRE, R.id.txtDamageFire);
		textFieldIdByTypeId.put(Constants.TYPE_FLYING, R.id.txtDamageFlying);
		textFieldIdByTypeId.put(Constants.TYPE_GHOST, R.id.txtDamageGhost);
		textFieldIdByTypeId.put(Constants.TYPE_GRASS, R.id.txtDamageGrass);
		textFieldIdByTypeId.put(Constants.TYPE_GROUND, R.id.txtDamageGround);
		textFieldIdByTypeId.put(Constants.TYPE_ICE, R.id.txtDamageIce);
		textFieldIdByTypeId.put(Constants.TYPE_NORMAL, R.id.txtDamageNormal);
		textFieldIdByTypeId.put(Constants.TYPE_POISON, R.id.txtDamagePoison);
		textFieldIdByTypeId.put(Constants.TYPE_PSYCHIC, R.id.txtDamagePsychic);
		textFieldIdByTypeId.put(Constants.TYPE_ROCK, R.id.txtDamageRock);
		textFieldIdByTypeId.put(Constants.TYPE_STEEL, R.id.txtDamageSteel);
		textFieldIdByTypeId.put(Constants.TYPE_WATER, R.id.txtDamageWater);
		
		for (int i=1; i <= Constants.NUMBER_OF_TYPES; i++) {
			TextView textView = (TextView) view.findViewById(textFieldIdByTypeId.get(i));
			// Handle damage against first type
			int type1Id = Integer.parseInt(pokemon.getTypes().get(0).getId());
			int damagePercentageForType1 = matrix[i][type1Id];
			
			// Handle damage against second type if applicable
			int type2Id;
			int damagePercentageForType2 = Constants.TYPE_NULL;
			
			if (pokemon.getTypes().size() == 2) {
				type2Id = Integer.parseInt(pokemon.getTypes().get(1).getId());
				damagePercentageForType2 = matrix[i][type2Id];
			}
			
			// Resolve Efficacy
			String damageText = Util.getAttackEfficacy(damagePercentageForType1, damagePercentageForType2);
			
			// Set text styles for type weaknesses
			if (damageText.equalsIgnoreCase(Constants.DAMAGE__STRING_REGULAR)) {
				textView.setTypeface(null, Typeface.NORMAL);
				textView.setTextColor(Color.GRAY);
			} else if (damageText.equalsIgnoreCase(Constants.DAMAGE_STRING_HALF)) {
				textView.setTypeface(null, Typeface.ITALIC);
				textView.setTextColor(Color.parseColor("#7bce52"));
			} else if (damageText.equalsIgnoreCase(Constants.DAMAGE_STRING_DOUBLE)) {
				textView.setTypeface(null, Typeface.BOLD);
				textView.setTextColor(Color.parseColor("#f08030"));
			} else if (damageText.equalsIgnoreCase(Constants.DAMAGE_STRING_QUARTER)) {
				textView.setTypeface(null, Typeface.NORMAL);
				textView.setTextColor(Color.BLUE);
			} else if (damageText.equalsIgnoreCase(Constants.DAMAGE_STRING_QUADRUPLE)) {
				textView.setTypeface(null, Typeface.BOLD);
				textView.setTextColor(Color.parseColor("#ee0000"));
			} if (damageText.equalsIgnoreCase(Constants.DAMAGE_STRING_IMMUNE)) {
				textView.setTypeface(null, Typeface.ITALIC);
				textView.setTextColor(Color.BLACK);
			} 
			
			/*
			Log.v(TAG, "AttackType=" + cache.getTypeNameById(i) + 
					   " VS DefendingType=" + cache.getTypeNameById(type1Id) + 
					   " = " + damagePercentageForType1 + " AND " + damagePercentageForType2);
			*/
			
			textView.setText(damageText);
		}
	}
	
	/**
	 * 
	 * @param pokemon
	 * @param assetHelper
	 * @param evolutions
	 * @param inflater
	 * @param holder
	 */
	public void buildEvolutionChain(Pokemon pokemon, AssetHelper assetHelper, 
			LayoutInflater inflater, LinearLayout holder) {
		
		LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(
			     LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);

		layoutParams.setMargins(5, 5, 5, 5);		
		
		ArrayList<Evolution> evolutions = pokemon.getEvolutions();
		
		try {
			Evolution evolution = evolutions.get(0);
			
			// State 1
			LinearLayout evolutionStateView = buildEvolutionStateView(evolution.getPokemonId(), assetHelper, inflater);
			holder.addView(evolutionStateView);
			
			if (evolutions.size() > 1) {
				evolution = evolutions.get(1);
				
				// Add Method
				LinearLayout evolutionMethodView = buildEvolutionMethod(inflater, assetHelper, evolution);
				holder.addView(evolutionMethodView, layoutParams);
				
				// State 2
				evolutionStateView = buildEvolutionStateView(evolution.getPokemonId(), assetHelper, inflater);
				holder.addView(evolutionStateView);
			}
			
			if (evolutions.size() > 2) {
				evolution = evolutions.get(2);
				
				// Add Method
				LinearLayout evolutionMethodView = buildEvolutionMethod(inflater, assetHelper, evolution);
				holder.addView(evolutionMethodView, layoutParams);
				
				// State 3
				evolutionStateView = buildEvolutionStateView(evolution.getPokemonId(), assetHelper, inflater);
				holder.addView(evolutionStateView);
			}			
		} catch (IOException ioe) {
			Log.e(TAG, ioe.toString());
		}
	}
	
	/**
	 * 
	 * @param pokemonId
	 * @param assetHelper
	 * @param inflater
	 * @return
	 * @throws IOException
	 */
	private LinearLayout buildEvolutionStateView(String pokemonId, AssetHelper assetHelper, LayoutInflater inflater)
			throws IOException 
	{
		final String id = Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH);
		Bitmap bm = assetHelper.getBitmapFromAsset(Constants.PATH_TO_POKEMON_SPRITES + id + ".png");
		LinearLayout evolutionStateView = (LinearLayout)inflater.inflate( R.layout.evolution_state_image, null );
		
		TextView txtName = (TextView) evolutionStateView.findViewById(R.id.txtPokemonEvolutionName);
		txtName.setText(PokemonMachineActivity.cache.getPokemon(Integer.valueOf(id)).getName());
		
		ImageView evolutionImage = (ImageView) evolutionStateView.findViewById(R.id.imgPokemonEvolution);
		evolutionImage.setImageBitmap(bm);
		
		evolutionImage.setOnClickListener(new OnClickListener() {
		    public void onClick(View v) {
		    	Log.v(TAG, "Evolution Image Clicked - Switching to ID = " + id);
		    	((PokemonMachineActivity) v.getContext()).executeSearch(Integer.valueOf(id));
		    }
		});
		
		return evolutionStateView;
	}		
	
	/**
	 * 
	 * 
	 * TODO Handle more Methods
	 * 
	 * @param inflater
	 * @param evolution
	 * @return
	 */
	private LinearLayout buildEvolutionMethod(LayoutInflater inflater, AssetHelper assetHelper, Evolution evolution) 
			throws IOException	{
		
		LinearLayout evolutionMethodView = null;
		
		if (evolution.getMethod().equalsIgnoreCase(Constants.EVOLUTION_METHOD_LEVEL_UP)) {
			// LEVEL UP WITH MIN HAPPINESS
			if (evolution.getMinimumHappiness() != null) {
				evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_levelup_happiness, null );
				
				TextView happinessMinValue = (TextView) evolutionMethodView.findViewById(R.id.txtHappinessLevel);
				final String happiness = evolution.getMinimumHappiness();
				happinessMinValue.setText(happiness);
				
				evolutionMethodView.setOnClickListener(new OnClickListener() {
				@Override
				public void onClick(View evolutionMethodView) {
						int[] location = new int[2];
						evolutionMethodView.getLocationOnScreen(location);
						 
						p = new Point();
						p.x = location[0];
						p.y = location[1];		
							
				       //Open popup window
				       if (p != null) {
				    	   String heading = "Level Up with Minimum Happiness";
				    	   String content = "This Pokemon will evolve when it levels up with a minimum Happiness of " + happiness;
				    	   PopupManager.showPopup(getActivity(), p, heading, content);
				       }
				     }
				   });				
				
			} else {
				// LEVEL UP NORMALLY
				evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_levelup, null );
				
				final String level = evolution.getLevel();
				
				evolutionMethodView.setOnClickListener(new OnClickListener() {
				     @Override
				     public void onClick(View evolutionMethodView) {
						int[] location = new int[2];
						evolutionMethodView.getLocationOnScreen(location);
						 
						p = new Point();
						p.x = location[0];
						p.y = location[1];				    	 
				    	 
				       //Open popup window
				       if (p != null) {
				    	   String heading = "Level Up";
				    	   String content = "This Pokemon will evolve when it reaches level " + level;
				    	   PopupManager.showPopup(getActivity(), p, heading, content);
				       }
				     }
				   });
			}
			
			if (evolution.getLevel() != null) {
				TextView levelView = (TextView)evolutionMethodView.findViewById(R.id.txtEvolutionLevel);
				levelView.setText(evolution.getLevel());
			}
		} else if (evolution.getMethod().equalsIgnoreCase(Constants.EVOLUTION_METHOD_TRADE)) {
			// EVOLVE WHEN TRADED - 01 - WITH HELD ITEM

			// Check if there's a Held Item
			if (evolution.getHeldItemId() != null && evolution.getHeldItemId().length() > 0) {
				evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_trade_held_item, null );
				
				ImageView useItemView = (ImageView)evolutionMethodView.findViewById(R.id.imgHoldItem);
				final String itemName = PokemonMachineActivity.cache.getDatabaseHelper().getItemById(evolution.getHeldItemId()).getName();
				Bitmap bm = assetHelper.getBitmapFromAsset(Constants.PATH_TO_ITEM_SPRITES + Util.toAllLowerCase(itemName) + ".png");
				useItemView.setImageBitmap(bm);
				
				evolutionMethodView.setOnClickListener(new OnClickListener() {
				     @Override
				     public void onClick(View evolutionMethodView) {
						int[] location = new int[2];
						evolutionMethodView.getLocationOnScreen(location);
						 
						p = new Point();
						p.x = location[0];
						p.y = location[1];				    	 
				    	 
				       //Open popup window
				       if (p != null) {
				    	   String heading = "Trade with Held Item";
				    	   String content = "This Pokemon will evolve when it is traded while holding " + Util.toTitleCase(itemName);
				    	   PopupManager.showPopup(getActivity(), p, heading, content);
				       }
				     }
				   });				
			} else {
				// EVOLVE WHEN TRADED - 01 - WITH HELD ITEM
				evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_trade, null );
				
				evolutionMethodView.setOnClickListener(new OnClickListener() {
				     @Override
				     public void onClick(View evolutionMethodView) {
						int[] location = new int[2];
						evolutionMethodView.getLocationOnScreen(location);
						 
						p = new Point();
						p.x = location[0];
						p.y = location[1];				    	 
				    	 
				       //Open popup window
				       if (p != null) {
				    	   String heading = "Trade";
				    	   String content = "This Pokemon will evolve when it is traded";
				    	   PopupManager.showPopup(getActivity(), p, heading, content);
				       }
				     }
				   });				
			}
		} else if (evolution.getMethod().equalsIgnoreCase(Constants.EVOLUTION_METHOD_USE_ITEM)) {
			// EVOLVE WHEN AN ITEM IS USED ON IT
			evolutionMethodView = (LinearLayout)inflater.inflate(R.layout.evolution_method_use_item, null );
			
			ImageView useItemView = (ImageView)evolutionMethodView.findViewById(R.id.imgUseItem);
			final int itemId = Integer.valueOf(evolution.getTriggerItemId()) - 1;
			final String itemName = PokemonMachineActivity.db.getItems().get(itemId).getName();
			Bitmap bmp = assetHelper.getBitmapFromAsset(Constants.PATH_TO_ITEM_SPRITES + Util.toAllLowerCase(itemName) + ".png");
			bmp = Bitmap.createScaledBitmap(bmp, bmp.getWidth()*Constants.EVOLUTION_ITEM_IMAGE_SCALE_MULTIPLIER, bmp.getHeight()*Constants.EVOLUTION_ITEM_IMAGE_SCALE_MULTIPLIER, false);
			useItemView.setImageBitmap(bmp);
			
			evolutionMethodView.setOnClickListener(new OnClickListener() {
		     @Override
		     public void onClick(View evolutionMethodView) {
				int[] location = new int[2];
				evolutionMethodView.getLocationOnScreen(location);
				 
				p = new Point();
				p.x = location[0];
				p.y = location[1];				    	 
		    	 
		       //Open popup window
		       if (p != null) {
		    	   String heading = "Use Item";
		    	   String content = "This Pokemon will evolve when a " + itemName + " is used on it.";
		    	   PopupManager.showPopup(getActivity(), p, heading, content);
		       }
		     }
		   });
			
			evolutionMethodView.setOnLongClickListener(new OnLongClickListener() {
				
				@Override
				public boolean onLongClick(View v) {
					
					Log.d(TAG, "LongClick");
					
					Item evolutionItem = PokemonMachineActivity.cache.getItemList().get(itemId);
					
					if (evolutionItem.getCategory().getIdentifier().equalsIgnoreCase(Constants.ITEM_CATEGORY_EVOLUTION)) {
						PokemonMachineActivity.itemDisplayFragment.update(evolutionItem);
						((PokemonMachineActivity)getActivity()).getViewPager().setCurrentItem(PokemonMachineActivity.FRAGMENT_POSITION_ITEMS);
					}
					
					return true;
				}
			});
		} 
		
		return evolutionMethodView;
	}
	
	
	
}
