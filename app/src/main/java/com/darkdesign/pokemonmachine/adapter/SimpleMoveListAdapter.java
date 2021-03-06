package com.darkdesign.pokemonmachine.adapter;

import java.util.ArrayList;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.helper.AssetHelper;

public class SimpleMoveListAdapter extends ArrayAdapter<Move> 
{
	private final String TAG = SimpleMoveListAdapter.class.getName();

	private Context context;
	private ArrayList<Move> moveList;
	private AssetHelper assetHelper;
	
	public SimpleMoveListAdapter(Context context, ArrayList<Move> moves) {
	    super(context, R.layout.list_item_move, moves);
	    this.context = context;
	    this.moveList = moves;
	    assetHelper = new AssetHelper(context);
	}
	
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		
		//applicationSettings = PreferenceManager.getDefaultSharedPreferences((PokemonMachineActivity)context);
		
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View rowView = inflater.inflate(R.layout.list_item_move_main, parent, false);
		
		Move move = getItem(position);
		
		// Set Name
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		TextView powerTextView = (TextView) rowView.findViewById(R.id.list_item_power);
		TextView ppTextView = (TextView) rowView.findViewById(R.id.list_item_pp);
		TextView accuracyTextView = (TextView) rowView.findViewById(R.id.list_item_accuracy);
		
		ImageView categoryImageView = (ImageView) rowView.findViewById(R.id.list_item_category);
		ImageView typeImageView = (ImageView) rowView.findViewById(R.id.list_item_move_type_image);
		
		String power = (move.getDamageClass().equalsIgnoreCase("non-damaging")) ? "--" : String.valueOf(move.getPower());
		String accuracy = (move.getAccuracy() > 0) ? String.valueOf(move.getAccuracy()) : "--" ;
		
		nameTextView.setText(move.getName());
		powerTextView.setText(power);
		//powerTextView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
		ppTextView.setText(String.valueOf(move.getPP()));
		//ppTextView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
		accuracyTextView.setText(accuracy);
		//accuracyTextView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);

		
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

	public void setMoveList(ArrayList<Move> moveList) {
		this.moveList = moveList;
	}

	public ArrayList<Move> getMoveList() {
		return moveList;
	}
}
