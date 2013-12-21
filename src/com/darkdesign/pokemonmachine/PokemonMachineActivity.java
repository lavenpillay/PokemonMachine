package com.darkdesign.pokemonmachine;

import java.io.IOException;
import java.util.ArrayList;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.widget.DrawerLayout;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Evolution;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.exception.DoesNotEvolveException;
import com.darkdesign.pokemonmachine.fragment.BerryDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.MoveListFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment.OnPokemonUpdatedListener;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.PokemonListFragment.OnPokemonListItemSelectedListener;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.GlobalConstants;
import com.darkdesign.pokemonmachine.helper.URIConstructor;
import com.darkdesign.pokemonmachine.helper.Util;
import com.darkdesign.pokemonmachine.service.RESTService;


public class PokemonMachineActivity extends FragmentActivity implements OnPokemonUpdatedListener, OnPokemonListItemSelectedListener 
{
	private static String TAG = PokemonMachineActivity.class.getName();
	private static String TAG_FRAGMENT_POKEMON_DISPLAY = "PokemonDisplayFragment";
	private static String TAG_FRAGMENT_MOVES_DISPLAY = "MovesDisplayFragment";
	
	public static final String LEARN_TYPE_LEVEL_UP = "level up";
	public static final String LEARN_TYPE_MACHINE = "machine";
	public static final String LEARN_TYPE_TUTOR = "tutor";
	public static final String LEARN_TYPE_EGG_MOVE = "egg move";
	
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
    
    private EditText filterText = null;

	public PokemonMachineActivity() {
		// TODO Auto-generated constructor stub
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
        
        // Execute Default Search
        executeSearch("043");
    }
	
	
	public void onSearchClick(View view) {
		executeSearch();
	}
	
	public void onMoveByLevelClick(View view) {
		updateMoveList(LEARN_TYPE_LEVEL_UP);
	}
	
	public void onMoveByMachineClick(View view) {
		updateMoveList(LEARN_TYPE_MACHINE);
	}

	public void onMoveByEggClick(View view) {
		updateMoveList(LEARN_TYPE_EGG_MOVE);
	}
	
	public void onMoveByTutorClick(View view) {
		updateMoveList(LEARN_TYPE_TUTOR);
	}
	


	private void updateMoveList(String moveLearnType) {
		ArrayList<Move> moveSubset = currentSelectedPokemon.getMovesByType(moveLearnType);
		
		if (moveLearnType.equalsIgnoreCase(LEARN_TYPE_LEVEL_UP)) {
			moveSubset = Util.sortMovesByLevel(moveSubset);
		}
		
		movesListFragment.testData.clear();
		movesListFragment.testData.addAll(moveSubset);
		movesListFragment.adapter.notifyDataSetChanged();
	}
	
	public void executeSearch() {
		EditText searchValueTextbox = (EditText)findViewById(R.id.txtSearch);
		executeSearch(searchValueTextbox.getText().toString());
	}
	
