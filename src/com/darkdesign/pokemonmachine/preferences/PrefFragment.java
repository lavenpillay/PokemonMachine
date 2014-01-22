package com.darkdesign.pokemonmachine.preferences;

import android.os.Bundle;
import android.preference.PreferenceFragment;

import com.darkdesign.pokemonmachine.R;

public class PrefFragment extends PreferenceFragment {
	 
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Load the preferences from an XML resource
        addPreferencesFromResource(R.xml.preferences);
    }
    
/*
    // Display the fragment as the main content.
    FragmentManager mFragmentManager = getFragmentManager();
    FragmentTransaction mFragmentTransaction = mFragmentManager.beginTransaction();
    PrefsFragment mPrefsFragment = new PrefsFragment();
    mFragmentTransaction.replace(android.R.id.content, mPrefsFragment);
    mFragmentTransaction.commit();
*/    
}