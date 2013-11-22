package com.darkdesign.pokemonmachine.fragment;

import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.util.Log;
import android.view.View;
import android.widget.ListView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.helper.GlobalConstants;
import com.darkdesign.pokemonmachine.helper.Util;

public class PokemonListFragment extends ListFragment {
	private final String TAG = PokemonListFragment.class.getName();
	
	@Override
	  public void onActivityCreated(Bundle savedInstanceState) {
	    super.onActivityCreated(savedInstanceState);
	    
        String[] names = getResources().getStringArray(R.array.pokemon_names);
	    
	    SimplePokemonListAdapter adapter = new SimplePokemonListAdapter(getActivity(), names);
	    
	    setListAdapter(adapter);
	  }

	  @Override
	  public void onListItemClick(ListView l, View v, int position, long id) {
		  // do something with the data
		  Log.i("PokemonListFragment", "Item Clicked");
		  
		  OnPokemonListItemSelectedListener listener = (OnPokemonListItemSelectedListener) getActivity();
		  listener.onPokemonListItemSelected(Util.padLeft(position+1, GlobalConstants.POKEMON_ID_LENGTH));
	  }
	  
	// Container Activity must implement this interface
	public interface OnPokemonListItemSelectedListener {
	    public void onPokemonListItemSelected(String id);
	}

}
