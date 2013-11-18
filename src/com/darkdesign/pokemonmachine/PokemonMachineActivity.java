package com.darkdesign.pokemonmachine;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.widget.DrawerLayout;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.fragment.PlanetFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment;
import com.darkdesign.pokemonmachine.fragment.PokedexAPIResponderFragment.OnPokemonUpdatedListener;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment;
import com.darkdesign.pokemonmachine.helper.URIConstructor;
import com.darkdesign.pokemonmachine.pokedex.element.Pokemon;
import com.darkdesign.pokemonmachine.service.RESTService;
import com.example.pokemonmachine.R;

public class PokemonMachineActivity extends FragmentActivity implements OnPokemonUpdatedListener 
{
	private static String TAG = PokemonMachineActivity.class.getName();
	private static String TAG_FRAGMENT_POKEMON_DISPLAY = "PokemonDisplayFragment";
	
	private String[] mPlanetTitles;
    private DrawerLayout mDrawerLayout;
    private ListView mDrawerList;
    
    private final static int TOP_MENU_ITEM_POKEMON = 0;
    private final static int TOP_MENU_ITEM_MOVES = 1;

	public PokemonMachineActivity() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pokemonmachine);

        mPlanetTitles = getResources().getStringArray(R.array.top_menu_item_name_array);
        mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        mDrawerList = (ListView) findViewById(R.id.left_drawer);

        // Set the adapter for the list view
        mDrawerList.setAdapter(new ArrayAdapter<String>(this,
                R.layout.drawer_list_item, mPlanetTitles));
        // Set the list's click listener
        mDrawerList.setOnItemClickListener(new DrawerItemClickListener());

    }

	
    private void selectItem(int position) {
    	// Check position
    	if (position == TOP_MENU_ITEM_POKEMON) {
    		Fragment fragment = new PokemonDisplayFragment();
	        Bundle args = new Bundle();
	        //args.putInt(PlanetFragment.ARG_PLANET_NUMBER, position);
	        //fragment.setArguments(args);
	
	        FragmentManager fragmentManager = getSupportFragmentManager();
	        fragmentManager.beginTransaction().replace(R.id.content_frame, fragment).commit();
    		
    	} else if (position == TOP_MENU_ITEM_MOVES) {
	        // update the main content by replacing fragments
	        Fragment fragment = new PlanetFragment();
	        Bundle args = new Bundle();
	        args.putInt(PlanetFragment.ARG_PLANET_NUMBER, position);
	        fragment.setArguments(args);
	
	        FragmentManager fragmentManager = getSupportFragmentManager();
	        fragmentManager.beginTransaction().replace(R.id.content_frame, fragment, TAG_FRAGMENT_POKEMON_DISPLAY).commit();
    	} 

        // update selected item and title, then close the drawer
        mDrawerList.setItemChecked(position, true);
        setTitle(mPlanetTitles[position]);
        mDrawerLayout.closeDrawer(mDrawerList);
    }
    
	public void onSearchClick(View view) {
		
		PokedexAPIResponderFragment responder = new PokedexAPIResponderFragment();

		FragmentManager fragmentManager = getSupportFragmentManager();
		fragmentManager.beginTransaction().add(responder, "Responder").commit();
		
	    // Build URI
		EditText searchValueTextbox = (EditText)findViewById(R.id.txtSearch);
	    int id = Integer.parseInt(searchValueTextbox.getText().toString());
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
	}	

    /* The click listener for ListView in the navigation drawer */
    private class DrawerItemClickListener implements ListView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            selectItem(position);
        }
    }    
}
