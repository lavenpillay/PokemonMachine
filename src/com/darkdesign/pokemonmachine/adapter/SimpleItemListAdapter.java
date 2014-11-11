package com.darkdesign.pokemonmachine.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class SimpleItemListAdapter extends ArrayAdapter<String> {
	private final String TAG = SimpleItemListAdapter.class.getName();

	private Context context;
	private String[] values;
	
	private AssetHelper assetHelper;
	private DatabaseHelper db;
	private SharedPreferences applicationSettings;

	public SimpleItemListAdapter(Context context, String[] values) {
		super(context, R.layout.list_item_item, values);
	    this.context = context;
	    this.values = values;
	    
	    assetHelper = new AssetHelper(context);
	    db = new DatabaseHelper(context);
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		
		applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)context);
		
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View rowView = inflater.inflate(R.layout.list_item_item, parent, false);
	
		/*
		String name = this.getItem(position);
		int pokemonId = Util.arrayIndexOf(values, name) + 1; // because of zero-index
		*/
		
		// Set ID 
		TextView idTextView = (TextView) rowView.findViewById(R.id.list_item_id);
		idTextView.setText(String.valueOf(position));
		
		
		// Set Name
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		nameTextView.setText(values[position]);
		
		// Set icon and types
		String itemName = "";
		
		if ((values[position]).contains("berry")) {
			itemName = "berry_images/" + values[position];
		} else {
			itemName = "items/" + values[position];
		}
		
		Bitmap bm = assetHelper.getBitmapFromAsset(itemName + ".png");
		
		ImageView imageView = (ImageView) rowView.findViewById(R.id.list_item_image);
		imageView.setImageBitmap(bm);
		
		/*
		if (applicationSettings.getBoolean("pref_types_in_list", true)) {
			Bitmap bmType1 = assetHelper.getBitmapFromAsset("type_images_medium/" + pokemon.getTypes().get(0).getName() + ".png");
			imageType1.setImageBitmap(bmType1);
			
			if (pokemon.getTypes().size() > 1) {
				Bitmap bmType2 = assetHelper.getBitmapFromAsset("type_images_medium/" + pokemon.getTypes().get(1).getName() + ".png");
					imageType2.setImageBitmap(bmType2);
				}
			}
		*/
		
	    return rowView;
	}
	
	
}
