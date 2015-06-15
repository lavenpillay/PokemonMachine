package com.darkdesign.pokemonmachine.preferences;

import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.support.v4.preference.PreferenceFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.helper.Constants;

public class SettingsFragment extends PreferenceFragment  {

    private ListPreference languagePreference;
	 
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Load the preferences from an XML resource
        addPreferencesFromResource(R.xml.preferences);

        // Get a reference to the preferences
        languagePreference = (ListPreference)getPreferenceScreen().findPreference(Constants.PREF_KEY_LANGUAGE);

    }

    @Override
    public void onResume() {
        super.onResume();

        // Setup the initial values
        languagePreference.setSummary("Current value is " + languagePreference.getEntry().toString());

        languagePreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
            @Override
            public boolean onPreferenceChange(Preference preference, Object o) {
                int value = Integer.parseInt((String)o);

                PokemonMachineActivity.currentLanguage = value;
                languagePreference.setSummary("Current value is " + PokemonMachineActivity.db.getLanguageName(value));

                return true;
               }
        });

    }


    
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onCreateView(inflater, container, savedInstanceState);
        view.setBackgroundColor(Color.LTGRAY);

        return view;
    }
        
}