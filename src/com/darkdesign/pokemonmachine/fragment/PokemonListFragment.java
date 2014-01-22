package com.darkdesign.pokemonmachine.fragment;

import android.app.ListFragment;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class PokemonListFragment extends ListFragment {
	private final String TAG = PokemonListFragment.class.getName();
	
	
	public static SimplePokemonListAdapter pokemonListAdapter = null;
	private LayoutInflater inflater;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
	}
	
	@Override
	public void onAttach(android.app.Activity activity) {
		super.onAttach(activity);
		Log.d(TAG, "PokemonListFragment.onAttach() - Called");
	} 
	
	@Override
	  public void onActivityCreated(Bundle savedInstanceState) {
	    super.onActivityCreated(savedInstanceState);
	    
	    Log.d(TAG, "PokemonListFragment.onActivityCreated() - Called");
	    
		String[] names = getResources().getStringArray(R.array.pokemon_names);
		pokemonListAdapter = new SimplePokemonListAdapter(getActivity(), names);
		
	    setListAdapter(pokemonListAdapter);
	    
	    getListView().setFastScrollEnabled(Config.FAST_SCROLL);
	    getListView().setFastScrollAlwaysVisible(Config.FAST_SCROLL_VISIBILITY);
	    getListView().setScrollBarStyle(View.SCROLLBARS_OUTSIDE_INSET);
	    
	    //adapter.getFilter().filter("Sand");
	    
	  }

	  @Override
	  public void onListItemClick(ListView l, View v, int position, long id) {
		  Log.i("PokemonListFragment", "Item Clicked");
		  
		  OnPokemonListItemSelectedListener listener = (OnPokemonListItemSelectedListener) getActivity();
		  String name = pokemonListAdapter.getItem(position);
		  int pokemonId = Util.arrayIndexOf(pokemonListAdapter.getAllData(), name) + 1;
		  listener.onPokemonListItemSelected(Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH));
	  }
	  
	// Container Activity must implement this interface
	public interface OnPokemonListItemSelectedListener {
	    public void onPokemonListItemSelected(String id);
	}

}
