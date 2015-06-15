package com.darkdesign.pokemonmachine.adapter;

import java.util.ArrayList;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Parser;

public class PokemonMoveListAdapter extends ArrayAdapter<Move> {
	private final String TAG = PokemonMoveListAdapter.class.getName();

	private Context context;
	private ArrayList<Move> moveList;
	private AssetHelper assetHelper;
	
	public PokemonMoveListAdapter(Context context, ArrayList<Move> moves) {
	    super(context, R.layout.list_item_move, moves);
	    this.context = context;
	    this.moveList = moves;
	    assetHelper = new AssetHelper(context);
	}
	
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View rowView = inflater.inflate(R.layout.list_item_move, parent, false);
		
		Move move = moveList.get(position);
		
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		TextView powerTextView = (TextView) rowView.findViewById(R.id.list_item_power);
		TextView ppTextView = (TextView) rowView.findViewById(R.id.list_item_pp);
		TextView accuracyTextView = (TextView) rowView.findViewById(R.id.list_item_accuracy);
		TextView levelTextView = (TextView) rowView.findViewById(R.id.list_item_level);
		TextView description = (TextView) rowView.findViewById(R.id.txt_move_description);
		
		ImageView categoryImageView = (ImageView) rowView.findViewById(R.id.list_item_category);
		ImageView typeImageView = (ImageView) rowView.findViewById(R.id.list_item_move_type_image);
		
		if (move.getMethod().getId() == Constants.MOVE_LEARN_TYPE_LEVEL_UP) {
			levelTextView.setText(String.valueOf(move.getLevel()));
		} else {
			levelTextView.setText("");
		}
		
		// Set TextViews
		nameTextView.setText(move.getName());
		powerTextView.setText(String.valueOf(move.getPower()));
		ppTextView.setText(String.valueOf(move.getPP()));
		accuracyTextView.setText(String.valueOf(move.getAccuracy()));
		description.setText(Parser.parseMoveDescription(move));
		
		// Set Images
		Bitmap bm = assetHelper.getBitmapFromAsset("move_class_sprites/" + move.getDamageClass() + ".png");
		categoryImageView.setImageBitmap(bm);

		Bitmap typeBitmap = assetHelper.getBitmapFromAsset("type_images_medium/" + move.getType() + ".png");
		typeImageView.setImageBitmap(typeBitmap);
		
    return rowView;
  }

	public void setMoveList(ArrayList<Move> moveList) {
		this.moveList = moveList;
	}

	public ArrayList<Move> getMoveList() {
		return moveList;
	}
	
}
