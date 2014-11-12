package com.darkdesign.pokemonmachine.fragment;

import java.util.ArrayList;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.element.VideoGame;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;
import com.darkdesign.pokemonmachine.layout.NoFlingHorizontalScrollView;
import com.darkdesign.pokemonmachine.listener.OnPokemonListItemSelectedListener;

public class CollectionDisplayFragment extends Fragment implements OnPokemonListItemSelectedListener 
{
	private String TAG = CollectionDisplayFragment.class.toString();
	private View v; 
	
	private Activity activity;
	LayoutInflater inflater;
	
	private final static int GAME_COLUMN_WIDTH = 150;
	
	private NoFlingHorizontalScrollView headerHorizontalScrollView;
	private NoFlingHorizontalScrollView dataHorizontalScrollView;
	
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
		
		// Setup Scroll Listeners
		
		headerHorizontalScrollView = (NoFlingHorizontalScrollView) v.findViewById(R.id.horizontalScrollviewHeader);
		dataHorizontalScrollView = (NoFlingHorizontalScrollView) v.findViewById(R.id.horizontalScrollviewData);

		dataHorizontalScrollView.setOnTouchListener(new OnTouchListener(){

		    @Override
		    public boolean onTouch(View view, MotionEvent event) {
		        // TODO Auto-generated method stub

		        int scrollX = view.getScrollX();
		        int scrollY = view.getScrollY();

		        headerHorizontalScrollView.scrollTo(scrollX, scrollY);
		                    return false;
		        }
		});
		
		return v;
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
        	
    	// Add Listeners
    	CellClickListener cellClickListener = new CellClickListener(TAG, activity);
    	iconsLayout.setOnClickListener(cellClickListener);
    	iconsLayout.setOnLongClickListener(cellClickListener);
    	
        return iconsLayout;
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
	  		  
	  		  //OnPokemonListItemSelectedListener listener = (OnPokemonListItemSelectedListener) getActivity();
	          OnPokemonListItemSelectedListener listener = (OnPokemonListItemSelectedListener) parent.getParent();
	  		  String name = pokemonListAdapter.getItem(position);
	  		  int pokemonId = Util.arrayIndexOf(pokemonListAdapter.getAllData(), name) + 1;
	  		  listener.onPokemonListItemSelected(Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH));	        	
	       }
	    });
	   
	   listView.setFastScrollEnabled(Config.FAST_SCROLL);
	   listView.setFastScrollAlwaysVisible(Config.FAST_SCROLL_VISIBILITY);
	   listView.setScrollBarStyle(View.SCROLLBARS_OUTSIDE_INSET);
	}
	
	public static void showPopup(final Activity context, Point p, String heading, String content) {
	   // Inflate the popup_layout.xml
	   LinearLayout viewGroup = (LinearLayout) context.findViewById(R.id.popup);
	   LayoutInflater layoutInflater = (LayoutInflater) context
	     .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
	   View layout = layoutInflater.inflate(R.layout.collection_indicator_popup_layout, viewGroup);
	 
	   // Creating the PopupWindow
	   final PopupWindow popup = new PopupWindow(context);
	   popup.setContentView(layout);
	   popup.setFocusable(true);
	 
	   // Clear the default translucent background
	   popup.setBackgroundDrawable(new BitmapDrawable());
	 
		// Displaying the popup at the specified location, + offsets.
		popup.showAtLocation(layout, Gravity.NO_GRAVITY, p.x, p.y);
	   
		// Update Heading and Content
		TextView txtHeading = (TextView) layout.findViewById(R.id.txtPopupHeading);
		TextView txtContent = (TextView) layout.findViewById(R.id.txtPopupContent);
		txtHeading.setText(heading);
		txtContent.setText(content);
	}

	@Override
	public void onPokemonListItemSelected(String id) {
		// TODO Auto-generated method stub
		Log.d(TAG, "[COLLECTION] Selected Pokemon with ID = " + id);
	}
}

class CellClickListener implements OnClickListener, OnLongClickListener {
	private String parentTag = "";
	private Activity context;
	
	CellClickListener(String parentTag, Activity context) {
		this.parentTag = parentTag;
		this.context = context;
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
	
	@Override
	public boolean onLongClick(View v) {
		Log.d(parentTag, "LONG Click" );
		int[] location = new int[2];
		v.getLocationOnScreen(location);
		 
		Point p = new Point();
		p.x = 400;
		p.y = 200;
			
		//Open popup window
		if (p != null) {
			String heading = "Set Indicators";
			String content = "TODO";
			CollectionDisplayFragment.showPopup(context, p, heading, content);
		}
		
       return true;
	}

	public void toggleIndicator(ImageView indicator) {
		int toggledVisibility = (indicator.getVisibility() == View.VISIBLE) ? View.INVISIBLE : View.VISIBLE;
		indicator.setVisibility(toggledVisibility);
	}
	
}

