package com.darkdesign.pokemonmachine.fragment;

import java.io.IOException;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.helper.AssetHelper;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;

public class BerryDisplayFragment extends Fragment {
	private String TAG = BerryDisplayFragment.class.toString();
	private View v; 
	
	@Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		Log.v(TAG, "Enter : onCreateView()");

		v = inflater.inflate(R.layout.fragment_berry_main, container, false);
		Context activity = getActivity();
		
		/*
		//ImageView Setup
        ImageView imageView = new ImageView(activity);
        //setting image resource
        //imageView.setImageResource(R.drawable.play);
        // Set icon
     		try {
     			AssetHelper assetHelper = new AssetHelper(activity);
     			Bitmap bm = assetHelper.getBitmapFromAsset("berry_images/aguav-berry.png");
     			imageView.setImageBitmap(bm);
     		} catch (IOException ioe) {
     			 Log.e(TAG, ioe.toString());
     		}
        //setting image position
        imageView.setLayoutParams(new LayoutParams(
			LayoutParams.MATCH_PARENT,
			LayoutParams.WRAP_CONTENT));

        //adding view to layout
        container.addView(imageView);
        //make visible to program
        //setContentView(linearLayout);
		*/
		return v;
	 }
	
	

}
