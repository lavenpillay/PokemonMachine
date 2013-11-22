package com.darkdesign.pokemonmachine.helper;

import java.io.IOException;
import java.io.InputStream;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

public class AssetHelper {
	private Context context;
	
	public AssetHelper(Context c) {
		this.context = c;
	}
	
	public Bitmap getBitmapFromAsset(String strName) throws IOException
	{
	    AssetManager assetManager = context.getAssets();
	    InputStream istr = assetManager.open(strName);
	    Bitmap bitmap = BitmapFactory.decodeStream(istr);
	    return bitmap;
	 }
	

}
