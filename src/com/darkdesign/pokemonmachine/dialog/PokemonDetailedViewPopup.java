package com.darkdesign.pokemonmachine.dialog;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;

public class PokemonDetailedViewPopup extends PopupWindow {
	
	int popupWidth = 650;
	int popupHeight = 700;

	public PokemonDetailedViewPopup() {
		// TODO Auto-generated constructor stub
	}

	public PokemonDetailedViewPopup(Context context, View layout, int pokemonId) {
		super(context);
		// TODO Auto-generated constructor stub
		
		
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
