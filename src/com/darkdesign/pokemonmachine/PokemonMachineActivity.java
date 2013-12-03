package com.darkdesign.pokemonmachine;

import java.util.ArrayList;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.widget.DrawerLayout;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;

import com.darkdesign.pokemonmachine.fragment.BerryDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.MoveListFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment.OnPokemonUpdatedListener;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.PokemonListFragment.OnPokemonListItemSelectedListener;
import com.darkdesign.pokemonmachine.helper.URIConstructor;
import com.darkdesign.pokemonmachine.pokedex.element.Move;
import com.darkdesign.pokemonmachine.pokedex.element.Pokemon;
import com.darkdesign.pokemonmachine.service.RESTService;


public class PokemonMachineActivity extends FragmentActivity implements OnPokemonUpdatedListener, OnPokemonListItemSelectedListener 
{
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
    private Fragment currentMainFragment;

	public PokemonMachineActivity() {
		// TODO Auto-generated constructor stub
		
	}
	
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pokemonmachine);
        
		//Testing Database
		/*
		Cursor pokemonCursor;
        DatabaseHelper db;
        
        db = new DatabaseHelper(this);
        Pokemon test = db.getPokemon("001");
        */
        
        // Setup Main Slide Navigation Menu
        mMainMenuItems = getResources().getStringArray(R.array.top_menu_item_name_array);
        mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        mDrawerList = (ListView) findViewById(R.id.left_drawer);

        // Set the adapter for the main menu list view
        mDrawerList.setAdapter(new ArrayAdapter<String>(this, R.layout.list_item_drawer, mMainMenuItems));
        mDrawerList.setOnItemClickListener(new MainMenuItemClickListener());
        
        // Create and add "Display Pokemon" as Primary Fragment
        FragmentManager fragmentManager = getSupportFragmentManager();

        FragmentTransaction fTransaction = fragmentManager.beginTransaction();
        if (pokemonDisplayFragment == null) {
        	pokemonDisplayFragment = new PokemonDisplayFragment();
        }
        fTransaction.add(R.id.content_frame, pokemonDisplayFragment, TAG_FRAGMENT_POKEMON_DISPLAY);
        fTransaction.commit();

        currentMainFragment = pokemonDisplayFragment;
        
        // Create and add "Moves List" as Secondary Fragment
        
        fTransaction = fragmentManager.beginTransaction();
        if (movesListFragment == null) {
        	movesListFragment = new MoveListFragment();
        }
        fTransaction.add(R.id.moves_holder, movesListFragment, TAG_FRAGMENT_MOVES_DISPLAY);
        fTransaction.commit();
        
        executeSearch("001");
    }
	
	
	public void onSearchClick(View view) {
		executeSearch();
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
	
	public void onPokemonUpdated(Pokemon pokemon) {
		Log.i(TAG, "PokemonUpdated Received by MainActivity");
		
		FragmentManager fragmentManager = getSupportFragmentManager();
		
		// Update View		
		PokemonDisplayFragment pDisplay = (PokemonDisplayFragment) fragmentManager.findFragmentByTag(TAG_FRAGMENT_POKEMON_DISPLAY); 
		pDisplay.update(pokemon);

		// Update Moves list
		movesListFragment.testData.clear();
		movesListFragment.testData.addAll(pokemon.getMoves());
		
		movesListFragment.adapter.notifyDataSetChanged();
	}	

	public void onPokemonListItemSelected(String id) {
		FragmentManager fragmentManager = getSupportFragmentManager();
		
		// Update View		
		PokemonDisplayFragment pDisplay = (PokemonDisplayFragment) fragmentManager.findFragmentByTag(TAG_FRAGMENT_POKEMON_DISPLAY);
		EditText searchValue = (EditText)findViewById(R.id.txtSearch);
		searchValue.setText(id);
	}
	
	private class MainMenuItemClickListener implements ListView.OnItemClickListener {
	    @Override
	    public void onItemClick(AdapterView parent, View view, int position, long id) {
	        selectItem(position);
	    }
	}
	

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
	    		
		        currentMainFragment = pokemonDisplayFragment;
		        
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
	    		
		        currentMainFragment = berryDisplayFragment;
	    	}

	        // update selected item and title, then close the drawer
	        mDrawerList.setItemChecked(position, true);
	        setTitle(mMainMenuItems[position]);
	        mDrawerLayout.closeDrawer(mDrawerList);
	    }

}
