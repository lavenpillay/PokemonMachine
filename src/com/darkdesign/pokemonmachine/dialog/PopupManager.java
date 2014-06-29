package com.darkdesign.pokemonmachine.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.helper.Util;
import com.darkdesign.pokemonmachine.layout.FlowLayout;

public class PopupManager {

	public PopupManager() {
		// TODO Auto-generated constructor stub
	}

	// The method that displays the popup.
	public static void showPopup(final Activity context, Point p, String heading, String content) {
	   int popupWidth = 200;
	   int popupHeight = 250;
	 
	   // Inflate the popup_layout.xml
	   LinearLayout viewGroup = (LinearLayout) context.findViewById(R.id.popup);
	   LayoutInflater layoutInflater = (LayoutInflater) context
	     .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
	   View layout = layoutInflater.inflate(R.layout.popup_layout, viewGroup);
	 
	   // Creating the PopupWindow
	   final PopupWindow popup = new PopupWindow(context);
	   popup.setContentView(layout);
	   popup.setWidth(popupWidth);
	   popup.setHeight(popupHeight);
	   popup.setFocusable(true);
	 
	   // Some offset to align the popup a bit to the right, and a bit down, relative to button's position.
	   int OFFSET_X = 10;
	   int OFFSET_Y = 30;
	 
	   // Clear the default translucent background
	   popup.setBackgroundDrawable(new BitmapDrawable());
	 
		// Displaying the popup at the specified location, + offsets.
		popup.showAtLocation(layout, Gravity.NO_GRAVITY, p.x + OFFSET_X, p.y + OFFSET_Y);
	   
		// Update Heading and Content
		TextView txtHeading = (TextView) layout.findViewById(R.id.txtPopupHeading);
		TextView txtContent = (TextView) layout.findViewById(R.id.txtPopupContent);
		txtHeading.setText(heading);
		txtContent.setText(content);

		// Setup Layout Params
		popup.update(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);

		// Getting a reference to Close button, and close the popup when clicked.
		/*
		Button close = (Button) layout.findViewById(R.id.close);
		close.setOnClickListener(new OnClickListener() {
	 
	     @Override
	     public void onClick(View v) {
	       popup.dismiss();
	     }
	   });
	   */
	}	
	
	/**
	 * 
	 * @param context
	 */
	public static void showGameFilterDialog(final Activity context) {
		int popupWidth = 500;
		int popupHeight = 350;

		// Inflate the popup_layout.xml
		LinearLayout viewGroup = (LinearLayout) context.findViewById(R.id.gameFilterDialog);
		LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View layout = layoutInflater.inflate(R.layout.collection_game_filter_popup_layout, viewGroup);
		   
		// Creating the PopupWindow
		final GameFilterDialog popup = new GameFilterDialog(context);
		popup.setContentView(layout);
		popup.setWidth(popupWidth);
		popup.setHeight(popupHeight);
		popup.setFocusable(true);
		 
		// Clear the default translucent background
		popup.setBackgroundDrawable(new BitmapDrawable());
	 
		//LinearLayout gameFilterCheckboxHolder = (LinearLayout) layout.findViewById(R.id.gameFilterCheckboxHolder);
		FlowLayout gameFilterCheckboxHolder = (FlowLayout) layout.findViewById(R.id.gameFilterCheckboxHolder);
		
		// Generate Checkboxes
		Util.generateGameFilterCheckboxes(context, gameFilterCheckboxHolder);
		
		int width = Util.getScreenWidth(context);
		int height = Util.getScreenHeight(context);
		
		int posX = (width / 2) - (popupWidth / 2);
		int posY = (height / 2) - (popupHeight / 2);
		
		// Displaying the popup in the middle of the screen
		popup.showAtLocation(layout, Gravity.NO_GRAVITY, posX, posY);
	
	}
	
	/**
	 * 
	 * @param context
	 */
	public static void showTypeWeaknessPopup(final Activity context) {
		// Inflate the popup_layout.xml
		LinearLayout viewGroup = (LinearLayout) context.findViewById(R.id.typeWeaknessDialog);
		LayoutInflater layoutInflater = (LayoutInflater) context
		   .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View layout = layoutInflater.inflate(R.layout.type_weakness_table_popup_layout, viewGroup);
		   
		// Creating the PopupWindow
		final TypeMatchupPopup popup = new TypeMatchupPopup(context, layout);
		popup.setContentView(layout);
		 
		// Positioning
		int width = Util.getScreenWidth(context);
		int height = Util.getScreenHeight(context);
		
		int posX = (width / 2) - (popup.getPopupWidth() / 2);
		int posY = (height / 2) - (popup.getPopupHeight() / 2) + popup.getPopupHeightOffset();
		
		// Displaying the popup in the middle of the screen
		popup.showAtLocation(layout, Gravity.NO_GRAVITY, posX, posY);
	}
	
	/**
	 * 
	 * @param context
	 */
	public static void showPokemondetailPopup(final Activity context, int pokemonId) {
		// Inflate the popup_layout.xml
		LinearLayout viewGroup = (LinearLayout) context.findViewById(R.id.pokemonDetailedView);
		LayoutInflater layoutInflater = (LayoutInflater) context
		   .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View layout = layoutInflater.inflate(R.layout.pokemon_detailed_view, viewGroup);
		   
		// Creating the PopupWindow
		final PokemonDetailedViewPopup popup = new PokemonDetailedViewPopup(context, layout, pokemonId);
		popup.setContentView(layout);
		 
		// Positioning
		int width = Util.getScreenWidth(context);
		int height = Util.getScreenHeight(context);
		
		int posX = (width / 2) - (popup.getPopupWidth() / 2);
		int posY = (height / 2) - (popup.getPopupHeight() / 2);
		
		// Displaying the popup in the middle of the screen
		popup.showAtLocation(layout, Gravity.NO_GRAVITY, posX, posY);
	}
}
