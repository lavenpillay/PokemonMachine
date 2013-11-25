package com.darkdesign.pokemonmachine.fragment;

import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.util.Log;
import android.view.View;
import android.widget.ListView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimpleMoveListAdapter;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.helper.GlobalConstants;
import com.darkdesign.pokemonmachine.helper.Util;

public class MoveListFragment extends ListFragment {
	private final String TAG = MoveListFragment.class.getName();
	
	@Override
	  public void onActivityCreated(Bundle savedInstanceState) {
	    super.onActivityCreated(savedInstanceState);
	    
        String[] names = getResources().getStringArray(R.array.type_names);
	    
	    SimpleMoveListAdapter adapter = new SimpleMoveListAdapter(getActivity(), names);
	    
	    setListAdapter(adapter);
	  }

	  @Override
	  public void onListItemClick(ListView l, View v, int position, long id) {
		  // do something with the data
		  Log.i(TAG, "Item Clicked");
		  
		  //OnPokemonListItemSelectedListener listener = (OnPokemonListItemSelectedListener) getActivity();
		  //listener.onPokemonListItemSelected(Util.padLeft(position+1, GlobalConstants.POKEMON_ID_LENGTH));
	  }
	  
	// Container Activity must implement this interface
	public interface OnMoveListItemSelectedListener {
	    public void onMoveListItemSelected(String id);
	}

}
