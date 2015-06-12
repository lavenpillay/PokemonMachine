package com.darkdesign.pokemonmachine.helper;

import java.io.IOException;
import java.io.InputStream;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.widget.ImageView;

public class AssetHelper {
	private Context context;
	private String TAG = AssetHelper.class.getName();
	
	public AssetHelper(Context c) {
		this.context = c;
	}
	
	public Bitmap getBitmapFromAsset(String strName)
	{
	    AssetManager assetManager = context.getAssets();
	    Bitmap bitmap = null;
	    
		try {   
		    InputStream istr = assetManager.open(strName);
		    bitmap = BitmapFactory.decodeStream(istr);
		} catch (IOException ioe) {
			Log.e(TAG, "IO Error loading image asset : " + strName);
		}
	    
	    return bitmap;
	 }
	
	public ImageView getImageViewFromAsset(String imageAssetName) {
		AssetHelper assetHelper = new AssetHelper(context);
		ImageView imageView = new ImageView(context);		
		
		Bitmap bitmap = assetHelper.getBitmapFromAsset(imageAssetName);
		imageView.setImageBitmap(bitmap);
		
		return imageView;
	}
}
