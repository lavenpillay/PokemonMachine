package com.darkdesign.pokemonmachine.fragment;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;

import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class PokemonListFragment extends ListFragment {
	private final String TAG = PokemonListFragment.class.getName();
	
	@Override
	  public void onActivityCreated(Bundle savedInstanceState) {
	    super.onActivityCreated(savedInstanceState);
	    
	    String[] values = new String[] { "Bulbasaur", "Ivysaur", "Venusaur",
	        "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartorlte", "Blastoise"};
	    
	    String[] ids = new String[] { "001", "002", "003", "004", "005", "006", "007", "008", "009"};
	    
	    //ArrayAdapter<String> adapter = new ArrayAdapter<String>(getActivity(), android.R.layout.simple_list_item_1, values);
	    SimplePokemonListAdapter adapter = new SimplePokemonListAdapter(getActivity(), ids);
	    
	    setListAdapter(adapter);
	  }

	  @Override
	  public void onListItemClick(ListView l, View v, int position, long id) {
	    // do something with the data
		  Log.i("PokemonListFragment", "Item Clicked");
		  
		  
	  }


}
