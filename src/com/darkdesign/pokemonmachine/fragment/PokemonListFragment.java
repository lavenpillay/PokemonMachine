package com.darkdesign.pokemonmachine.fragment;

import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ListView;

import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.SimplePokemonListAdapter;
import com.darkdesign.pokemonmachine.helper.Config;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;

public class PokemonListFragment extends ListFragment {
	private final String TAG = PokemonListFragment.class.getName();
	
	private EditText filterText = null;
	SimplePokemonListAdapter adapter = null;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		
	}
	
	private TextWatcher filterTextWatcher = new TextWatcher() {

	    public void afterTextChanged(Editable s) {
	    }

	    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
	    }

	    public void onTextChanged(CharSequence s, int start, int before, int count) {
	        adapter.getFilter().filter(s);
	    }

	};
	
	@Override
	  public void onActivityCreated(Bundle savedInstanceState) {
	    super.onActivityCreated(savedInstanceState);
	    
		String[] names = getResources().getStringArray(R.array.pokemon_names);
		adapter = new SimplePokemonListAdapter(getActivity(), names);
		
		filterText = (EditText) getActivity().findViewById(R.id.txtFilter);
	    filterText.addTextChangedListener(filterTextWatcher);
	    
	    setListAdapter(adapter);
	    
	    getListView().setFastScrollEnabled(Config.FAST_SCROLL);
	    getListView().setFastScrollAlwaysVisible(Config.FAST_SCROLL_VISIBILITY);
	    getListView().setScrollBarStyle(View.SCROLLBARS_OUTSIDE_INSET);
	    
	    //adapter.getFilter().filter("Sand");
	  }

	  @Override
	  public void onListItemClick(ListView l, View v, int position, long id) {
		  Log.i("PokemonListFragment", "Item Clicked");
		  
		  OnPokemonListItemSelectedListener listener = (OnPokemonListItemSelectedListener) getActivity();
		  String name = adapter.getItem(position);
		  int pokemonId = Util.arrayIndexOf(adapter.getAllData(), name) + 1;
		  listener.onPokemonListItemSelected(Util.padLeft(pokemonId, Constants.POKEMON_ID_LENGTH));
		  //listener.onPokemonListItemSelected(Util.padLeft(position+1, GlobalConstants.POKEMON_ID_LENGTH));
	  }
	  
	// Container Activity must implement this interface
	public interface OnPokemonListItemSelectedListener {
	    public void onPokemonListItemSelected(String id);
	}

	@Override
	public void onDestroy() {
	    super.onDestroy();
	    filterText.removeTextChangedListener(filterTextWatcher);
	}	
}
