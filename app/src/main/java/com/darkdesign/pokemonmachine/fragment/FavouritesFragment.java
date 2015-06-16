package com.darkdesign.pokemonmachine.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.darkdesign.pokemonmachine.R;

/**
 * Created by darkness on 2015/06/16.
 */
public class FavouritesFragment extends Fragment {

    private String TAG = FavouritesFragment.class.getName();

    private View view;


    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Log.i(TAG, "onCreateView() - Called");

        view = inflater.inflate(R.layout.fragment_favourites, container, false);

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
}
