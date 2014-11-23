package com.darkdesign.pokemonmachine.dialog;

import java.util.ArrayList;

import android.app.Activity;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TableRow;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;

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
	
	private View layout;

	int popupWidth = 1070;
	int popupHeight = 1150;
	int popupHeightOffset = 20;
	
	public TypeMatchupPopup() {
	}

	/**
	 * 
	 * @param context
	 * @param layout
	 */
	public TypeMatchupPopup(Activity context, View layout) {
		super(context);
		
		this.layout = (GridLayout) ((LinearLayout)layout).findViewById(R.id.typeWeaknessGridLayout);
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
		GridLayout gridLayout = (GridLayout) layout;
		gridLayout.getChildAt(column).setBackgroundColor(0xffffffff);
		
		for (int i=0; i < gridLayout.getRowCount(); i++) {
			if (i != (currentHighlightedRow + 1)) {
				ImageView cellImage = (ImageView) gridLayout.getChildAt(((i * gridLayout.getRowCount()) + (column + 1)));
				cellImage.setBackgroundResource(R.drawable.simple_grey_border);
			}
		}
	}
	
	/**
	 * 
	 * @param row
	 */
	public void resetRow(int row) {
		GridLayout gridLayout = (GridLayout) layout;
		int startCell = (row + 1) * gridLayout.getColumnCount();
		
		// Reset type name
		//gridLayout.getChildAt((row * gridLayout.getColumnCount()) + 1).setBackgroundColor(0xffffffff);
		gridLayout.getChildAt(startCell).setBackgroundColor(0xffffffff);
		
		for (int i=1; i < gridLayout.getColumnCount(); i++) {
			if (i != (currentHighlightedColumn + 1)) {
				ImageView cellImage = (ImageView) gridLayout.getChildAt(startCell + i);
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
		if (currentHighlightedColumn != -1) {
			resetColumn((currentHighlightedColumn));
		}
		
		currentHighlightedColumn = column;
		GridLayout gridLayout = (GridLayout) layout;
		
		for (int i=0; i < gridLayout.getRowCount(); i++) {
			ImageView cellImage = (ImageView) gridLayout.getChildAt(((i * gridLayout.getRowCount()) + (column + 1)));
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
		GridLayout gridLayout = (GridLayout) layout;
		
		int startCell = (row + 1) * gridLayout.getColumnCount();
		
		for (int i=1; i < gridLayout.getColumnCount(); i++) {
			ImageView cellImage = (ImageView) gridLayout.getChildAt(startCell + i);
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

		//GridLayout gridLayout = (GridLayout) layout;
		
		/*
		// Add Top Header Row
		Space cornerSpace = new Space(context);
		cornerSpace.setLayoutParams(new LayoutParams(30, 30));
		
		gridLayout.addView(cornerSpace);
		*/

		// Add Top Row Type Symbols
		for (int i=0; i < typeList.size(); i++) {
			String typeName = typeList.get(i).getName();
			ImageView typeImage = assetHelper.getImageViewFromAsset("type_images_medium/rotated/" + typeName + ".png");
			typeImage.setBackgroundResource(R.drawable.simple_grey_border);
			typeImage.setPadding(13, 5, 12, 5);
			typeImage.setTag(i);
			
			typeImage.setClickable(true);
			typeImage.setOnClickListener(new OnAttackTypeClickListener(this));
			
			((GridLayout)this.layout).addView(typeImage);
		}

		
		// Other Rows
		for (int i=0; i < typeList.size(); i++) {
			
			ImageView typeImage = assetHelper.getImageViewFromAsset("type_images_medium/" + typeList.get(i).getName() + ".png");
			typeImage.setPadding(5, 13, 5, 12);
			typeImage.setBackgroundResource(R.drawable.simple_grey_border);
			typeImage.setTag(i);
			
			typeImage.setOnClickListener(new OnDefenderTypeClickListener(this));
			
			// Add to view
			((GridLayout)this.layout).addView(typeImage);
			
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
				
				damageImage.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
				damageImage.setPadding(5, 5, 5, 5);
				
				// Add to view
				((GridLayout)this.layout).addView(damageImage);
			}
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
		private final String TAG = OnDefenderTypeClickListener.class.getName();

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
