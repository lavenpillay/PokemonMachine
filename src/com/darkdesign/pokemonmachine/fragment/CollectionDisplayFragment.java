package com.darkdesign.pokemonmachine.fragment;

import android.app.Fragment;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment.OnPokemonListItemSelectedListener;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class CollectionDisplayFragment extends Fragment {
	private String TAG = CollectionDisplayFragment.class.toString();
	private View v; 
	
	private Context activity;
	
	private final static int GAME_COLUMN_WIDTH = 100;
	
	// set the header titles
    private String gameNames[] = {
        "Red",
        "Green",
        "Blue",
        "Yellow",
        "Gold",
        "Silver",
        "Crystal",
        "Ruby",
        "Sapphire",
        "Fire Red",
        "Leaf Green",
        "Emerald",
        "Diamond",
        "Pearl",
        "Platinum",
        "Heart Gold",
        "Soul Silver",
        "Black",
        "White",
        "Black 2",
        "White 2",
        "X",
        "Y"
    };
	
	public static SimplePokemonListAdapter pokemonListAdapter;
	
	@Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		Log.v(TAG, "Enter : onCreateView()");

		v = inflater.inflate(R.layout.fragment_collection_main, container, false);
		activity = getActivity();
		
		// Setup Pokemon List
		setupPokemonList();		
	   
		// Setup Headers
		TableLayout gameHeadersTable = (TableLayout) v.findViewById(R.id.collectionGameNameTableLayout);
		TableRow gameNameHeaders = new TableRow(activity);
		
		int headerFieldCount = this.gameNames.length;
		  
		for (int i=0; i < headerFieldCount; i++) {
			TextView t = headerTextView(gameNames[i]);
			 
			gameNameHeaders.addView(t);
		}
		   
		gameHeadersTable.addView(gameNameHeaders);
		
		// Setup Data
		for (int i=0; i < 20; i++) {
			TableRow dataRow = new TableRow(activity);
			
			for (int j=0; j < headerFieldCount; j++) {
				dataRow.addView(generateTableCell());
			}
			
			gameHeadersTable.addView(dataRow);
		}
		
		return v;
	 }

	// header standard TextView
    TextView headerTextView(String label){
         
        TextView headerTextView = new TextView(getActivity());
        headerTextView.setBackgroundColor(Color.WHITE);
        headerTextView.setText(label);
        headerTextView.setGravity(Gravity.CENTER);
        headerTextView.setPadding(5, 5, 5, 5);
        headerTextView.setWidth(GAME_COLUMN_WIDTH);
         
        return headerTextView;
    }
    
    LinearLayout generateTableCell() {
    	
    	LinearLayout infoLayout = new LinearLayout(this.activity);
    	infoLayout.setBackgroundColor(Color.WHITE);
    	infoLayout.setGravity(Gravity.CENTER);
    	infoLayout.setPadding(5, 5, 5, 5);
    	
    	LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(30, 30);
    	
    	ImageView pokeballIcon = new ImageView(this.activity);
    	pokeballIcon.setImageResource(R.drawable.pokeball);
    	pokeballIcon.setLayoutParams(layoutParams);
    	
    	infoLayout.addView(pokeballIcon);
    	
        return infoLayout;
    	
    }
	
	private void setupPokemonList() {
		// Handle Pokemon List
	   String[] names = getResources().getStringArray(R.array.pokemon_names);
	   pokemonListAdapter = new SimplePokemonListAdapter(getActivity(), names);
		
	   ListView listView = (ListView) v.findViewById(R.id.plistCollection);
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
	}

}