	public void executeSearch(String nationalId) {
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
	
	// TODO Replace with database call 
	public ArrayList<Move> retrieveMoveData(Pokemon pokemon) {
        DatabaseHelper db = new DatabaseHelper(this);
        ArrayList<Move> moves = db.getMovesForPokemon(pokemon);
        
        return moves;
	}
	
	public void onPokemonUpdated(Pokemon pokemon) {
		Log.i(TAG, "PokemonUpdated Received by MainActivity");
		
		currentSelectedPokemon = pokemon;
		
		// Get Managers and Helpers
		FragmentManager fragmentManager = getSupportFragmentManager();
		AssetHelper assetHelper = new AssetHelper(this);
		DatabaseHelper db = new DatabaseHelper(this);
		
		// Update Pokemon Display -----------------------------		
		PokemonDisplayFragment pDisplay = (PokemonDisplayFragment) fragmentManager.findFragmentByTag(TAG_FRAGMENT_POKEMON_DISPLAY); 
		pDisplay.update(pokemon);
		
		// Update Moves list and Notify Adapter -----------------------------
		pokemon.setMoves(retrieveMoveData(pokemon));
		
		updateMoveList(LEARN_TYPE_LEVEL_UP);
		
		// Update Evolutions -----------------------------
		ArrayList<Evolution> evolutions = new ArrayList<Evolution>();
		
		try {
			evolutions = db.getEvolutions(pokemon.getId());
		} catch (DoesNotEvolveException e) {
			Log.i(TAG, "Pokemon with ID = " + pokemon.getId() + " does not Evolve");
		}
		
		LayoutInflater inflater = (LayoutInflater)this.getSystemService( Context.LAYOUT_INFLATER_SERVICE );
		LinearLayout holder = (LinearLayout) findViewById(R.id.evolutionsHolder);
		// Remove current displays
		holder.removeAllViews();
		
		buildEvolutionChain(pokemon, assetHelper, evolutions, inflater, holder);			
		
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
			ArrayList<Evolution> evolutions, LayoutInflater inflater, LinearLayout holder) {
		
		LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(
			     LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);

		layoutParams.setMargins(5, 5, 5, 5);		
		
		try {
			Evolution evolution = evolutions.get(0);
			
			// State 1
			LinearLayout evolutionStateView = buildEvolutionStateView(evolution.getPokemonId(), assetHelper, inflater);
			holder.addView(evolutionStateView);
			
			if (evolutions.size() > 0) {
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
		DatabaseHelper dbHelper = new DatabaseHelper(this);
		
		if (evolution.getMethod().equalsIgnoreCase(GlobalConstants.EVOLUTION_METHOD_LEVEL_UP)) {
			if (evolution.getMinimumHappiness() != null) {
				evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_levelup_happiness, null );
			} else {
				evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_levelup, null );
			}
			
			if (evolution.getLevel() != null) {
				TextView levelView = (TextView)evolutionMethodView.findViewById(R.id.txtEvolutionLevel);
				levelView.setText(evolution.getLevel());
			}
		} else if (evolution.getMethod().equalsIgnoreCase(GlobalConstants.EVOLUTION_METHOD_TRADE)) {
			evolutionMethodView = (LinearLayout)inflater.inflate( R.layout.evolution_method_trade, null );
		} else if (evolution.getMethod().equalsIgnoreCase(GlobalConstants.EVOLUTION_METHOD_USE_ITEM)) {
			evolutionMethodView = (LinearLayout)inflater.inflate(R.layout.evolution_method_use_item, null );
			
			ImageView useItemView = (ImageView)evolutionMethodView.findViewById(R.id.imgUseItem);
			String itemName = dbHelper.getItemById(evolution.getTriggerItemId()).getName();
			Bitmap bm = assetHelper.getBitmapFromAsset(GlobalConstants.PATH_TO_ITEM_SPRITES + Util.toAllLowerCase(itemName) + ".png");
			useItemView.setImageBitmap(bm);
		}
		
		return evolutionMethodView;
	}

	private LinearLayout buildEvolutionStateView(String pokemonId, AssetHelper assetHelper, LayoutInflater inflater)
			throws IOException 
	{
		String id = Util.padLeft(pokemonId, GlobalConstants.POKEMON_ID_LENGTH);
		Bitmap bm = assetHelper.getBitmapFromAsset(GlobalConstants.PATH_TO_POKEMON_SPRITES + id + ".png");
		LinearLayout evolutionStateView = (LinearLayout)inflater.inflate( R.layout.evolution_state_image, null );
		ImageView evolutionImage = (ImageView) evolutionStateView.findViewById(R.id.imgPokemonEvolution);
		evolutionImage.setImageBitmap(bm);
		return evolutionStateView;
	}	

	public void onPokemonListItemSelected(String id) {
		FragmentManager fragmentManager = getSupportFragmentManager();
		
		// Update View		
		PokemonDisplayFragment pDisplay = (PokemonDisplayFragment) fragmentManager.findFragmentByTag(TAG_FRAGMENT_POKEMON_DISPLAY);
		EditText searchValue = (EditText)findViewById(R.id.txtSearch);
		searchValue.setText(id);
		
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
