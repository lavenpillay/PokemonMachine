package com.darkdesign.pokemonmachine.dialog;

import java.util.ArrayList;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TableLayout;
import android.widget.TableRow;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class TypeMatchupPopup extends PopupWindow {
	private final String TAG = TypeMatchupPopup.class.getName();
	
	private int SELECTED_COLUMN_COLOR = 0xffdddddd;
	private int SELECTED_ROW_COLOR = 0xffdddddd;
	
	private ArrayList<Type> typeList;
	private AssetHelper assetHelper;
	
	private TableRow attackTypeHeaders;
	private TableRow[] tableRows;
	
	private int currentHighlightedColumn = -1;
	
	private int currentHighlightedRow = - 1;

	int popupWidth = 650;
	int popupHeight = 700;
	int popupHeightOffset = 20;
	
	public TypeMatchupPopup() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 * @param context
	 * @param layout
	 */
	public TypeMatchupPopup(Activity context, View layout) {
		super(context);
		
		setWidth(popupWidth);
		setHeight(popupHeight);
		setFocusable(true);
		
		// Clear the default translucent background
		setBackgroundDrawable(new BitmapDrawable());
		
		assetHelper = new AssetHelper(context);
				
		// Get Data and populate table
		typeList = PokemonMachineActivity.cache.getTypeList();
		tableRows = new TableRow[typeList.size()];
		
		buildTable(context, assetHelper, layout);
	}
	
	/**
	 * 
	 * @param column
	 */
	public void resetColumn(int column) {
		attackTypeHeaders.getChildAt(column + 1).setBackgroundColor(0xffffffff);
		
		for (int i=0; i < tableRows.length; i++) {
			if (i != currentHighlightedRow) {
				ImageView cellImage = (ImageView) tableRows[i].getChildAt(column+1);
				cellImage.setBackgroundResource(R.drawable.simple_grey_border);
			}
		}
	}
	
	/**
	 * 
	 * @param row
	 */
	public void resetRow(int row) {
		tableRows[row].getChildAt(0).setBackgroundColor(0xffffffff);
		
		for (int i=1; i < tableRows[row].getChildCount(); i++) {
			if (i != currentHighlightedColumn + 1) {
				ImageView cellImage = (ImageView) tableRows[row].getChildAt(i);
				cellImage.setBackgroundResource(R.drawable.simple_grey_border);
			}
		}
	}
	
	/**
	 * 
	 * @param column
	 * @param color
	 */
	public void highlightColumn(int column, int color) {
		//attackTypeHeaders.setBackgroundColor(0xff00ff00);
		if (currentHighlightedColumn != -1) {
			resetColumn((currentHighlightedColumn));
		}
		
		currentHighlightedColumn = column;
		
		for (int i=0; i < tableRows.length; i++) {
			ImageView cellImage = (ImageView) tableRows[i].getChildAt(column+1);
			cellImage.setBackgroundColor(color);
		}
	}
	
	/**
	 * 
	 * @param row
	 * @param color
	 */
	public void highlightRow(int row, int color) {
		if (currentHighlightedRow != -1) {
			resetRow((currentHighlightedRow));
		}
		
		currentHighlightedRow = row;
		
		for (int i=1; i < tableRows[row].getChildCount(); i++) {
			ImageView cellImage = (ImageView) tableRows[row].getChildAt(i);
			cellImage.setBackgroundColor(color);
		}
	}
	
	/**
	 * 
	 * @param context
	 * @param assetHelper
	 * @param layout
	 */
	private void buildTable(final Activity context, AssetHelper assetHelper, View layout) {
		
		// Add Top Header Row
		attackTypeHeaders = new TableRow(context);
		attackTypeHeaders.setClickable(true);
		//attackTypeHeaders.setOnClickListener(new OnAttackTypeClickListener());
		
		ImageView spacer = new ImageView(context);
		spacer.setImageResource(R.drawable.spacer_50x50);
		
		attackTypeHeaders.addView(spacer);
		
		// Add Top Row Type Symbols
		for (int i=0; i < typeList.size(); i++) {
			String typeName = typeList.get(i).getName();
			Log.v(TAG, "Trying to load image for Type = " + typeName);
			ImageView typeImage = assetHelper.getImageViewFromAsset("type_images_small/" + typeName + ".png");
			ImageView rotatedImage = Util.rotateImageView(typeImage, 90, context);
			rotatedImage.setPadding(5, 5, 5, 5);
			rotatedImage.setBackgroundResource(R.drawable.simple_grey_border);
			rotatedImage.setTag(i);
			
			rotatedImage.setClickable(true);
			rotatedImage.setOnClickListener(new OnAttackTypeClickListener(this));
			
			attackTypeHeaders.addView(rotatedImage);
		}
		
		TableLayout table = (TableLayout) layout.findViewById(R.id.typeWeaknessTable);
		table.addView(attackTypeHeaders);
		
		// Other Rows
		for (int i=0; i < typeList.size(); i++) {
			TableRow newRow = new TableRow(context);
			LayoutParams layoutParams = new LayoutParams(LayoutParams.MATCH_PARENT, 30);
			newRow.setGravity(Gravity.CENTER_VERTICAL);
			newRow.setLayoutParams(layoutParams);
			newRow.setBackgroundColor(0xFFFFFFFF);
			
			ImageView typeImage = assetHelper.getImageViewFromAsset("type_images_small/" + typeList.get(i).getName() + ".png");
			typeImage.setPadding(5, 5, 5, 5);
			typeImage.setBackgroundResource(R.drawable.simple_grey_border);
			typeImage.setTag(i);
			
			typeImage.setOnClickListener(new OnDefenderTypeClickListener(this));
			
			// Add to view
			newRow.addView(typeImage);
			
			for (int j=0; j < typeList.size(); j++) {
				ImageView damageImage = new ImageView(context);
				damageImage.setBackgroundResource(R.drawable.simple_grey_border);
				
				// calc value
				int attackTypeId = Integer.parseInt(typeList.get(j).getId());
				int defenderTypeId = Integer.parseInt(typeList.get(i).getId());
				int[][] efficacyMatrix = PokemonMachineActivity.cache.getTypeEfficacyMatrix();
				int damageCode = efficacyMatrix[attackTypeId][defenderTypeId];
				//Log.v(TAG, "Attack Type = " + attackTypeId + "; Defender Type = " + defenderTypeId + "; Setting Damage Code = " + damageCode);
				
				int damageImageResourceId = -1;
				
				if (damageCode == Constants.DAMAGE_DOUBLE) {
					damageImageResourceId = R.drawable.damage_double;
				} else if (damageCode == Constants.DAMAGE_HALF) {
					damageImageResourceId = R.drawable.damage_half;
				} else if (damageCode == Constants.DAMAGE_IMMUNE) {
					damageImageResourceId = R.drawable.damage_immune;
				} else if (damageCode == Constants.DAMAGE_REGULAR) {
					damageImageResourceId = R.drawable.spacer_30x30;
				}
				damageImage.setImageResource(damageImageResourceId);
				
				damageImage.setLayoutParams(new TableRow.LayoutParams(TableRow.LayoutParams.WRAP_CONTENT, TableRow.LayoutParams.WRAP_CONTENT));
				damageImage.setPadding(0, 5, 0, 5);
				
				// Add to view
				newRow.addView(damageImage);
			}
			tableRows[i] = newRow;
			
			// Add to view
			table.addView(newRow);
		}
	}		

	class OnAttackTypeClickListener implements OnClickListener {
		private final String TAG = OnAttackTypeClickListener.class.getName();

		private TypeMatchupPopup controller;
		
		public OnAttackTypeClickListener(TypeMatchupPopup controller) {
			this.controller = controller;
		}
		
		@Override
		public void onClick(View v) {
			v.setBackgroundColor(0xffff0000);

			controller.highlightColumn(Integer.parseInt(v.getTag().toString()), SELECTED_COLUMN_COLOR);
		}
	}
	
	class OnDefenderTypeClickListener implements OnClickListener {
		private final String TAG = OnAttackTypeClickListener.class.getName();

		private TypeMatchupPopup controller;
		
		public OnDefenderTypeClickListener(TypeMatchupPopup controller) {
			this.controller = controller;
		}
		
		@Override
		public void onClick(View v) {
			v.setBackgroundColor(0xff00ff00);
			
			controller.highlightRow(Integer.parseInt(v.getTag().toString()), SELECTED_ROW_COLOR);
		}
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

	public int getPopupHeightOffset() {
		return popupHeightOffset;
	}

	public void setPopupHeightOffset(int popupHeightOffset) {
		this.popupHeightOffset = popupHeightOffset;
	}
	
}
