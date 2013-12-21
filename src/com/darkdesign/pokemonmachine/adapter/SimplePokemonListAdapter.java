package com.darkdesign.pokemonmachine.adapter;


import java.io.IOException;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.GlobalConstants;
import com.darkdesign.pokemonmachine.helper.Util;

public class SimplePokemonListAdapter extends ArrayAdapter<String> {
	private final String TAG = SimplePokemonListAdapter.class.getName();

	private Context context;
	private String[] values;
	
	private AssetHelper assetHelper;
	
	public SimplePokemonListAdapter(Context context, String[] values) {
	    super(context, R.layout.list_item_pokemon, values);
	    this.context = context;
	    this.values = values;
	    
	    assetHelper = new AssetHelper(context);
	}
	
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View rowView = inflater.inflate(R.layout.list_item_pokemon, parent, false);

		String name = this.getItem(position);
		int pokemonId = Util.arrayIndexOf(values, name) + 1; // because of zero-index

		// Set ID 
		TextView idTextView = (TextView) rowView.findViewById(R.id.list_item_id);
		idTextView.setText(String.valueOf(pokemonId));
		
		// Set Name
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		nameTextView.setText(name);
		
		// Set icon
		try {
			String id = Util.padLeft(pokemonId, GlobalConstants.POKEMON_ID_LENGTH);
			Bitmap bm = assetHelper.getBitmapFromAsset("pokemon_icons/" + id + ".png");
			ImageView imageView = (ImageView) rowView.findViewById(R.id.list_item_image);
			imageView.setImageBitmap(bm);
		} catch (IOException ioe) {
			 Log.e(TAG, ioe.toString());
		}

    return rowView;
  }
	
	public String[] getAllData() {
		return values;
	}

}
