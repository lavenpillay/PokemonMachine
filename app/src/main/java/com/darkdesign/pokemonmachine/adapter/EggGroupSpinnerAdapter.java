package com.darkdesign.pokemonmachine.adapter;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.widget.ArrayAdapter;

import com.darkdesign.pokemonmachine.element.EggGroup;

public class EggGroupSpinnerAdapter extends ArrayAdapter<EggGroup> {

	ArrayList<EggGroup> values;
	
	public EggGroupSpinnerAdapter(Context context, int textViewResourceId,
			List<EggGroup> values) {
		super(context, textViewResourceId, values);
		
		this.values = (ArrayList<EggGroup>) values;
	}

	/*
	@Override
	 public View getDropDownView(int position, View convertView, ViewGroup parent)
	 {   
	     View row = convertView;
	     if(row == null)
	     {
	         //inflate your customlayout for the textview
	         LayoutInflater inflater = context.getLayoutInflater();
	         row = inflater.inflate(android.R.layout.spinner_layout, parent, false);
	     }
	     
	     //put the data in it
	     String item = data[position];
	     if(item != null)
	     {   
	        TextView text1 = (TextView) row.findViewById(R.id.rowText);
	        text1.setTextColor(Color.WHITE);
	        text1.setText(item);
	     }

	     return row;
	 }
	 */
}
