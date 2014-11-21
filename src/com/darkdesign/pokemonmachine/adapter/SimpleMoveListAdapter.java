package com.darkdesign.pokemonmachine.adapter;

import java.util.ArrayList;

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
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.helper.AssetHelper;

public class SimpleMoveListAdapter extends ArrayAdapter<Move> //implements Filterable 
{
	private final String TAG = SimpleMoveListAdapter.class.getName();

	private Context context;
	private ArrayList<Move> moveList;
	private AssetHelper assetHelper;
	
	/*
	Filter myFilter = new Filter() {
        @Override
        protected FilterResults performFiltering(CharSequence constraint) {
         FilterResults filterResults = new FilterResults();   
         ArrayList<Move> tempList = new ArrayList<Move>();
         //constraint is the result from text you want to filter against. 
         //objects is your data set you will filter from
         if(constraint != null && moveList != null) {
            int length = moveList.size();
            int i=0;
			while(i<length){
				Move move = moveList.get(i);
				  
				if (move.getName().toLowerCase().startsWith(String.valueOf(constraint))) {
					tempList.add(move);
				}
				
				i++;
			}
			//following two lines is very important
			//as publish result can only take FilterResults objects
			filterResults.values = tempList;
			filterResults.count = tempList.size();
          }
          return filterResults;
      }

      @SuppressWarnings("unchecked")
      @Override
      protected void publishResults(CharSequence contraint, FilterResults results) {
    	  
          moveList = (ArrayList<Move>) results.values;
          if (results.count > 0) {
        	  notifyDataSetChanged();
          } else {
              notifyDataSetInvalidated();
          }  
      }
     };
     
	@Override
	public Filter getFilter() {
		return myFilter;
	}
	*/
	
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
		
		//String name = this.getItem(position).get;
		//int moveId = Util.arrayIndexOf(moveNames, name);
		int moveId = getItem(position).getId();
		Log.d(TAG, "MOVE ID: " + moveId);
		Move move = getItem(position);
		
		// Set Name
		TextView nameTextView = (TextView) rowView.findViewById(R.id.list_item_name);
		TextView powerTextView = (TextView) rowView.findViewById(R.id.list_item_power);
		TextView ppTextView = (TextView) rowView.findViewById(R.id.list_item_pp);
		TextView accuracyTextView = (TextView) rowView.findViewById(R.id.list_item_accuracy);
		
		ImageView categoryImageView = (ImageView) rowView.findViewById(R.id.list_item_category);
		ImageView typeImageView = (ImageView) rowView.findViewById(R.id.list_item_move_type_image);
		
		nameTextView.setText(move.getName());
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

	public void setMoveList(ArrayList<Move> moveList) {
		this.moveList = moveList;
	}

	public ArrayList<Move> getMoveList() {
		return moveList;
	}
}
