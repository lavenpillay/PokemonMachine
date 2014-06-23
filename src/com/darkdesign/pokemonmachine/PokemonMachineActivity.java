package com.darkdesign.pokemonmachine;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.ActionBarDrawerToggle;
import android.support.v4.widget.DrawerLayout;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

import com.darkdesign.pokemonmachine.cache.Cache;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Evolution;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.fragment.BerryDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.CollectionDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment.OnPokemonUpdatedListener;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment.OnPokemonListItemSelectedListener;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.URIConstructor;
import com.darkdesign.pokemonmachine.helper.Util;
import com.darkdesign.pokemonmachine.preferences.SettingsFragment;
import com.darkdesign.pokemonmachine.service.RESTService;


public class PokemonMachineActivity extends Activity implements OnPokemonUpdatedListener, OnPokemonListItemSelectedListener 
{
	private static final int ENTER_KEY_PRESSED = 66;
	private static String TAG = PokemonMachineActivity.class.getName();
	private static String TAG_FRAGMENT_POKEMON_DISPLAY = "PokemonDisplayFragment";
	private static String TAG_FRAGMENT_MOVES_DISPLAY = "MovesDisplayFragment";
	
	private String[] mMainMenuItems;
    private DrawerLayout mDrawerLayout;
    private ListView mDrawerList;
    private ActionBarDrawerToggle mDrawerToggle;
    private CharSequence mTitle;
    private CharSequence mDrawerTitle;
    
    // Menu Item Names Defined in strings.xml 
    private final static int TOP_MENU_ITEM_POKEMON = 0;
    private final static int TOP_MENU_ITEM_MOVES = 1;
    private final static int TOP_MENU_ITEM_BERRIES = 2;
    private final static int TOP_MENU_ITEM_COLLECTION = 3;
    
    private PokemonDisplayFragment pokemonDisplayFragment = null;
    private BerryDisplayFragment berryDisplayFragment = null;
    private CollectionDisplayFragment collectionDisplayFragment = null;
    private Fragment currentMainFragment;
    
    public Pokemon currentSelectedPokemon;
        
    private DatabaseHelper db;
    
    private SharedPreferences applicationSettings;
    
    public static Cache cache;
    
    //The "x" and "y" position of the Popup Window
    private Point p;

