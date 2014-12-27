package com.darkdesign.pokemonmachine.adapter;

import java.util.ArrayList;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.helper.AssetHelper;

public class MoveListAdapter extends ArrayAdapter<Move> {
	private final String TAG = MoveListAdapter.class.getName();

	private Context context;
	private ArrayList<Move> moveList;
	private AssetHelper assetHelper;
	
	
	private Filter nameFilter = new Filter() {
		@Override
		protected FilterResults performFiltering(CharSequence constraint) {
			FilterResults filterResults = new FilterResults();
			
			ArrayList<Move> filteredMoves = new ArrayList<Move>();
			
			if (constraint != null && moveList != null) {
				int length = moveList.size();
				int i=0;
				
				while (i < length) {
					Move move = moveList.get(i);
					
					if (move.getName().toLowerCase().contains(constraint.toString().toLowerCase())) {
						filteredMoves.add(move);
					}
					
					i++;
				}
				
				filterResults.values = filteredMoves;
				filterResults.count = filteredMoves.size();
			}
			
			return filterResults;
		};
		
		@Override 
		protected void publishResults(CharSequence constraint, FilterResults results) {
			moveList = (ArrayList<Move>) results.values;
			
			if (results.count > 0) {
				notifyDataSetChanged();
			} else {
				notifyDataSetInvalidated();
			}
		};
	};

	@Override
	public Filter getFilter() {
		return nameFilter;
	};
	
	public MoveListAdapter(Context context, ArrayList<Move> moves) {
	    super(context, R.layout.list_item_move, moves);
	    this.context = context;
	    this.moveList = moves;
	    assetHelper = new AssetHelper(context);
	}
	
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View rowView = inflater.inflate(R.layout.list_item_move_main, parent, false);
		
		Log.i(TAG, "POSITION: " + position);
		Move move = moveList.get(position); // because of zero-index
		
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		TextView powerTextView = (TextView) rowView.findViewById(R.id.list_item_power);
		TextView ppTextView = (TextView) rowView.findViewById(R.id.list_item_pp);
		TextView accuracyTextView = (TextView) rowView.findViewById(R.id.list_item_accuracy);
		
		ImageView categoryImageView = (ImageView) rowView.findViewById(R.id.list_item_category);
		ImageView typeImageView = (ImageView) rowView.findViewById(R.id.list_item_move_type_image);
		
		// Set TextViews
		nameTextView.setText(move.getName());
		powerTextView.setText(String.valueOf(move.getPower()));
		ppTextView.setText(String.valueOf(move.getPP()));
		accuracyTextView.setText(String.valueOf(move.getAccuracy()));
		
		// Set Images
		Bitmap bm = assetHelper.getBitmapFromAsset("move_class_sprites/" + move.getDamageClass() + ".png");
		categoryImageView.setImageBitmap(bm);
				 
		Bitmap typeBitmap = assetHelper.getBitmapFromAsset("type_images_large/" + move.getType() + ".png");
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
