package com.darkdesign.pokemonmachine.adapter;


import java.util.ArrayList;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class SimplePokemonListAdapter extends ArrayAdapter<String> implements SectionIndexer {
	private final String TAG = SimplePokemonListAdapter.class.getName();

	private Context context;
	private String[] values;
	
	private AssetHelper assetHelper;
	private DatabaseHelper db;
	private SharedPreferences applicationSettings;
	
	public SimplePokemonListAdapter(Context context, String[] values) {
	    super(context, R.layout.list_item_pokemon, values);
	    this.context = context;
	    this.values = values;
	    
	    assetHelper = new AssetHelper(context);
	    //db = new DatabaseHelper(context);
	    db = PokemonMachineActivity.db;
	}
	
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		
		applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)context);
		
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View rowView = inflater.inflate(R.layout.list_item_pokemon, parent, false);

		String name = this.getItem(position);
		int pokemonId = Util.arrayIndexOf(values, name) + 1; // because of zero-index
		
		//Pokemon pokemon = PokemonMachineActivity.cache.getPokemon(pokemonId);
		ArrayList<Type> pokemonTypes = db.getPokemonTypes(pokemonId); 

		// Set ID 
		TextView idTextView = (TextView) rowView.findViewById(R.id.list_item_id);
		idTextView.setText(String.valueOf(pokemonId));
		
		// Set Name
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		nameTextView.setText(name);
		
		// Set Type(s)
		ImageView imageType1 = (ImageView) rowView.findViewById(R.id.list_item_type1);
		ImageView imageType2 = (ImageView) rowView.findViewById(R.id.list_item_type2);
		
		
		// Set icon and types
		String id = Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH);
		Bitmap bm = assetHelper.getBitmapFromAsset("pokemon_icons/" + id + ".png");
		
		ImageView imageView = (ImageView) rowView.findViewById(R.id.list_item_image);
		imageView.setImageBitmap(bm);
		
		
		if (applicationSettings.getBoolean("pref_types_in_list", true)) {
			Bitmap bmType1 = assetHelper.getBitmapFromAsset("type_images_medium/" + pokemonTypes.get(0).getName() + ".png");
			imageType1.setImageBitmap(bmType1);
			
			if (pokemonTypes.size() > 1) {
				Bitmap bmType2 = assetHelper.getBitmapFromAsset("type_images_medium/" + pokemonTypes.get(1).getName() + ".png");
				imageType2.setImageBitmap(bmType2);
			}
		}
		

    return rowView;
  }
	
	public String[] getAllData() {
		return values;
	}

	@Override
	public int getPositionForSection(int arg0) {
		
		return (arg0 + 1) * 100;
	}

	@Override
	public int getSectionForPosition(int arg0) {
		
		return (arg0 + 1) / 100;
	}

	@Override
	public Object[] getSections() {
		Integer[] sections = {1,2,3,4,5,6};
		return sections;
	}

}
