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
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TableRow.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.EggGroupSpinnerAdapter;
import com.darkdesign.pokemonmachine.adapter.PokemonMoveListAdapter;
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
import com.jjoe64.graphview.BarGraphView;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.GraphView.GraphViewData;
import com.jjoe64.graphview.GraphViewSeries;
import com.jjoe64.graphview.GraphViewStyle.GridStyle;
import com.tjerkw.slideexpandable.library.SlideExpandableListAdapter;

public class PokemonDisplayFragment extends Fragment implements OnPokemonListItemSelectedListener 
{
	public static final String EXTRA_MESSAGE = "EXTRA_MESSAGE";
	private String TAG = PokemonDisplayFragment.class.getName();
	private static final int ENTER_KEY_PRESSED = 66;
	
	private AssetHelper assetHelper;
	private SharedPreferences applicationSettings;
	private View view; 
	private EditText filterText = null;
	
	public static ArrayList<Move> movesData = new ArrayList<Move>();	
	
	public static SimplePokemonListAdapter pokemonListAdapter;
	public static PokemonMoveListAdapter movesListAdapter;
	
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
	            Log.d(TAG, "Not visible anymore.");
	        }
	    }
	}

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
	public void onAttach(Activity activity) {
		super.onAttach(activity);
		
		
	}
	

	 @Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		 Log.i(TAG, "onCreate() - Called");
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
      
				 String name = pokemonListAdapter.getItem(position);
				 int pokemonId = Util.arrayIndexOf(pokemonListAdapter.getAllData(), name) + 1;
				 update(PokemonMachineActivity.cache.getPokemon(pokemonId));
			 }
		 });
	   
	   // Clear button listener for POKEMON field
	   ImageButton btnClearNameFilter = (ImageButton)view.findViewById(R.id.btnClearNameFilter);
	   btnClearNameFilter.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				EditText edtName = (EditText)view.findViewById(R.id.txtFilter);
				edtName.setText("");
			}
		});
	   
	   // Clear button listener for SEARCH field
	   ImageButton btnClearId = (ImageButton)view.findViewById(R.id.btnClearID);
	   btnClearId.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				EditText edtId = (EditText)view.findViewById(R.id.txtSearch);
				edtId.setText("");
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
		
		movesListAdapter = new PokemonMoveListAdapter(getActivity(), movesData);
		
		ListView movesListView = (ListView) view.findViewById(R.id.mlist);
		
		movesListView.setAdapter(new SlideExpandableListAdapter(
				movesListAdapter,
                R.id.expandable_toggle_button,
                R.id.expandable
        ));
		
		// Search-By-ID Listener
        EditText searchValueTextbox = (EditText) view.findViewById(R.id.txtSearch);
        searchValueTextbox.setImeActionLabel("Search", KeyEvent.KEYCODE_ENTER);
        searchValueTextbox.setImeOptions(EditorInfo.IME_ACTION_SEND);
        
        searchValueTextbox.setOnEditorActionListener(new OnEditorActionListener() {
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (actionId == ENTER_KEY_PRESSED) {
                	
                	Util.hideSoftKeyboard(v);
                	clearFilterText();
                	
                	// Execute Search
                	searchFromSearchBox();
                	
                    return true;
                }
                return false;
            }
        });
		
		
		// Select default pokemon
		update(PokemonMachineActivity.cache.getPokemon(1));
		
		return view;
	 }
	 
	/**
	 * 
	 * @param view
	 */
	public void onClearNameFilterClick(View view) {
		clearFilterText();
	}
	
	public void clearFilterText() {
		EditText filterText = (EditText) view.findViewById(R.id.txtFilter);
		filterText.setText("");
	}
	
	/**
	 * 
	 */
	public void searchFromSearchBox() {
		EditText searchValueTextbox = (EditText) view.findViewById(R.id.txtSearch);
		
		String searchValue = searchValueTextbox.getText().toString();
		
		if (searchValue != null && !searchValue.equals("") && Util.stringIsInteger(searchValue)) {
			
			int id = Integer.valueOf(searchValue);
			update(PokemonMachineActivity.cache.getPokemon(id));
		}
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
		
		TextView pokemonNameFilterTextView = (TextView) view.findViewById(R.id.txtFilter);
		Util.hideSoftKeyboard(pokemonNameFilterTextView);
	}

	private void updateEvolutions(final Pokemon pokemon) {
		// Update Evolutions
		ArrayList<Evolution> evolutions = new ArrayList<Evolution>();
		
		/*
		// Update Cache if required
		if (pokemon.getEvolutions().size() == 0) {
			evolutions = PokemonMachineActivity.db.getEvolutions(pokemon.getId());
			pokemon.setEvolutions(evolutions);
			// TODO Add pokemon.getMEgaevolution from db here
			// Update Cache
			Log.d(TAG, "[EVOLUTIONS_UPDATED] Updating POKEMON_CACHE with ID = " + pokemon.getId());
			PokemonMachineActivity.cache.addPokemonToCache(pokemon);
		}
		*/

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
		 ImageView pokemonArtView = (ImageView)view.findViewById(R.id.imgPokemonArt);
		 ImageView pokemonType1 = (ImageView)view.findViewById(R.id.imgType1);
		 ImageView pokemonType2 = (ImageView)view.findViewById(R.id.imgType2);
		 
		 pokemonArtView.setClickable(true);
		 pokemonArtView.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				PopupManager.showPokemondetailPopup((Activity) v.getContext(), pokemon.getId());
			}
		});

		 String id = Util.padLeft(String.valueOf(pokemon.getId()), Constants.POKEMON_ID_LENGTH);
		 Bitmap bm = assetHelper.getBitmapFromAsset("pokemon_images/" + id + ".png");
		 
		 pokemonArtView.setImageBitmap(bm);
		 
		 ArrayList<Type> pokemonTypes = pokemon.getTypes();
		 
		 Bitmap type1 = assetHelper.getBitmapFromAsset("type_images_large/" + pokemonTypes.get(0).getName() + ".png");
		 pokemonType1.setImageBitmap(type1);
		 
		 if (pokemonTypes.size() > 1) {
			 Bitmap type2 = assetHelper.getBitmapFromAsset("type_images_large/" + pokemonTypes.get(1).getName() + ".png");
			 pokemonType2.setImageBitmap(type2);
		 } else {
			 // Remove 2nd Type icon
			 pokemonType2.setImageResource(android.R.color.transparent);
		 }
		 
		 TextView nameTextView = (TextView)view.findViewById(R.id.txtName);
	     nameTextView.setText("#" + String.valueOf(pokemon.getId()) + " " + pokemon.getName());
	     
	     TextView speciesTextView = (TextView)view.findViewById(R.id.txtSpecies);
	     speciesTextView.setText(Util.toTitleCase(pokemon.getSpecies()) + " Pokemon");

	     TextView heightTextView = (TextView)view.findViewById(R.id.txtHeight);
	     TextView heightUnitTextView = (TextView)view.findViewById(R.id.lblHeightUnit);
	     TextView weightTextView = (TextView)view.findViewById(R.id.txtWeight);
	     TextView weightUnitTextView = (TextView)view.findViewById(R.id.lblWeightUnit);
	     
	     // Convert to meters
	     String height = String.valueOf(Double.parseDouble(pokemon.getHeight()) / 10);
	     
	     if (applicationSettings.getBoolean("pref_use_imperial", false)) {
	    	 height = Util.convertMetersToImperial(Double.parseDouble(height));
	    	 heightUnitTextView.setText("");
	     } else {
	    	 heightUnitTextView.setText(" m");
	     }
	     heightTextView.setText(height);
	     

	     // Convert to kg
	     String weight = String.valueOf(Double.parseDouble(pokemon.getWeight()) / 10);
	     

	     if (applicationSettings.getBoolean("pref_use_imperial", false)) {
	    	 weight = Util.convertKilogramsToImperial(Double.parseDouble(pokemon.getWeight()));
	    	 weightUnitTextView.setText(" lb");
	     } else {
	    	 weightUnitTextView.setText(" kg");
	     }
	     
	     weightTextView.setText(weight);
	     
		// Add Base Stats Graph
		// init example series data
		GraphViewSeries exampleSeries = new GraphViewSeries(new GraphViewData[] {
		    new GraphViewData(1, pokemon.getHp())
		    , new GraphViewData(2, pokemon.getAttack())
		    , new GraphViewData(3, pokemon.getDefense())
		    , new GraphViewData(4, pokemon.getSpAtk())
		    , new GraphViewData(5, pokemon.getSpDef())
		    , new GraphViewData(6, pokemon.getSpeed())
		});
		 
		GraphView graphView = new BarGraphView (((PokemonMachineActivity) getActivity()), "");
		graphView.setManualYAxisBounds(255, 0);
		graphView.addSeries(exampleSeries); // data
		graphView.setHorizontalLabels(new String[] {"HP", "ATK", "DEF", "SP.ATK", "SP.DEF", "SPD"});
		//graphView.setVerticalLabels(new String[] {"255", "200", "150", "100", "50", "0"});
		graphView.getGraphViewStyle().setNumVerticalLabels(6);
		
		graphView.getGraphViewStyle().setGridColor(Color.LTGRAY);
		graphView.getGraphViewStyle().setGridStyle(GridStyle.HORIZONTAL);
		graphView.getGraphViewStyle().setTextSize(12);
		 
		LinearLayout layout = (LinearLayout) view.findViewById(R.id.baseStatsGraphArea);
		//layout.removeAllViews();
		if (layout.getChildCount() > 1) {
			layout.removeViewAt(1);
		}
		layout.addView(graphView);
	     
	     
		 LayoutParams labelParams = new LayoutParams(185, LinearLayout.LayoutParams.WRAP_CONTENT);
		 labelParams.leftMargin = 20;
			
	     LinearLayout layoutGender = (LinearLayout) view.findViewById(R.id.ceGender);
	     TextView txtGenderHeading = (TextView) layoutGender.findViewById(R.id.heading);
	     txtGenderHeading.setLayoutParams(labelParams);
	     txtGenderHeading.setText("Gender");
	     TextView txtGenderContent = (TextView) layoutGender.findViewById(R.id.content);
	     txtGenderContent.setText(getGenderRatio(pokemon.getGenderRate()));
	     	     
	     LinearLayout layoutCatchRate = (LinearLayout) view.findViewById(R.id.ceCatchRate);
	     TextView txtCatchRateHeading = (TextView) layoutCatchRate.findViewById(R.id.heading);
	     txtCatchRateHeading.setLayoutParams(labelParams);
	     txtCatchRateHeading.setText("Catch Rate");
	     TextView txtCatchRateContent = (TextView) layoutCatchRate.findViewById(R.id.content);
	     txtCatchRateContent.setText(String.valueOf(getCatchRate(pokemon.getCatchRate())));
	     
	     //LinearLayout layoutEggGroup = (LinearLayout) view.findViewById(R.id.ceEggGroups);
	     //TextView txtEggGroupHeading = (TextView) layoutEggGroup.findViewById(R.id.heading);
	     //txtEggGroupHeading.setLayoutParams(labelParams);
	     //txtEggGroupHeading.setText("Egg Groups");
	     //TextView txtEggGroupContent = (TextView) layoutEggGroup.findViewById(R.id.content);
	     //txtEggGroupContent.setText("--List--");
	     //txtEggGroupContent.setText("");
	     
	     Spinner spinner = (Spinner) view.findViewById(R.id.spinEggGroups);
		 // Create an ArrayAdapter using the string array and a default spinner layout
	     EggGroupSpinnerAdapter adapter = new EggGroupSpinnerAdapter(getActivity(), R.layout.simple_spinner_item, pokemon.getEggGroups());
		 // Specify the layout to use when the list of choices appears
		// adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		 // Apply the adapter to the spinner
		 spinner.setAdapter(adapter);
	     
	     LinearLayout layoutGrowthRate = (LinearLayout) view.findViewById(R.id.ceGrowthRate);
	     TextView txtGrowthRateHeading = (TextView) layoutGrowthRate.findViewById(R.id.heading);
	     txtGrowthRateHeading.setLayoutParams(labelParams);
	     txtGrowthRateHeading.setText("Growth Rate");
	     TextView txtGrowthRateContent = (TextView) layoutGrowthRate.findViewById(R.id.content);
	     txtGrowthRateContent.setText(String.valueOf(pokemon.getGrowthRate()));
	     
	     LinearLayout layoutEVYield = (LinearLayout) view.findViewById(R.id.ceEVYield);
	     TextView txtEVYieldHeading = (TextView) layoutEVYield.findViewById(R.id.heading);
	     txtEVYieldHeading.setLayoutParams(labelParams);
	     txtEVYieldHeading.setText("EV Yield");
	     TextView txtEVYieldContent = (TextView) layoutEVYield.findViewById(R.id.content);
	     txtEVYieldContent.setText(String.valueOf(pokemon.getEvYield()));
	     
	     LinearLayout layoutHappiness = (LinearLayout) view.findViewById(R.id.ceHappiness);
	     TextView txtHappinessHeading = (TextView) layoutHappiness.findViewById(R.id.heading);
	     txtHappinessHeading.setLayoutParams(labelParams);
	     txtHappinessHeading.setText("Happiness");
	     TextView txtHappinessContent = (TextView) layoutHappiness.findViewById(R.id.content);
	     txtHappinessContent.setText(pokemon.getHappiness());
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
		 double rate = (Double.valueOf(catchRate) / 255) * 100;
		 
		 return String.format("%.0f", rate) + "%";
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
			LinearLayout evolutionStateView = buildEvolutionStateView(evolution.getPokemonId(), assetHelper, inflater, false);
			holder.addView(evolutionStateView);
			
			if (evolutions.size() > 1) {
				evolution = evolutions.get(1);
				
				// Add Method
				LinearLayout evolutionMethodView = buildEvolutionMethod(inflater, assetHelper, evolution, false);
				holder.addView(evolutionMethodView, layoutParams);
				
				// State 2
				evolutionStateView = buildEvolutionStateView(evolution.getPokemonId(), assetHelper, inflater, false);
				holder.addView(evolutionStateView);
			}
			
			if (evolutions.size() > 2) {
				evolution = evolutions.get(2);
				
				// Add Method
				LinearLayout evolutionMethodView = buildEvolutionMethod(inflater, assetHelper, evolution, false);
				holder.addView(evolutionMethodView, layoutParams);
				
				// State 3
				evolutionStateView = buildEvolutionStateView(evolution.getPokemonId(), assetHelper, inflater, false);
				holder.addView(evolutionStateView);
			}
			
			if (pokemon.getMegaEvolution() != null) {
				evolution = pokemon.getMegaEvolution();
				
				// Add Method
				LinearLayout evolutionMethodView = buildEvolutionMethod(inflater, assetHelper, evolution, true);
				holder.addView(evolutionMethodView, layoutParams);
				
				// State Mega
				evolutionStateView = buildEvolutionStateView(evolution.getPreviousEvolutionId(), assetHelper, inflater, true);
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
	private LinearLayout buildEvolutionStateView(String pokemonId, AssetHelper assetHelper, LayoutInflater inflater, boolean isMegaEvolution)
			throws IOException 
	{
		final String id = Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH);
		Bitmap bmp;
		
		LinearLayout evolutionStateView = (LinearLayout)inflater.inflate( R.layout.evolution_state_image, null );
		
		String pokemonEvolutionName = "";
		TextView txtName = (TextView) evolutionStateView.findViewById(R.id.txtPokemonEvolutionName);
		Pokemon pokemon = PokemonMachineActivity.cache.getPokemon(Integer.valueOf(id));
		if (isMegaEvolution)  {
			bmp = assetHelper.getBitmapFromAsset(Constants.PATH_TO_POKEMON_SPRITES + pokemon.getMegaEvolution().getPokemonId() + ".png");
			pokemonEvolutionName = pokemon.getMegaEvolution().getIdentifier();
		} else {
			bmp = assetHelper.getBitmapFromAsset(Constants.PATH_TO_POKEMON_SPRITES + id + ".png");
			pokemonEvolutionName = pokemon.getName();
		}
		txtName.setText(pokemonEvolutionName);
		
		ImageView evolutionImage = (ImageView) evolutionStateView.findViewById(R.id.imgPokemonEvolution);
		bmp = Bitmap.createScaledBitmap(bmp, bmp.getWidth()*Constants.POKEMON_EVOLUTION_IMAGE_SCALE_MULTIPLIER, bmp.getHeight()*Constants.POKEMON_EVOLUTION_IMAGE_SCALE_MULTIPLIER, false);
		evolutionImage.setImageBitmap(bmp);
		
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
	private LinearLayout buildEvolutionMethod(LayoutInflater inflater, AssetHelper assetHelper, Evolution evolution, final boolean isMegaEvolution) 
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
				    	   PopupManager.showPopup(getActivity(), p, heading, content, 400, 250);
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
				    	   PopupManager.showPopup(getActivity(), p, heading, content, 400, 250);
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
				final String itemName = PokemonMachineActivity.cache.getItemById(Integer.valueOf(evolution.getHeldItemId())).getName();
				Bitmap bmp = assetHelper.getBitmapFromAsset(Constants.PATH_TO_ITEM_SPRITES + itemName.toLowerCase() + ".png");
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
				    	   String heading;
				    	   String content;
				    	   heading = "Trade with Held Item";
					       content = "This Pokemon will evolve when it is traded while holding " + Util.toTitleCase(itemName);
				    	   
				    	   PopupManager.showPopup(getActivity(), p, heading, content, 400, 250);
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
				    	   PopupManager.showPopup(getActivity(), p, heading, content, 400, 200);
				       }
				     }
				   });				
			}
		} else if (evolution.getMethod().equalsIgnoreCase(Constants.EVOLUTION_METHOD_USE_ITEM)  || isMegaEvolution) {
			// EVOLVE WHEN AN ITEM IS USED ON IT
			evolutionMethodView = (LinearLayout)inflater.inflate(R.layout.evolution_method_use_item, null );
			
			ImageView useItemView = (ImageView)evolutionMethodView.findViewById(R.id.imgUseItem);
			final int itemId = Integer.valueOf(evolution.getTriggerItemId());
			final String itemName = PokemonMachineActivity.cache.getItemById(itemId).getName();
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
		    	   String heading;
		    	   String content;
		    	   if (isMegaEvolution) {
			    	   heading = "MegaEvolution Stone";
			    	   content = "This Pokemon can Mega Evolve in battle if holding " + Util.toTitleCase(itemName);
		    	   } else {
		    		   heading = "Use Item";
			    	   content = "This Pokemon will evolve when a " + itemName + " is used on it.";
		    	   }
		    	   
		    	   PopupManager.showPopup(getActivity(), p, heading, content, 400, 250);
		       }
		     }
		   });
			
			evolutionMethodView.setOnLongClickListener(new OnLongClickListener() {
				
				@Override
				public boolean onLongClick(View v) {
					
					Log.d(TAG, "LongClick");
					
					Item evolutionItem = PokemonMachineActivity.cache.getItemById(itemId);
					
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
