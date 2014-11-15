package com.darkdesign.pokemonmachine.fragment;

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
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimpleItemListAdapter;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Item;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class ItemDisplayFragment extends Fragment {
	private String TAG = ItemDisplayFragment.class.toString();
	private View v;
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
		    
		Log.d(TAG, "PokemonListFragment.onActivityCreated() - Called");
		
		//adapter.getFilter().filter("Sand");
	}
	
	
	 @Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		 this.inflater = inflater;
		 v = inflater.inflate(R.layout.fragment_items, container, false);
	   

	   this.assetHelper = new AssetHelper((PokemonMachineActivity)getActivity());
	   
	   applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)getActivity());
	   
	   filterText = (EditText) v.findViewById(R.id.txtFilter);
	   filterText.addTextChangedListener(filterTextWatcher);
	   
	   // Handle Pokemon List
	   String[] names = PokemonMachineActivity.db.getItemNames();
	   itemsListAdapter = new SimpleItemListAdapter(getActivity(), names);
	   
		
	   ListView listView = (ListView) v.findViewById(R.id.plist);
	   listView.setAdapter(itemsListAdapter);
	   listView.invalidate();
	   
	   listView.setOnItemClickListener(new OnItemClickListener() {
	        public void onItemClick(AdapterView<?> parent, View view,
	                int position, long id) {

	          Log.i(TAG, "Item Clicked");

	          // TODO re-implment the listener
	          /*
	  		  OnPokemonListItemSelectedListener listener = (OnPokemonListItemSelectedListener) this;
	  		  String name = pokemonListAdapter.getItem(position);
	  		  int pokemonId = Util.arrayIndexOf(pokemonListAdapter.getAllData(), name) + 1;
	  		  listener.onPokemonListItemSelected(Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH));
	  		  */	        
	          
	         // TODO Main stuff here
	         String nameToCheck = (String) parent.getItemAtPosition(position);
	         int itemId = Util.arrayIndexOf(PokemonMachineActivity.db.getItemNames(), nameToCheck) + 1; // because of zero-index
	         update(PokemonMachineActivity.cache.getItemById(itemId));
	       }
	    });
	   
	   listView.setFastScrollEnabled(Config.FAST_SCROLL);
	   listView.setFastScrollAlwaysVisible(Config.FAST_SCROLL_VISIBILITY);
	   listView.setScrollBarStyle(View.SCROLLBARS_OUTSIDE_INSET);
	   
		// Select default ITEM
		update(PokemonMachineActivity.cache.getItemById(1));

		return v;
	 }
	 
	 public void update(Item item) {
		 
		LinearLayout mainInfoArea = (LinearLayout) v.findViewById(R.id.mainInfoArea);
		LinearLayout additionalInfoArea = (LinearLayout) v.findViewById(R.id.additonalInfoArea);
		 
		 // Add Item image - scaled
		String filename = "items/" + item.getIdentifier();
		ImageView itemView = (ImageView)v.findViewById(R.id.imgItem);
		Bitmap bmp = assetHelper.getBitmapFromAsset(filename + ".png");
		bmp = Bitmap.createScaledBitmap(bmp, bmp.getWidth()*Constants.ITEM_IMAGE_SCALE_MULTIPLIER, bmp.getHeight()*Constants.ITEM_IMAGE_SCALE_MULTIPLIER, false);
		itemView.setImageBitmap(bmp);
		 
		//clear current content
		mainInfoArea.removeAllViews();
		additionalInfoArea.removeAllViews();
		 
		LinearLayout descriptionText = (LinearLayout)inflater.inflate( R.layout.card_entry, null );
			
		TextView txtItemName = (TextView) descriptionText.findViewById(R.id.heading);
		txtItemName.setText(item.getName());
		 
		TextView txtDescription = (TextView) descriptionText.findViewById(R.id.content);
		txtDescription.setText(item.getDescription());
		 
		mainInfoArea.addView(descriptionText);
		 
		// Check category and update Additional information
		// +---- Set common information
		LinearLayout categoryText = (LinearLayout)inflater.inflate( R.layout.card_entry, null );
			
		TextView txtCategoryTitle = (TextView) categoryText.findViewById(R.id.heading);
		txtCategoryTitle.setText("Category");
		 
		TextView txtCategory = (TextView) categoryText.findViewById(R.id.content);
		txtCategory.setText(item.getCategory().getName());
		txtCategory.setTextSize(TypedValue.COMPLEX_UNIT_PT, 9);
		 
		additionalInfoArea.addView(categoryText);
		 
		 if (item.getCategory().getIdentifier().equalsIgnoreCase(Constants.ITEM_CATEGORY_SPECIAL_BALLS) ||
			 item.getCategory().getIdentifier().equalsIgnoreCase(Constants.ITEM_CATEGORY_STANDARD_BALLS)) {
			 
			 LinearLayout catchRateText = (LinearLayout)inflater.inflate( R.layout.card_entry, null );
				
			 TextView txtCatchRateTitle = (TextView) catchRateText.findViewById(R.id.heading);
			 txtCatchRateTitle.setText("Capture Information");
			 
			 TextView txtCatchRateContent = (TextView) catchRateText.findViewById(R.id.content);
			 txtCatchRateContent.setText(item.getAdditionalInfo());
			 
			 mainInfoArea.addView(catchRateText);
		 }
	 }
}
