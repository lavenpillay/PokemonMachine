package com.darkdesign.pokemonmachine.fragment;

import java.util.ArrayList;

import android.app.ListFragment;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ListView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimpleMoveListAdapter;
import com.darkdesign.pokemonmachine.element.Move;
import com.tjerkw.slideexpandable.library.SlideExpandableListAdapter;

public class MoveListFragment extends ListFragment {
	private final String TAG = MoveListFragment.class.getName();

	@Override
	public void onCreate(Bundle savedInstanceState) {
		Log.i(TAG, "onCreate()");
		super.onCreate(savedInstanceState);
	}

	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		Log.i(TAG, "onActivityCreated()");
		super.onActivityCreated(savedInstanceState);

		
        
	}
	
	public void updateMoveList(ArrayList<Move> moves) {
		//movesData = moves;
		//adapter.notifyDataSetChanged();
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
