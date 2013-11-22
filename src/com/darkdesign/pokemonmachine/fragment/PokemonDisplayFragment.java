package com.darkdesign.pokemonmachine.fragment;

import java.io.IOException;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.GlobalConstants;
import com.darkdesign.pokemonmachine.helper.Util;
import com.darkdesign.pokemonmachine.pokedex.element.Pokemon;

public class PokemonDisplayFragment extends Fragment {
	public static final String EXTRA_MESSAGE = "EXTRA_MESSAGE";
	
	private View v; 

	public static final PokemonDisplayFragment newInstance(String message)
	{
		PokemonDisplayFragment f = new PokemonDisplayFragment();
		Bundle bdl = new Bundle(1);
		bdl.putString(EXTRA_MESSAGE, message);
		f.setArguments(bdl);
		
	 	return f;
	}

	 

	 @Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

	   v = inflater.inflate(R.layout.fragment_display_pokemon, container, false);

	   return v;
	 }
	 
	 public void update(Pokemon pokemon) {
		 // Set Image
		 AssetHelper assetHelper = new AssetHelper((PokemonMachineActivity)getActivity());
		 
		 ImageView i;
		 try {
			 String id = Util.padLeft(String.valueOf(pokemon.getId()), GlobalConstants.POKEMON_ID_LENGTH);
			 Bitmap bm = assetHelper.getBitmapFromAsset("pokemon_images/" + id + ".png");
			 i = (ImageView)v.findViewById(R.id.imageView1);
			 i.setImageBitmap(bm);			 
		 } catch (IOException ioe) {
			 Log.e(getTag(), ioe.toString());
		 }

		 TextView idTextView = (TextView)v.findViewById(R.id.txtID);
	     idTextView.setText("#" + String.valueOf(pokemon.getId()));
		 
		 TextView nameTextView = (TextView)v.findViewById(R.id.txtName);
	     nameTextView.setText(pokemon.getName());
	     
	     TextView speciesTextView = (TextView)v.findViewById(R.id.txtSpecies);
	     speciesTextView.setText(pokemon.getSpecies());
	     
	     TextView attackTextView = (TextView)v.findViewById(R.id.txtATK);
	     attackTextView.setText(String.valueOf(pokemon.getAttack()));
	     
	     TextView defenseTextView = (TextView)v.findViewById(R.id.txtDEF);
	     defenseTextView.setText(String.valueOf(pokemon.getDefense()));
	     
	     TextView spAttackTextView = (TextView)v.findViewById(R.id.txtSPATK);
	     spAttackTextView.setText(String.valueOf(pokemon.getSpAtk()));
	     
	     TextView spDefenseTextView = (TextView)v.findViewById(R.id.txtSPDEF);
	     spDefenseTextView.setText(String.valueOf(pokemon.getSpDef()));
	     
	     TextView speedTextView = (TextView)v.findViewById(R.id.txtSPD);
	     speedTextView.setText(String.valueOf(pokemon.getSpeed()));
	     
	     TextView evTextView = (TextView)v.findViewById(R.id.txtEVYield);
	     evTextView.setText(String.valueOf(pokemon.getEvYield()));
	     
	     TextView heightTextView = (TextView)v.findViewById(R.id.txtHeight);
	     heightTextView.setText(String.valueOf(pokemon.getHeight()));
	     
	     TextView weightTextView = (TextView)v.findViewById(R.id.txtWeight);
	     weightTextView.setText(String.valueOf(pokemon.getWeight()));
	 }
}
