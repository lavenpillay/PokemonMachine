package com.darkdesign.pokemonmachine.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.helper.Util;

import java.util.ArrayList;

/**
 * Created by darkness on 2015/06/19.
 */
public class FavouritePokemonAdapter extends BaseAdapter {
    private Context context;
    private ArrayList<Integer> selectedItemIds;

    public FavouritePokemonAdapter(Context c) {
        context = c;
        selectedItemIds = new ArrayList<Integer>();
    }


    @Override
    public int getCount() {
        return PokemonMachineActivity.favouritePokemonDBHelper.getFavourites().size();
    }

    @Override
    public Object getItem(int i) {
        return PokemonMachineActivity.cache.getPokemon(PokemonMachineActivity.favouritePokemonDBHelper.getFavourites().get(i)).getId();
    }

    @Override
    public long getItemId(int i) {
        return 0;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        Pokemon pokemon = PokemonMachineActivity.cache.getPokemon(PokemonMachineActivity.favouritePokemonDBHelper.getFavourites().get(i));

        LinearLayout widget = null;

        // Only if this is not a recycled view
        //if (view == null) {
            LayoutInflater inflater;
            inflater = LayoutInflater.from(context);

            widget = (LinearLayout) inflater.inflate(R.layout.favourite_pokemon, viewGroup, false);
       // }

        // Handle selction state
        if (selectedItemIds != null && selectedItemIds.size() > 0) {
            if (selectedItemIds.contains(i)) {
                setStyleSelected(widget);
            } else {
                //widget.setBackgroundColor(Color.TRANSPARENT);
                setStyleUnselected(widget);
            }
        }

        TextView txtName = (TextView)widget.findViewById(R.id.fav_pokemon_name);
        txtName.setText(pokemon.getName());

        ImageView pokemonIcon = (ImageView) widget.findViewById(R.id.fav_pokemon_icon);
        pokemonIcon.setImageBitmap(Util.getPokemonSprite(pokemon.getId()));

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

    public void toggleSelection(int position) {
        selectView(position);
    }

    public void removeSelection() {
        selectedItemIds = new ArrayList<Integer>();
        notifyDataSetChanged();
    }

    public void selectView(int position) {
        if (selectedItemIds.contains(position)) {
            selectedItemIds.remove(new Integer(position));
        } else {
            selectedItemIds.add(new Integer(position));
        }
        notifyDataSetChanged();
    }

    private void setStyleSelected(View view) {
        LinearLayout inner = (LinearLayout) view.findViewById(R.id.favourite_pokemon_inner);
        inner.setBackgroundResource(R.drawable.container_lightblue_round);
    }

    private void setStyleUnselected(View view) {
        LinearLayout inner = (LinearLayout) view.findViewById(R.id.favourite_pokemon_inner);
        inner.setBackgroundResource(R.drawable.container_lightgray_round);
    }
}
