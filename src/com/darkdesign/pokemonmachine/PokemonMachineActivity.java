package com.darkdesign.pokemonmachine;

import java.io.IOException;
import java.util.ArrayList;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.widget.DrawerLayout;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
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
import com.darkdesign.pokemonmachine.fragment.MoveListFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment.OnPokemonUpdatedListener;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.PokemonListFragment.OnPokemonListItemSelectedListener;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.URIConstructor;
import com.darkdesign.pokemonmachine.helper.Util;
import com.darkdesign.pokemonmachine.service.RESTService;


public class PokemonMachineActivity extends FragmentActivity implements OnPokemonUpdatedListener, OnPokemonListItemSelectedListener 
{
	private static final int ENTER_KEY_PRESSED = 66;
	private static String TAG = PokemonMachineActivity.class.getName();
	private static String TAG_FRAGMENT_POKEMON_DISPLAY = "PokemonDisplayFragment";
	private static String TAG_FRAGMENT_MOVES_DISPLAY = "MovesDisplayFragment";
	
	private String[] mMainMenuItems;
    private DrawerLayout mDrawerLayout;
    private ListView mDrawerList;
    
    private final static int TOP_MENU_ITEM_POKEMON = 0;
    private final static int TOP_MENU_ITEM_MOVES = 1;
    private final static int TOP_MENU_ITEM_BERRIES = 2;
    
    private PokemonDisplayFragment pokemonDisplayFragment = null;
    private BerryDisplayFragment berryDisplayFragment = null;
    private MoveListFragment movesListFragment = null;
    
    private Pokemon currentSelectedPokemon;
    
    private DatabaseHelper db;
    
    public static Cache cache;

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

        // Set the adapter for the main menu list view
        mDrawerList.setAdapter(new ArrayAdapter<String>(this, R.layout.list_item_drawer, mMainMenuItems));
        mDrawerList.setOnItemClickListener(new MainMenuItemClickListener());
        
        // TODO Remove this after DEBUG/TESTING
        //forceDatabaseReload(this);
        
        // Create and add "Display Pokemon" as Primary Fragment
        FragmentManager fragmentManager = getSupportFragmentManager();

        FragmentTransaction fTransaction = fragmentManager.beginTransaction();
        if (pokemonDisplayFragment == null) {
        	pokemonDisplayFragment = new PokemonDisplayFragment();
        }
        fTransaction.add(R.id.content_frame, pokemonDisplayFragment, TAG_FRAGMENT_POKEMON_DISPLAY);
        fTransaction.commit();
        
        // Create and add "Moves List" as Secondary Fragment
        fTransaction = fragmentManager.beginTransaction();
        if (movesListFragment == null) {
        	movesListFragment = new MoveListFragment();
        }
        fTransaction.add(R.id.moves_holder, movesListFragment, TAG_FRAGMENT_MOVES_DISPLAY);
        fTransaction.commit();
        
        db = new DatabaseHelper(this);
        
