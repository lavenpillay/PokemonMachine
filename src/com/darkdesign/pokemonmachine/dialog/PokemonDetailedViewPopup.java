package com.darkdesign.pokemonmachine.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Util;

public class PokemonDetailedViewPopup extends PopupWindow {
	
	int popupWidth = 650;
	int popupHeight = 700;
	
	private AssetHelper assetHelper;

	public PokemonDetailedViewPopup() {

	}

	public PokemonDetailedViewPopup(Context context, View layout, int pokemonId) {
		super(context);
		setWidth(popupWidth);
		setHeight(popupHeight);
		setFocusable(true);
		
		// Clear the default translucent background
		setBackgroundDrawable(new BitmapDrawable());
				
		assetHelper = new AssetHelper(context);
		
		LinearLayout mainLayout = (LinearLayout) layout.findViewById(R.id.pokemonDetailedView);
		
		// Add Image
		//ImageView pokemonArt = assetHelper.getImageViewFromAsset("pokemon_images/" + Util.padLeft(String.valueOf(pokemonId), 3) + ".png");
		ImageView pokemonArt = (ImageView) layout.findViewById(R.id.imgPokemonArtBig);
		Bitmap bmp = assetHelper.getBitmapFromAsset("pokemon_images/" + Util.padLeft(String.valueOf(pokemonId), 3) + ".png");
		pokemonArt.setImageBitmap(bmp);
		
		//mainLayout.addView(pokemonArt);
		
	}

	public int getPopupWidth() {
		return popupWidth;
	}

	public void setPopupWidth(int popupWidth) {
		this.popupWidth = popupWidth;
	}

	public int getPopupHeight() {
		return popupHeight;
	}

	public void setPopupHeight(int popupHeight) {
		this.popupHeight = popupHeight;
	}

}
