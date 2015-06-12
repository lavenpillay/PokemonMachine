package com.darkdesign.pokemonmachine.dialog;

import java.util.ArrayList;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.EggGroup;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.layout.FlowLayout;

public class PokemonEggGroupsPopup extends PopupWindow {
	
	private AssetHelper assetHelper;

	public PokemonEggGroupsPopup() {

	}

	public PokemonEggGroupsPopup(Context context, View layout, int eggGroupId) {
		super(context);
		//setWidth(LinearLayout.LayoutParams.WRAP_CONTENT);
		//setHeight(LinearLayout.LayoutParams.WRAP_CONTENT);
		setFocusable(true);
		
		// Clear the default translucent background
		setBackgroundDrawable(new BitmapDrawable());
				
		assetHelper = new AssetHelper(context);
		
		FlowLayout mainLayout = (FlowLayout) layout.findViewById(R.id.pokemonEggGroupView);
		
		ArrayList<EggGroup> eggGroups = PokemonMachineActivity.cache.getEggGroups();
		
		for (EggGroup eggGroup : eggGroups) {
			TextView txtEggGroup = new TextView(context);
			txtEggGroup.setText(eggGroup.getName());
			txtEggGroup.setTextColor(Color.WHITE);
			
			mainLayout.addView(txtEggGroup);
		}
		

	}
}
