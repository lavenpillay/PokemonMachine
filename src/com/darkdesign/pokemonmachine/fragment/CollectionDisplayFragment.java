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
	LayoutInflater inflater;
	
	private final static int GAME_COLUMN_WIDTH = 130;
	
	public static SimplePokemonListAdapter pokemonListAdapter;
	
	private ArrayList<VideoGame> games = null;
	
	@Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		Log.v(TAG, "Enter : onCreateView()");

		v = inflater.inflate(R.layout.fragment_collection_main, container, false);
		activity = getActivity();
		
		this.inflater = inflater;  
		
		// Setup Pokemon List
		setupPokemonList();
		
		// Get Game Info
		games = PokemonMachineActivity.cache.getGameList();
	   
		// Setup Headers
		TableLayout gameHeadersTable = (TableLayout) v.findViewById(R.id.collectionHeaderTableLayout);
		TableRow gameNameHeaderRow = (TableRow) gameHeadersTable.findViewById(R.id.collectionGameNameHeaderRow);
		
		int headerFieldCount = games.size();
		  
		for (int i=0; i < headerFieldCount; i++) {
			TextView t = headerTextView(games.get(i).getName());
			gameNameHeaderRow.addView(t);
		}
		
		// Setup Data Table
		TableLayout collectionDataTable = (TableLayout) v.findViewById(R.id.collectionTableLayout);
		   
		// Setup Rows
		buildTable(collectionDataTable, headerFieldCount);
		
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
		
		
		final int DUMMY_ROWS_TO_GEN = 30;
		
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
        headerTextView.setBackgroundResource(R.drawable.simple_grey_border);
         
        return headerTextView;
    }
    
    /**
     * 
     * @return
     */
    private LinearLayout buildTableCell() {
    	
    	LinearLayout iconsLayout = (LinearLayout)inflater.inflate( R.layout.collection_pokemon_icon_display, null );
    	iconsLayout.setBackgroundResource(R.drawable.simple_grey_border);
    	
    	// Add Listeners
    	iconsLayout.setOnClickListener(new CellClickListener(TAG));
    	
    	updateHeaders();
    	
        return iconsLayout;
    }
    
    private void updateHeaders() {
    	
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
		
		
		ImageView seenIndicator = (ImageView) v.findViewWithTag("seen_indicator");
		ImageView caughtIndicator = (ImageView) v.findViewWithTag("caught_indicator");
		ImageView shinyIndicator = (ImageView) v.findViewWithTag("shiny_indicator");
		
		boolean isSeen = (seenIndicator.getVisibility() == View.VISIBLE) ? true : false;
		boolean isCaught = (caughtIndicator.getVisibility() == View.VISIBLE) ? true : false;
		boolean isShiny = (shinyIndicator.getVisibility() == View.VISIBLE) ? true : false;
		
		if (!isSeen) {
			seenIndicator.setVisibility(View.VISIBLE);
		} else if (isSeen && !isCaught) {
			caughtIndicator.setVisibility(View.VISIBLE);
		} else if (isSeen && isCaught) {
			toggleIndicator(seenIndicator);
			toggleIndicator(caughtIndicator);
		}
		
    }

	public void toggleIndicator(ImageView indicator) {
		int toggledVisibility = (indicator.getVisibility() == View.VISIBLE) ? View.INVISIBLE : View.VISIBLE;
		indicator.setVisibility(toggledVisibility);
	}
	
}

