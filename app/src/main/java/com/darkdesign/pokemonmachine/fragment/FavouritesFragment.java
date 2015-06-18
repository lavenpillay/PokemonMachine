package com.darkdesign.pokemonmachine.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.database.FavouritePokemonDatabaseHelper;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.helper.Util;

import java.util.ArrayList;


/**
 * Created by darkness on 2015/06/16.
 */
public class FavouritesFragment extends Fragment {

    private String TAG = FavouritesFragment.class.getName();

    private View view;
    private ViewGroup container;
    private LayoutInflater inflater;


    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Log.i(TAG, "onCreateView() - Called");

        this.container = container;
        this.inflater = inflater;
        view = inflater.inflate(R.layout.fragment_favourites, container, false);

        LinearLayout favouritePokemonHolder = (LinearLayout)view.findViewById(R.id.favourite_pokemon_holder);

        int widgetsPerRow = 3;
        LinearLayout row = null;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);

        FavouritePokemonDatabaseHelper favPokemonDBHelper = new FavouritePokemonDatabaseHelper(getActivity());
        ArrayList<Integer> favouritePokemon = favPokemonDBHelper.getFavourites();

        for (int i=0; i < favouritePokemon.size(); i++) {

            if ((i-1) % widgetsPerRow == 0) {
                row = new LinearLayout(getActivity());
                row.setLayoutParams(layoutParams);
                favouritePokemonHolder.addView(row);
            }

            row.addView(createPokemonWidget(favouritePokemon.get(i)));
        }

        return view;
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }

    @Override
    public void onPause() {
        Log.i(TAG, "onPause() - Called");
        super.onPause();
    }

    @Override
    public void onResume() {
        Log.i(TAG, "onResume() - Called");
        super.onResume();
    }

    public View createPokemonWidget(int pokemonId) {

        Pokemon pokemon = PokemonMachineActivity.cache.getPokemon(pokemonId);

        LinearLayout widget = (LinearLayout)inflater.inflate(R.layout.favourite_pokemon, container, false);

        TextView txtName = (TextView)widget.findViewById(R.id.fav_pokemon_name);
        txtName.setText(pokemon.getName());

        ImageView pokemonIcon = (ImageView) widget.findViewById(R.id.fav_pokemon_icon);
        pokemonIcon.setImageBitmap(Util.getPokemonSprite(pokemonId));

        ImageView type1 = (ImageView)widget.findViewById(R.id.fav_pokemon_type1);
        ImageView type2 = (ImageView)widget.findViewById(R.id.fav_pokemon_type2);

        type1.setImageBitmap(Util.getTypeSprite(pokemon.getTypes().get(0).getName()));

        if (pokemon.getTypes().size() > 1) {
            type2.setImageBitmap(Util.getTypeSprite(pokemon.getTypes().get(1).getName()));
        } else {
            type2.setVisibility(View.GONE);
        }

        return widget;
    }
}
