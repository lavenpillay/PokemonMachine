package com.darkdesign.pokemonmachine.adapter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
import com.darkdesign.pokemonmachine.pokedex.element.Move;

public class SimpleMoveListAdapter extends ArrayAdapter<Move> {
	private final String TAG = SimpleMoveListAdapter.class.getName();

	private Context context;
	private ArrayList<Move> moveList;
	
	public SimpleMoveListAdapter(Context context, ArrayList<Move> moves) {
	    super(context, R.layout.list_item_move, moves);
	    this.context = context;
	    this.moveList = moves;
	}

	/*
	@Override
    public int getCount() {
        return moveList.size();
    }
	
	@Override
    public Move getItem(int position) {
        return moveList.get(position);
    }
    */
	
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View rowView = inflater.inflate(R.layout.list_item_move, parent, false);
		
		Move move = moveList.get(position);
		
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		ImageView imageView = (ImageView) rowView.findViewById(R.id.list_item_image);
		
		nameTextView.setText(move.getName());
		
    return rowView;
  }

	public void setMoveList(ArrayList<Move> moveList) {
		this.moveList = moveList;
	}

	public ArrayList<Move> getMoveList() {
		return moveList;
	}
	
}
