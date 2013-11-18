package com.darkdesign.pokemonmachine.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.R;
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
		 TextView messageTextView = (TextView)v.findViewById(R.id.txtName);
	     messageTextView.setText(pokemon.getName());
	     
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
	 }
}