        cache = new Cache(this);
    }

	@Override
	public void onAttachedToWindow() {
		// TODO Auto-generated method stub
		super.onAttachedToWindow();
		
        // Other Listeners
        EditText searchValueTextbox = (EditText)findViewById(R.id.txtSearch);
        searchValueTextbox.setImeActionLabel("Search", KeyEvent.KEYCODE_ENTER);
        searchValueTextbox.setImeOptions(EditorInfo.IME_ACTION_SEND);
        
        searchValueTextbox.setOnEditorActionListener(new OnEditorActionListener() {
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (actionId == ENTER_KEY_PRESSED) {
                	
                	// hide virtual keyboard - could also use InputMethodManager.HIDE_NOT_ALWAYS
                    InputMethodManager imm = (InputMethodManager)getSystemService(Context.INPUT_METHOD_SERVICE);
                    imm.hideSoftInputFromWindow(v.getWindowToken(), InputMethodManager.RESULT_UNCHANGED_SHOWN);
                	
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

	public void onSearchClick(View view) {
		searchFromSearchBox();
	}
	
	public void onClearNameFilterClick(View view) {
		EditText filterText = (EditText) findViewById(R.id.txtFilter);
		filterText.setText("");
	}
	
	public void onClearIDClick(View view) {
		EditText idText = (EditText) findViewById(R.id.txtSearch);
		idText.setText("");
	}
	
	public void onMoveByLevelClick(View view) {
		updateMoveList(Constants.LEARN_TYPE_LEVEL_UP);
	}
	
	public void onMoveByMachineClick(View view) {
		updateMoveList(Constants.LEARN_TYPE_MACHINE);
	}

	public void onMoveByEggClick(View view) {
		updateMoveList(Constants.LEARN_TYPE_EGG_MOVE);
	}
	
	public void onMoveByTutorClick(View view) {
		updateMoveList(Constants.LEARN_TYPE_TUTOR);
	}
	


	private void updateMoveList(String moveLearnType) {
		ArrayList<Move> moveSubset = currentSelectedPokemon.getMovesByType(moveLearnType);
		
		if (moveLearnType.equalsIgnoreCase(Constants.LEARN_TYPE_LEVEL_UP)) {
			moveSubset = Util.sortMovesByLevel(moveSubset);
		}
		
		movesListFragment.testData.clear();
		movesListFragment.testData.addAll(moveSubset);
		movesListFragment.adapter.notifyDataSetChanged();
	}
	
	public void executeSearch(String nationalId) {
		//executeSearchByREST(nationalId);
		executeSearchByDatabase(nationalId);
	}
	
	public void executeSearchByREST(String nationalId) {
		PokedexAPIResponderFragment responder = new PokedexAPIResponderFragment();

		FragmentManager fragmentManager = getSupportFragmentManager();
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
	
	public void executeSearchByDatabase(String nationalId) {
		//Pokemon pokemon = db.getPokemon(nationalId);
		Pokemon pokemon = PokemonMachineActivity.cache.getPokemon(Integer.parseInt(nationalId));
		
		onPokemonUpdated(pokemon);
	}
	
	public void onPokemonUpdated(Pokemon pokemon) {
		Log.i(TAG, "PokemonUpdated Received by MainActivity");
		
		currentSelectedPokemon = pokemon;
		
		// Get Managers and Helpers
		AssetHelper assetHelper = new AssetHelper(this);
		
		// Update Pokemon Display -----------------------------		
		pokemonDisplayFragment.update(pokemon);
		
		// Update Moves list and Notify Adapter -----------------------------
		if (pokemon.getMoves().size() == 0) {
			pokemon.setMoves(db.getMovesForPokemon(pokemon));
			// Update Cache
			Log.d(TAG, "[MOVES_UPDATED] Updating POKEMON_CACHE with ID = " + pokemon.getId());
			PokemonMachineActivity.cache.addPokemonToCache(pokemon);
		}

		updateMoveList(Constants.LEARN_TYPE_LEVEL_UP);
		
		// Update Evolutions -----------------------------
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
			if (evolution.getMinimumHappiness() != null) {
				evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_levelup_happiness, null );
			} else {
				evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_levelup, null );
			}
			
			if (evolution.getLevel() != null) {
				TextView levelView = (TextView)evolutionMethodView.findViewById(R.id.txtEvolutionLevel);
				levelView.setText(evolution.getLevel());
			}
		} else if (evolution.getMethod().equalsIgnoreCase(Constants.EVOLUTION_METHOD_TRADE)) {
			evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_trade, null );
		} else if (evolution.getMethod().equalsIgnoreCase(Constants.EVOLUTION_METHOD_USE_ITEM)) {
			evolutionMethodView = (LinearLayout)inflater.inflate(R.layout.evolution_method_use_item, null );
			
			ImageView useItemView = (ImageView)evolutionMethodView.findViewById(R.id.imgUseItem);
			String itemName = db.getItemById(evolution.getTriggerItemId()).getName();
			Bitmap bm = assetHelper.getBitmapFromAsset(Constants.PATH_TO_ITEM_SPRITES + Util.toAllLowerCase(itemName) + ".png");
			useItemView.setImageBitmap(bm);
		}
		
		return evolutionMethodView;
	}

	private LinearLayout buildEvolutionStateView(String pokemonId, AssetHelper assetHelper, LayoutInflater inflater)
			throws IOException 
	{
		final String id = Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH);
		Bitmap bm = assetHelper.getBitmapFromAsset(Constants.PATH_TO_POKEMON_SPRITES + id + ".png");
		LinearLayout evolutionStateView = (LinearLayout)inflater.inflate( R.layout.evolution_state_image, null );
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

	public void onPokemonListItemSelected(String id) {
		executeSearch(id);
	}
	
	private class MainMenuItemClickListener implements ListView.OnItemClickListener {
	    @Override
	    public void onItemClick(AdapterView parent, View view, int position, long id) {
	        selectItem(position);
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
    		//Fragment fragment = new PokemonDisplayFragment();
    		if (pokemonDisplayFragment == null) {
            	pokemonDisplayFragment = new PokemonDisplayFragment();
            }
	
	        FragmentManager fragmentManager = getSupportFragmentManager();
	        fragmentManager.beginTransaction().replace(R.id.content_frame, pokemonDisplayFragment).commit();
    		
	        //currentMainFragment = pokemonDisplayFragment;
	        
    	} else if (position == TOP_MENU_ITEM_MOVES) {
	        // update the main content by replacing fragments
    		/*
	        Fragment fragment = new MainMenuFragment();
	        Bundle args = new Bundle();
	        args.putInt(MainMenuFragment.ARG_PLANET_NUMBER, position);
	        fragment.setArguments(args);
	
	        FragmentManager fragmentManager = getSupportFragmentManager();
	        fragmentManager.beginTransaction().replace(R.id.content_frame, fragment, TAG_FRAGMENT_POKEMON_DISPLAY).commit();
	        */
    	} else if (position == TOP_MENU_ITEM_BERRIES) {
    		if (berryDisplayFragment == null) {
    			berryDisplayFragment = new BerryDisplayFragment();
            }
	
	        FragmentManager fragmentManager = getSupportFragmentManager();
	        fragmentManager.beginTransaction().replace(R.id.content_frame, berryDisplayFragment).commit();
    		
	        //currentMainFragment = berryDisplayFragment;
    	}

        // update selected item and title, then close the drawer
        mDrawerList.setItemChecked(position, true);
        setTitle(mMainMenuItems[position]);
        mDrawerLayout.closeDrawer(mDrawerList);
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
