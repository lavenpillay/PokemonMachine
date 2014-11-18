package com.darkdesign.pokemonmachine.fragment;

import java.util.ArrayList;

import android.app.Fragment;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimpleItemListAdapter;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Item;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class MoveDisplayFragment extends Fragment {
	private String TAG = MoveDisplayFragment.class.toString();
	private View view;
	private EditText filterText = null;
	
	private AssetHelper assetHelper;
	private DatabaseHelper db;
	private SharedPreferences applicationSettings;
	
	public static SimpleItemListAdapter itemsListAdapter;
	
	private LayoutInflater inflater;
	
	private TextWatcher filterTextWatcher = new TextWatcher() {
		public void afterTextChanged(Editable s) {
	    }

	    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
	    }

	    public void onTextChanged(CharSequence s, int start, int before, int count) {
	    	Log.d(TAG, "[ItemDisplayFragment] Filter Text Changed" + s);
	    	
	    	if (s.length() > 0) {
	    		itemsListAdapter.getFilter().filter(s);
	    	} else if (s.length() == 0) {
	    		itemsListAdapter.getFilter().filter("");
	    	}
	    }
	};

	/**
	 * 
	 */
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		super.onActivityCreated(savedInstanceState);
		    
		Log.i(TAG, "onActivityCreated() - Called");
		
		//adapter.getFilter().filter("Sand");
	}
	
	
	 @Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		 Log.i(TAG, "onCreateView() - Called");
		 
		 this.inflater = inflater;
		 view = inflater.inflate(R.layout.fragment_moves, container, false);
	   

	   this.assetHelper = new AssetHelper((PokemonMachineActivity)getActivity());
	   
	   applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)getActivity());
	   
	   /*
	   filterText = (EditText) view.findViewById(R.id.txtFilter);
	   filterText.addTextChangedListener(filterTextWatcher);
	   
	   // Handle List
	   String[] names = PokemonMachineActivity.db.getItemNames();
	   itemsListAdapter = new SimpleItemListAdapter(getActivity(), names);
	   
		
	   ListView listView = (ListView) view.findViewById(R.id.plist);
	   listView.setAdapter(itemsListAdapter);
	   listView.invalidate();
	   
	   listView.setOnItemClickListener(new OnItemClickListener() {
	        public void onItemClick(AdapterView<?> parent, View view,
	                int position, long id) {

	          Log.i(TAG, "Item Clicked");

	                 
	          
	         String nameToCheck = (String) parent.getItemAtPosition(position);
	         int itemId = Util.arrayIndexOf(PokemonMachineActivity.db.getItemNames(), nameToCheck) + 1; // because of zero-index
	         update(PokemonMachineActivity.cache.getItemById(itemId - 1));
	       }
	    });
	   
	   ImageButton btnClearNameFilter = (ImageButton)view.findViewById(R.id.btnClearNameFilter);
	   btnClearNameFilter.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				EditText edtName = (EditText)view.findViewById(R.id.txtFilter);
				edtName.setText("");
			}
		});
	   
	   listView.setFastScrollEnabled(Config.FAST_SCROLL);
	   listView.setFastScrollAlwaysVisible(Config.FAST_SCROLL_VISIBILITY);
	   listView.setScrollBarStyle(View.SCROLLBARS_OUTSIDE_INSET);
	   */
	   
	   // Select default MOVE
	   //update(PokemonMachineActivity.cache.getItemById(0));

		return view;
	 }
	 
	/**
	 * 
	 * @param moveLearnType
	 */
	private void updateMoveList() {
		/*
		ArrayList<Move> moveToDisplay = pokemon.getMovesByType(moveLearnType);
		
		if (moveLearnType.equalsIgnoreCase(Constants.LEARN_TYPE_LEVEL_UP)) {
			moveSubset = Util.sortMovesByLevel(moveSubset);
		}
		
		PokemonDisplayFragment.movesData.clear();
		PokemonDisplayFragment.movesData.addAll(moveSubset);
		PokemonDisplayFragment.movesListAdapter.notifyDataSetChanged();
		*/
	}
}
