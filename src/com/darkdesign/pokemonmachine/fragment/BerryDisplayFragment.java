package com.darkdesign.pokemonmachine.fragment;

import java.io.IOException;
import java.util.ArrayList;

import android.app.Fragment;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.Berry;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.layout.FlowLayout;
import com.darkdesign.pokemonmachine.layout.FlowLayout.LayoutParams;

public class BerryDisplayFragment extends Fragment {
	private String TAG = BerryDisplayFragment.class.toString();
	private View v; 
	
	@Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		Log.v(TAG, "Enter : onCreateView()");

		v = inflater.inflate(R.layout.fragment_berry_main, container, false);
		Context activity = getActivity();
		
		FlowLayout berryHolder = (FlowLayout) v.findViewById(R.id.berryHolder);
		
		ArrayList<Berry> berryList = PokemonMachineActivity.cache.getBerryList();
		
		for (int i=0; i < berryList.size(); i++) {
			//ImageView Setup
	        ImageView imageView = new ImageView(activity);
	
	        // Set icon
 			AssetHelper assetHelper = new AssetHelper(activity);
 			Bitmap bm = assetHelper.getBitmapFromAsset("berry_images/" + berryList.get(i).getBerryName() + ".png");
 			imageView.setImageBitmap(bm);
 			
	        //setting image position
	        imageView.setLayoutParams(new LayoutParams(
				LayoutParams.WRAP_CONTENT,
				LayoutParams.WRAP_CONTENT));
	
	        //adding view to layout
	        //container.addView(imageView);
	        berryHolder.addView(imageView);
		}
		
		return v;
	 }
	
	

}
