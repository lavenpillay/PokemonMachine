package com.darkdesign.pokemonmachine.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.adapter.FavouritePokemonAdapter;
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
    private LinearLayout row;
    private LinearLayout.LayoutParams layoutParams;
    private GridView favouritePokemonGrid;

    private ArrayList<Integer> favouritePokemon;
    private FavouritePokemonAdapter favouritePokemonAdapter;

    private int widgetsPerRow = 3;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

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
        favouritePokemonAdapter = new FavouritePokemonAdapter(getActivity());


        favouritePokemonGrid = (GridView) view.findViewById(R.id.favourite_pokemon_holder);
        favouritePokemonGrid.setAdapter(favouritePokemonAdapter);
        favouritePokemonGrid.setChoiceMode(GridView.CHOICE_MODE_MULTIPLE_MODAL);
        favouritePokemonGrid.setMultiChoiceModeListener(new AbsListView.MultiChoiceModeListener() {

            @Override
            public void onItemCheckedStateChanged(ActionMode mode,
                                                  int position, long id, boolean checked) {
                // Capture total checked items
                final int checkedCount = favouritePokemonGrid.getCheckedItemCount();
                // Set the CAB title according to total checked items
                mode.setTitle(checkedCount + " Selected");
                // Calls toggleSelection method from ListViewAdapter Class
                favouritePokemonAdapter.toggleSelection(position);
            }

            @Override
            public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
                /*switch (item.getItemId()) {
                    case android.R.drawable.ic_delete:
                        // Calls getSelectedIds method from ListViewAdapter Class
                        SparseBooleanArray selected = listviewadapter
                                .getSelectedIds();
                        // Captures all selected ids with a loop
                        for (int i = (selected.size() - 1); i >= 0; i--) {
                            if (selected.valueAt(i)) {
                                WorldPopulation selecteditem = listviewadapter
                                        .getItem(selected.keyAt(i));
                                // Remove selected items following the ids
                                listviewadapter.remove(selecteditem);
                            }
                        }
                        // Close CAB
                        mode.finish();
                        return true;
                    default:
                        return false;
                }*/

                return false;
            }

            @Override
            public boolean onCreateActionMode(ActionMode mode, Menu menu) {
                mode.getMenuInflater().inflate(R.menu.favourite_pokemon_action_menu, menu);
                return true;
            }

            @Override
            public void onDestroyActionMode(ActionMode mode) {
                // TODO Auto-generated method stub
                favouritePokemonAdapter.removeSelection();
            }

            @Override
            public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
                // TODO Auto-generated method stub
                return false;
            }
        });

        favouritePokemonGrid.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> parent, View v,
                                    int position, long id) {
                Toast.makeText(getActivity(), "Position: " + position, Toast.LENGTH_SHORT).show();
            }
        });


        layoutParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);

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

    @Override
    public void setUserVisibleHint(boolean visible)
    {
        super.setUserVisibleHint(visible);
        if (visible && isResumed())
        {
            //Only manually call onResume if fragment is already visible
            //Otherwise allow natural fragment lifecycle to call onResume
            onResume();
        }
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