	public PokemonMachineActivity() {
		
	}
	
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pokemonmachine);
        
        // Setup Main Slide Navigation Menu
        mMainMenuItems = getResources().getStringArray(R.array.top_menu_item_name_array);
        mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        mDrawerList = (ListView) findViewById(R.id.left_drawer);
        
        mTitle = mDrawerTitle = getTitle();
        
        mDrawerToggle = new ActionBarDrawerToggle(this, mDrawerLayout,
                R.drawable.ic_drawer, R.string.app_name, R.string.app_name)
        {
            public void onDrawerClosed(View view)
            {
            	super.onDrawerClosed(view);
                getActionBar().setTitle(mTitle);
                invalidateOptionsMenu();
            }

            public void onDrawerOpened(View drawerView)
            {
            	super.onDrawerOpened(drawerView);
                getActionBar().setTitle(mDrawerTitle);
                invalidateOptionsMenu();
            }
        };
        
        mDrawerLayout.setDrawerListener(mDrawerToggle);
        
        //getActionBar().setDisplayHomeAsUpEnabled(true);
        //enableHomeButtonIfRequired();
        getActionBar().setDisplayHomeAsUpEnabled(true);
        getActionBar().setHomeButtonEnabled(true);
        

        // Set the adapter for the main menu list view
        mDrawerList.setAdapter(new ArrayAdapter<String>(this, R.layout.list_item_drawer, mMainMenuItems));
        mDrawerList.setOnItemClickListener(new MainMenuItemClickListener());
        
        // TODO Remove this after DEBUG/TESTING
        //forceDatabaseReload(this);
        
        // Create and add "Display Pokemon" as Primary Fragment
        showDisplayPokemonFragment();
        
        // Create and Initialise Database Connection
        db = new DatabaseHelper(this);
        
        // Create and Initialise Cache 
        cache = new Cache(this);
        
        applicationSettings = PreferenceManager.getDefaultSharedPreferences(this);
    }
	
	@TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
    private void enableHomeButtonIfRequired()
    {
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.ICE_CREAM_SANDWICH){
            getActionBar().setHomeButtonEnabled(true);
        }
    }
	
	@Override
    protected void onPostCreate(Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        // Sync the toggle state after onRestoreInstanceState has occurred.
        mDrawerToggle.syncState();
    }
	
	@Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        mDrawerToggle.onConfigurationChanged(newConfig);
    }	

	@Override
	public void onAttachedToWindow() {
		super.onAttachedToWindow();
		
        // Search-By-ID Listener
        EditText searchValueTextbox = (EditText)findViewById(R.id.txtSearch);
        searchValueTextbox.setImeActionLabel("Search", KeyEvent.KEYCODE_ENTER);
        searchValueTextbox.setImeOptions(EditorInfo.IME_ACTION_SEND);
        
        searchValueTextbox.setOnEditorActionListener(new OnEditorActionListener() {
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (actionId == ENTER_KEY_PRESSED) {
                	
                	hideSoftKeyboard(v);
                	clearFilterText();
                	
                	// Execute Search
                	searchFromSearchBox();
                	
                    return true;
                }
                return false;
            }
        });
		
        // Perform Initial Search
		executeSearch("001");
	}
	
	public void hideSoftKeyboard(TextView v) {
		// hide virtual keyboard - could also use InputMethodManager.HIDE_NOT_ALWAYS
		InputMethodManager imm = (InputMethodManager)getSystemService(Context.INPUT_METHOD_SERVICE);
		imm.hideSoftInputFromWindow(v.getWindowToken(), InputMethodManager.RESULT_UNCHANGED_SHOWN);
	}	
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
	    // Inflate the menu items for use in the action bar
	    MenuInflater inflater = getMenuInflater();
	    inflater.inflate(R.menu.main_activity_actions, menu);
	    return super.onCreateOptionsMenu(menu);
	}
	
	/**
	 * 
	 */
	public void searchFromSearchBox() {
		EditText searchValueTextbox = (EditText)findViewById(R.id.txtSearch);
		
		String searchValue = searchValueTextbox.getText().toString();
		
		if (searchValue != null && !searchValue.equals("") && Util.stringIsInteger(searchValue)) {
			executeSearch(searchValue);
		}
	}

	/**
	 * 
	 * @param view
	 */
	public void onSearchClick(View view) {
		searchFromSearchBox();
	}

	/**
	 * 
	 */
	public void onPokemonListItemSelected(String id) {
		TextView pokemonNameFilterTextView = (TextView) findViewById(R.id.txtFilter);
		hideSoftKeyboard(pokemonNameFilterTextView);
		executeSearch(id);
	}

	
	/**
	 * 
	 * @param view
	 */
	public void onClearNameFilterClick(View view) {
		clearFilterText();
	}

	public void clearFilterText() {
		EditText filterText = (EditText) findViewById(R.id.txtFilter);
		filterText.setText("");
	}	
	
	/**
	 * 
	 * @param view
	 */
	public void onClearIDClick(View view) {
		EditText idText = (EditText) findViewById(R.id.txtSearch);
		idText.setText("");
	}
	
	/**
	 * 
	 * @param view
	 */
	public void onMoveByLevelClick(View view) {
		updateMoveList(Constants.LEARN_TYPE_LEVEL_UP);
	}
	
	/**
	 * 
	 * @param view
	 */
	public void onMoveByMachineClick(View view) {
		updateMoveList(Constants.LEARN_TYPE_MACHINE);
	}

	/**
	 * 
	 * @param view
	 */
	public void onMoveByEggClick(View view) {
		updateMoveList(Constants.LEARN_TYPE_EGG_MOVE);
	}
	
	/**
	 * 
	 * @param view
	 */
	public void onMoveByTutorClick(View view) {
		updateMoveList(Constants.LEARN_TYPE_TUTOR);
	}

	private void updateMoveList(String moveLearnType) {
		ArrayList<Move> moveSubset = currentSelectedPokemon.getMovesByType(moveLearnType);
		
		if (moveLearnType.equalsIgnoreCase(Constants.LEARN_TYPE_LEVEL_UP)) {
			moveSubset = Util.sortMovesByLevel(moveSubset);
		}
		
		PokemonDisplayFragment.movesData.clear();
		PokemonDisplayFragment.movesData.addAll(moveSubset);
		PokemonDisplayFragment.movesListAdapter.notifyDataSetChanged();
	}
	
	public void executeSearch(String nationalId) {
		//executeSearchByREST(nationalId);
		executeSearchByDatabase(nationalId);
	}
	
	public void executeSearchByREST(String nationalId) {
		PokedexAPIResponderFragment responder = new PokedexAPIResponderFragment();

		FragmentManager fragmentManager = getFragmentManager();
		fragmentManager.beginTransaction().add(responder, "Responder").commit();
		
	    // Build URI
	    int id = Integer.parseInt(nationalId);
		String searchURI = URIConstructor.nationalID(id);	
		
		// Set URI and call service
		Intent intent = new Intent(this, RESTService.class);
	    //intent.setData(Uri.parse("http://pokeapi.co/api/v1/pokemon/1/"));
		intent.setData(Uri.parse(searchURI));
	    intent.putExtra(RESTService.EXTRA_RESULT_RECEIVER, responder.getResultReceiver());
	    
	    startService(intent);
	}
	
	/**
	 * 
	 * @param nationalId
	 */
	public void executeSearchByDatabase(String nationalId) {
		Pokemon pokemon = PokemonMachineActivity.cache.getPokemon(Integer.parseInt(nationalId));
		
		onPokemonUpdated(pokemon);
	}
	
	public void onPokemonUpdated(Pokemon pokemon) {
		Log.i(TAG, "PokemonUpdated Received by MainActivity : ID = " + pokemon.getId());
		
		currentSelectedPokemon = pokemon;
		
		// Get Managers and Helpers
		AssetHelper assetHelper = new AssetHelper(this);
		
		// Update Pokemon Display		
		pokemonDisplayFragment.update(pokemon);
		
		// Update Moves list and Notify Adapter
		if (pokemon.getMoves().size() == 0) {
			pokemon.setMoves(db.getMovesForPokemon(pokemon));
			// Update Cache
			Log.d(TAG, "[MOVES_UPDATED] Updating POKEMON_CACHE with ID = " + pokemon.getId());
			PokemonMachineActivity.cache.addPokemonToCache(pokemon);
		}

		updateMoveList(Constants.LEARN_TYPE_LEVEL_UP);
		
		// Update Evolutions
		ArrayList<Evolution> evolutions = new ArrayList<Evolution>();
		
		if (pokemon.getEvolutions().size() == 0) {
			evolutions = db.getEvolutions(pokemon.getId());
			pokemon.setEvolutions(evolutions);
			// Update Cache
			Log.d(TAG, "[EVOLUTIONS_UPDATED] Updating POKEMON_CACHE with ID = " + pokemon.getId());
			PokemonMachineActivity.cache.addPokemonToCache(pokemon);
		}

		LayoutInflater inflater = (LayoutInflater)this.getSystemService( Context.LAYOUT_INFLATER_SERVICE );
		LinearLayout holder = (LinearLayout) findViewById(R.id.evolutionsHolder);
		// Remove current displays
		holder.removeAllViews();
		
		buildEvolutionChain(pokemon, assetHelper, inflater, holder);
		
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
			TextView textView = (TextView) findViewById(textFieldIdByTypeId.get(i));
			int type1Id = Integer.parseInt(pokemon.getTypes().get(0).getId());
			int damagePercentageForType1 = matrix[i][type1Id];
			
			int type2Id;
			int damagePercentageForType2 = Constants.TYPE_NULL;
			
			if (pokemon.getTypes().size() == 2) {
				type2Id = Integer.parseInt(pokemon.getTypes().get(1).getId());
				damagePercentageForType2 = matrix[i][type2Id];
			}
			
			// Resolve Efficacy
			String damageText = Util.getAttackEfficacy(damagePercentageForType1, damagePercentageForType2);
			
			// Set text styles for type weaknesses
			if (damageText.equalsIgnoreCase(Constants.DAMAGE_REGULAR)) {
				textView.setTypeface(null, Typeface.NORMAL);
				textView.setTextColor(Color.GRAY);
			} else if (damageText.equalsIgnoreCase(Constants.DAMAGE_HALF)) {
				textView.setTypeface(null, Typeface.ITALIC);
				textView.setTextColor(Color.parseColor("#7bce52"));
			} else if (damageText.equalsIgnoreCase(Constants.DAMAGE_DOUBLE)) {
				textView.setTypeface(null, Typeface.BOLD);
				textView.setTextColor(Color.parseColor("#f08030"));
			} else if (damageText.equalsIgnoreCase(Constants.DAMAGE_QUARTER)) {
				textView.setTypeface(null, Typeface.NORMAL);
				textView.setTextColor(Color.BLUE);
			} else if (damageText.equalsIgnoreCase(Constants.DAMAGE_QUADRUPLE)) {
				textView.setTypeface(null, Typeface.BOLD);
				textView.setTextColor(Color.parseColor("#ee0000"));
			} if (damageText.equalsIgnoreCase(Constants.DAMAGE_IMMUNE)) {
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
	private void buildEvolutionChain(Pokemon pokemon, AssetHelper assetHelper, 
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
				    	   Util.showPopup(PokemonMachineActivity.this, p, heading, content);
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
				    	   Util.showPopup(PokemonMachineActivity.this, p, heading, content);
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
				final String itemName = db.getItemById(evolution.getHeldItemId()).getName();
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
				    	   Util.showPopup(PokemonMachineActivity.this, p, heading, content);
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
				    	   Util.showPopup(PokemonMachineActivity.this, p, heading, content);
				       }
				     }
				   });				
			}
		} else if (evolution.getMethod().equalsIgnoreCase(Constants.EVOLUTION_METHOD_USE_ITEM)) {
			// EVOLVE WHEN AN ITEM IS USED ON IT
			evolutionMethodView = (LinearLayout)inflater.inflate(R.layout.evolution_method_use_item, null );
			
			ImageView useItemView = (ImageView)evolutionMethodView.findViewById(R.id.imgUseItem);
			final String itemName = db.getItemById(evolution.getTriggerItemId()).getName();
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
			    	   String heading = "Use Item";
			    	   String content = "This Pokemon will evolve when a " + itemName + " is used on it.";
			    	   Util.showPopup(PokemonMachineActivity.this, p, heading, content);
			       }
			     }
			   });			
		} 
		
		return evolutionMethodView;
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
		    	executeSearch(id);
		    }
		});
		
		return evolutionStateView;
	}	

	/**
	 * 
	 */
	private class MainMenuItemClickListener implements ListView.OnItemClickListener {
	    @Override
	    public void onItemClick(AdapterView parent, View view, int position, long id) {
	        selectItem(position);
	    }
	}
	
	public void showSettings() {
	    // Display the fragment as the main content.
	    FragmentManager mFragmentManager = getFragmentManager();
	    FragmentTransaction mFragmentTransaction = mFragmentManager.beginTransaction();
	    mFragmentTransaction.replace(R.id.content_frame, new SettingsFragment());
	    mFragmentTransaction.addToBackStack(null);
	    mFragmentTransaction.commit();
	    
	    /*
	     getFragmentManager().beginTransaction().replace(android.R.id.content, new PrefsFragment()).commit();
	     */
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Pass the event to ActionBarDrawerToggle, if it returns
        // true, then it has handled the app icon touch event
        if (mDrawerToggle.onOptionsItemSelected(item)) {
          return true;
        }		
		
	    // Handle presses on the action bar items
	    switch (item.getItemId()) {
	        case R.id.action_settings:
	            showSettings();
	            return true;
	            
	        case R.id.action_filter_games:
	        	Log.d(TAG, "Open Filters");
	        	Util.showGameFilterDialog(this);
	        	
	            return true;
	            
	        case android.R.id.home:
	            if(mDrawerLayout.isDrawerOpen(mDrawerList)) {
	                mDrawerLayout.closeDrawer(mDrawerList);
	            }
	            else {
	                mDrawerLayout.openDrawer(mDrawerList);
	            }
	            return true;	            
	            
	        default:
	            return super.onOptionsItemSelected(item);
	    }
	}	

	/**
	 * Method to handle selections from the Main Nav Drawer
	 * @param position
	 */
    private void selectItem(int position) {
    	Log.i(TAG, "MainMenu Item Selected : " + String.valueOf(position));
    	
    	// Check position
    	if (position == TOP_MENU_ITEM_POKEMON) {
    		// TODO Replace with Cached Instances
    		showDisplayPokemonFragment();
    		
    	} else if (position == TOP_MENU_ITEM_MOVES) {
	        // update the main content by replacing fragments
    	} else if (position == TOP_MENU_ITEM_BERRIES) {
    		if (berryDisplayFragment == null) {
    			berryDisplayFragment = new BerryDisplayFragment();
            }
	
	        FragmentManager fragmentManager = getFragmentManager();
	        fragmentManager.beginTransaction().replace(R.id.content_frame, berryDisplayFragment).commit();
    		
	        //currentMainFragment = berryDisplayFragment;
    	} else if (position == TOP_MENU_ITEM_COLLECTION) {
    		showCollectionFragment();
    	}

        // update selected item and title, then close the drawer
        mDrawerList.setItemChecked(position, true);
        setTitle(mMainMenuItems[position]);
        mDrawerLayout.closeDrawer(mDrawerList);
    }

	public void showDisplayPokemonFragment() {
		if (pokemonDisplayFragment == null) {
			pokemonDisplayFragment = new PokemonDisplayFragment();
		}

		FragmentManager fragmentManager = getFragmentManager();
		fragmentManager.beginTransaction().replace(R.id.content_frame, pokemonDisplayFragment).commit();
		
		currentMainFragment = pokemonDisplayFragment;
	}

	public void showCollectionFragment() {
		if (collectionDisplayFragment == null) {
			collectionDisplayFragment = new CollectionDisplayFragment();
		}

		FragmentManager fragmentManager = getFragmentManager();
		fragmentManager.beginTransaction().replace(R.id.content_frame, collectionDisplayFragment).commit();
		
		currentMainFragment = collectionDisplayFragment;
	}

    /**
     * Forces the database to reload from the default asset file.
     */
    public static void forceDatabaseReload(Context context){
        DatabaseHelper dbHelper = new DatabaseHelper(context);
        dbHelper.setForcedUpgradeVersion(DatabaseHelper.DATABASE_VERSION);
        SQLiteDatabase db = dbHelper.getWritableDatabase();
        db.setVersion(-1);
        db.close();
        db = dbHelper.getWritableDatabase();
    }
}

