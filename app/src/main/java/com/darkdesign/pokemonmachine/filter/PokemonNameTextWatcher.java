package com.darkdesign.pokemonmachine.filter;

import android.text.Editable;
import android.text.TextWatcher;

import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment;

/**
 * Created by darkness on 2015/06/18.
 */
public class PokemonNameTextWatcher implements TextWatcher {

    public void afterTextChanged(Editable s) {
    }

    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
    }

    public void onTextChanged(CharSequence s, int start, int before, int count) {
        if (s.length() > 0) {
            PokemonDisplayFragment.pokemonListAdapter.getFilter().filter(s);
        } else if (s.length() == 0) {
            PokemonDisplayFragment.pokemonListAdapter.getFilter().filter("");
        }
    }
}

