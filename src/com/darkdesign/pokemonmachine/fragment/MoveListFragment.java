package com.darkdesign.pokemonmachine.fragment;

import java.util.ArrayList;

import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.util.Log;
import android.view.View;
import android.widget.ListView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimpleMoveListAdapter;
import com.darkdesign.pokemonmachine.element.Move;
import com.tjerkw.slideexpandable.library.SlideExpandableListAdapter;

public class MoveListFragment extends ListFragment {
	private final String TAG = MoveListFragment.class.getName();

	public ArrayList<Move> testData = new ArrayList<Move>();	
	public SimpleMoveListAdapter adapter;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		Log.i(TAG, "onCreate()");
		super.onCreate(savedInstanceState);
	}

	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		Log.i(TAG, "onActivityCreated()");
		super.onActivityCreated(savedInstanceState);

		// Create Test Data
		Move testMove1 = new Move();
		testMove1.setName("Test Name 1");
		testMove1.setMethod("Test Learn Type 1");
		testMove1.setResourceURI("/etc");
		
		testData.add(testMove1);
		
		adapter = new SimpleMoveListAdapter(getActivity(), testData);
		
		//setListAdapter(adapter);
		
		
		setListAdapter(new SlideExpandableListAdapter(
                adapter,
                R.id.expandable_toggle_button,
                R.id.expandable
        ));
        
	}
	
	public void updateMoveList(ArrayList<Move> moves) {
		testData = moves;
		adapter.notifyDataSetChanged();
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
