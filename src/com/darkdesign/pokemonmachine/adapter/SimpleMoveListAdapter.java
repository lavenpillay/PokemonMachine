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
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Util;

public class SimpleMoveListAdapter extends ArrayAdapter<String> {
	private final String TAG = SimpleMoveListAdapter.class.getName();

	private Context context;
	private String[] values;
	
	private AssetHelper assetHelper;
	private SharedPreferences applicationSettings;
	
	private ArrayList<Move> moves;

	public SimpleMoveListAdapter(Context context, String[] values) {
		super(context, R.layout.list_item_move_main, values);
	    this.context = context;
	    this.values = values;
	    
	    assetHelper = new AssetHelper(context);
	    this.moves = PokemonMachineActivity.cache.getAllMoves();
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		
		applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)context);
		
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View rowView = inflater.inflate(R.layout.list_item_move_main, parent, false);
		
		String name = this.getItem(position);
		int moveId = Util.arrayIndexOf(values, name);
		Move move = moves.get(moveId);
		
		// Set Name
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		TextView powerTextView = (TextView) rowView.findViewById(R.id.list_item_power);
		TextView ppTextView = (TextView) rowView.findViewById(R.id.list_item_pp);
		TextView accuracyTextView = (TextView) rowView.findViewById(R.id.list_item_accuracy);
		
		ImageView categoryImageView = (ImageView) rowView.findViewById(R.id.list_item_category);
		ImageView typeImageView = (ImageView) rowView.findViewById(R.id.list_item_move_type_image);
		
		nameTextView.setText(name);
		powerTextView.setText(String.valueOf(move.getPower()));
		ppTextView.setText(String.valueOf(move.getPP()));
		accuracyTextView.setText(String.valueOf(move.getAccuracy()));

		// Set Images
		Bitmap bmp = assetHelper.getBitmapFromAsset("move_class_sprites/" + move.getDamageClass() + ".png");
		categoryImageView.setImageBitmap(bmp);
				 
		Bitmap typeBitmap = assetHelper.getBitmapFromAsset("type_images_medium/" + move.getType() + ".png");
		typeImageView.setImageBitmap(typeBitmap);
		
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
