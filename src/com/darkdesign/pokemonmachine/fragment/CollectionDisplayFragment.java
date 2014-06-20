package com.darkdesign.pokemonmachine.fragment;

import java.util.ArrayList;

import android.app.Fragment;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.element.VideoGame;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment.OnPokemonListItemSelectedListener;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class CollectionDisplayFragment extends Fragment {
	private String TAG = CollectionDisplayFragment.class.toString();
	private View v; 
	
	private Context activity;
	
	private final static int GAME_COLUMN_WIDTH = 100;
	
	public static SimplePokemonListAdapter pokemonListAdapter;
	
	private ArrayList<VideoGame> games = null;
	
	@Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		Log.v(TAG, "Enter : onCreateView()");

		v = inflater.inflate(R.layout.fragment_collection_main, container, false);
		activity = getActivity();
		
		// Setup Pokemon List
		setupPokemonList();
		
		// Get Game Info
		games = PokemonMachineActivity.cache.getGameList();
	   
		// Setup Headers
		TableLayout gameHeadersTable = (TableLayout) v.findViewById(R.id.collectionGameNameTableLayout);
		TableRow gameNameHeaders = new TableRow(activity);
		
		int headerFieldCount = games.size();
		  
		for (int i=0; i < headerFieldCount; i++) {
			TextView t = headerTextView(games.get(i).getName());
			 
			gameNameHeaders.addView(t);
		}
		   
		gameHeadersTable.addView(gameNameHeaders);
		
		// Setup Rows
		buildTable(gameHeadersTable, headerFieldCount);
		
		return v;
	 }

	private void generateDummyData(TableLayout gameHeadersTable, int headerFieldCount) {
		final int DUMMY_ROWS_TO_GEN = 20;
		
		for (int i=0; i < DUMMY_ROWS_TO_GEN; i++) {
			TableRow dataRow = new TableRow(activity);
			
			for (int j=0; j < headerFieldCount; j++) {
				dataRow.addView(buildTableCell());
			}
			
			gameHeadersTable.addView(dataRow);
		}
	}
	
	private void buildTable(TableLayout gameHeadersTable, int headerFieldCount) {
		
		// TODO Get the User Collection data from DB
		
		
		final int DUMMY_ROWS_TO_GEN = 20;
		
		for (int i=0; i < DUMMY_ROWS_TO_GEN; i++) {
			TableRow dataRow = new TableRow(activity);
			
			for (int j=0; j < headerFieldCount; j++) {
				dataRow.addView(buildTableCell());
			}
			
			gameHeadersTable.addView(dataRow);
		}
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
    
    /**
     * 
     * @return
     */
    private LinearLayout buildTableCell() {
    	
    	LinearLayout infoLayout = new LinearLayout(this.activity);
    	//infoLayout.setBackgroundColor(Color.WHITE);
    	infoLayout.setBackgroundResource(R.drawable.simple_grey_border);
    	infoLayout.setGravity(Gravity.CENTER);
    	infoLayout.setPadding(5, 5, 5, 5);
    	
    	LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(30, 30);
    	
    	ImageView pokeballIcon = new ImageView(this.activity);
    	pokeballIcon.setImageResource(R.drawable.pokeball);
    	pokeballIcon.setLayoutParams(layoutParams);
    	pokeballIcon.setTag("caught_indicator");
    	
    	// Add Listeners
    	infoLayout.setOnClickListener(new CellClickListener(TAG));
    	
    	infoLayout.addView(pokeballIcon);
    	
    	// testing
    	pokeballIcon.setVisibility(View.INVISIBLE);
    	
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

	          Log.i(TAG, "Item Clicked");
	  		  
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

class CellClickListener implements OnClickListener {
	private String parentTag = "";
	
	CellClickListener(String parentTag) {
		this.parentTag = parentTag;
	}
	
	@Override
    public void onClick(View v){
        // TODO Hook up to DB
        //row_id=contact_table.indexOfChild(row);
		Log.d(parentTag, "Cell Click !");
		ImageView caughtIndicator = (ImageView) v.findViewWithTag("caught_indicator");
		
		int toggledVisibility = (caughtIndicator.getVisibility() == View.VISIBLE) ? View.INVISIBLE : View.VISIBLE;
		caughtIndicator.setVisibility(toggledVisibility);
    }
	
}

