package com.darkdesign.pokemonmachine;

import java.util.ArrayList;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
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
import android.view.inputmethod.EditorInfo;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

import com.darkdesign.pokemonmachine.cache.Cache;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.dialog.PopupManager;
import com.darkdesign.pokemonmachine.element.Evolution;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.fragment.BerryDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.CollectionDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment.OnPokemonUpdatedListener;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment.OnPokemonListItemSelectedListener;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;
import com.darkdesign.pokemonmachine.preferences.SettingsFragment;


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
	private AssetHelper assetHelper = new AssetHelper(this);
    
    
    public static Cache cache;
    
    //The "x" and "y" position of the Popup Window
    private Point p;

    /**
     * 
     */
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
	
	/**
	 * 
	 */
	@TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
    private void enableHomeButtonIfRequired()
    {
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.ICE_CREAM_SANDWICH){
            getActionBar().setHomeButtonEnabled(true);
        }
    }
	
	/**
	 * 
	 */
	@Override
    protected void onPostCreate(Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        // Sync the toggle state after onRestoreInstanceState has occurred.
        mDrawerToggle.syncState();
    }
	
	/**
	 * 
	 */
	@Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        mDrawerToggle.onConfigurationChanged(newConfig);
    }	

	/**
	 * 
	 */
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
                	
                	Util.hideSoftKeyboard(v);
                	clearFilterText();
                	
                	// Execute Search
                	searchFromSearchBox();
                	
                    return true;
                }
                return false;
            }
        });
		
        // Perform Initial Search : 1 == Bulbasaur
		executeSearch(1);
	}

	/**
	 * 
	 */
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
			executeSearch(Integer.parseInt(searchValue));
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
		Util.hideSoftKeyboard(pokemonNameFilterTextView);
		executeSearch(Integer.valueOf(id));
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

	/**
	 * 
	 * @param moveLearnType
	 */
	private void updateMoveList(String moveLearnType) {
		ArrayList<Move> moveSubset = currentSelectedPokemon.getMovesByType(moveLearnType);
		
		if (moveLearnType.equalsIgnoreCase(Constants.LEARN_TYPE_LEVEL_UP)) {
			moveSubset = Util.sortMovesByLevel(moveSubset);
		}
		
		PokemonDisplayFragment.movesData.clear();
		PokemonDisplayFragment.movesData.addAll(moveSubset);
		PokemonDisplayFragment.movesListAdapter.notifyDataSetChanged();
	}
	
	/**
	 * 
	 * @param nationalId
	 */
	public void executeSearch(int nationalId) {
		executeSearchByDatabase(nationalId);
	}
	
	/**
	 * 
	 * @param nationalId
	 */
	public void executeSearchByDatabase(int nationalId) {
		Pokemon pokemon = PokemonMachineActivity.cache.getPokemon(nationalId);
		
		onPokemonUpdated(pokemon);
	}
	
	public void onPokemonUpdated(Pokemon pokemon) {
		Log.i(TAG, "PokemonUpdated Received by MainActivity : ID = " + pokemon.getId());
		
		currentSelectedPokemon = pokemon;
		
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
		
		// Update Cache if required
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
		
		pokemonDisplayFragment.buildEvolutionChain(pokemon, assetHelper, inflater, holder);
		
		pokemonDisplayFragment.updateTypeWeaknessDisplay(pokemon);
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
	            showSettingsFragment();
	            return true;
	            
	        case R.id.action_filter_games:
	        	Log.d(TAG, "Open Filters");
	        	PopupManager.showGameFilterDialog(this);
	        	
	            return true;
	            
	        case R.id.action_type_table:
	        	Log.d(TAG, "Show Type table");
	        	PopupManager.showTypeWeaknessPopup(this);
	        	
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

    /**
     * 
     */
	public void showDisplayPokemonFragment() {
		if (pokemonDisplayFragment == null) {
			pokemonDisplayFragment = new PokemonDisplayFragment();
		}

		FragmentManager fragmentManager = getFragmentManager();
		fragmentManager.beginTransaction().replace(R.id.content_frame, pokemonDisplayFragment).commit();
		
		currentMainFragment = pokemonDisplayFragment;
	}

	/**
	 * 
	 */
	public void showCollectionFragment() {
		if (collectionDisplayFragment == null) {
			collectionDisplayFragment = new CollectionDisplayFragment();
		}

		FragmentManager fragmentManager = getFragmentManager();
		fragmentManager.beginTransaction().replace(R.id.content_frame, collectionDisplayFragment).commit();
		
		currentMainFragment = collectionDisplayFragment;
	}
	
	/**
	 * 
	 */
	public void showSettingsFragment() {
	    // Display the fragment as the main content.
	    FragmentManager mFragmentManager = getFragmentManager();
	    FragmentTransaction mFragmentTransaction = mFragmentManager.beginTransaction();
	    mFragmentTransaction.replace(R.id.content_frame, new SettingsFragment());
	    mFragmentTransaction.addToBackStack(null);
	    mFragmentTransaction.commit();
	    
	    //getFragmentManager().beginTransaction().replace(R.id.content_frame, new SettingsFragment()).commit();
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

