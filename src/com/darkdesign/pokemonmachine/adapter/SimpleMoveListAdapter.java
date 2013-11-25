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

public class SimpleMoveListAdapter extends ArrayAdapter<String> {
	private final String TAG = SimpleMoveListAdapter.class.getName();

	private final Context context;
	private final String[] values;
	
	public SimpleMoveListAdapter(Context context, String[] values) {
	    super(context, R.layout.list_item_move, values);
	    this.context = context;
	    this.values = values;
	}
	
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View rowView = inflater.inflate(R.layout.list_item_move, parent, false);
		
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		ImageView imageView = (ImageView) rowView.findViewById(R.id.list_item_image);
		//nameTextView.setText(values[position]);
		nameTextView.setText("Move Name Goes Here");
		
		String id = Util.padLeft((position+1), GlobalConstants.POKEMON_ID_LENGTH);
		
		// Set icon
		try {
			AssetHelper assetHelper = new AssetHelper(context);
			Bitmap bm = assetHelper.getBitmapFromAsset("move_class_sprites/physical.png");
			imageView.setImageBitmap(bm);
		} catch (IOException ioe) {
			 Log.e(TAG, ioe.toString());
		}

    return rowView;
  }

}
