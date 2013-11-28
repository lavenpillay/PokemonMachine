package com.darkdesign.pokemonmachine.fragment;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.pokedex.element.Pokemon;
import com.darkdesign.pokemonmachine.service.RESTService;


public class PokedexAPIResponderFragment extends RESTResponderFragment {
    private static final String JSON_FIELD_DEFENSE = "defense";

	private static final String JSON_FIELD_ATTACK = "attack";

	private static final String JSON_FIELD_SPECIES = "species";

	private static final String JSON_FIELD_NAME = "name";

	private static String TAG = PokedexAPIResponderFragment.class.getName();
    
    private PokemonMachineActivity activity;
    
    private OnPokemonUpdatedListener mCallback;
    
    private TextView messageTextView;
    private View v;
    
    // We cache our data here so that we can return right away
    // on multiple calls to setTweets() during the Activity lifecycle events (such
    // as when the user rotates their device). In a real application we would want
    // to cache this data in a more sophisticated way, probably using SQLite and
    // Content Providers, but for the demo and simple apps this will do.
    private Pokemon pokemon = null;
    
    @Override
    public void onCreate (Bundle savedInstanceState) {
    	Log.i(TAG, "onCreate()");
    	super.onCreate(savedInstanceState);
    }
    
    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        
        // This gets called each time our Activity has finished creating itself.
        Log.i(TAG, "onActivityCreated()");
    }
    
	 @Override
	 public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		 Log.i(TAG, "onCreateView()");
		 
		 v = inflater.inflate(R.layout.fragment_display_pokemon, container, false);

		 return v;
	 }
    
    @Override
    public void onAttach(Activity activity) {
    	Log.i(TAG, "onAttach()");
    	
        super.onAttach(activity);
        
		this.activity = (PokemonMachineActivity) activity;

        // This makes sure that the container activity has implemented
        // the callback interface. If not, it throws an exception
        try {
            mCallback = (OnPokemonUpdatedListener) activity;
        } catch (ClassCastException e) {
            throw new ClassCastException(activity.toString()
                    + " must implement OnPokemonUpdatedListener");
        }
    }    
    
    private void setPokemon() {
        activity = (PokemonMachineActivity) getActivity();
        
        if (pokemon == null && activity != null) {
            // This is where we make our REST call to the service. We also pass in our ResultReceiver
            // defined in the RESTResponderFragment super class.
            
            // We will explicitly call our Service since we probably want to keep it as a private
            // component in our app. You could do this with Intent actions as well, but you have
            // to make sure you define your intent filters correctly in your manifest.
            Intent intent = new Intent(activity, RESTService.class);
            // @TODO fix this hard-coded URL
            intent.setData(Uri.parse("http://pokeapi.co/api/v1/pokemon/1/"));  
            
            // Here we are going to place our REST call parameters. Note that
            // we could have just used Uri.Builder and appendQueryParameter()
            // here, but I wanted to illustrate how to use the Bundle params.
            Bundle params = new Bundle();
            params.putString("q", "android");
            
            intent.putExtra(RESTService.EXTRA_PARAMS, params);
            intent.putExtra(RESTService.EXTRA_RESULT_RECEIVER, getResultReceiver());
            
            // Here we send our Intent to our RESTService.
            activity.startService(intent);
        }
        else if (activity != null) {
            // Here we check to see if our activity is null or not.
            // We only want to update our views if our activity exists.
        	
        	OnPokemonUpdatedListener listener = (OnPokemonUpdatedListener) activity;
        	listener.onPokemonUpdated(pokemon);
        }
    }
    
    @Override
    public void onRESTResult(int code, String result) {
        // Here is where we handle our REST response. This is similar to the 
        // LoaderCallbacks<D>.onLoadFinished() call from the previous tutorial.
        
        // Check to see if we got an HTTP 200 code and have some data.
        if (code == 200 && result != null) {
            
            // For really complicated JSON decoding I usually do my heavy lifting
            // with Gson and proper model classes, but for now let's keep it simple
            // and use a utility method that relies on some of the built in
            // JSON utilities on Android.
        	Log.i(TAG, "Received Result from REST Request");
        	pokemon = new Pokemon();
            pokemon = getPokemonFromJson(result);
            setPokemon();
        }
        else {
            Activity activity = getActivity();
            if (activity != null) {
                Toast.makeText(activity, "Failed to load Twitter data. Check your internet settings.", Toast.LENGTH_SHORT).show();
            }
        }
    }
    
    // Container Activity must implement this interface
    public interface OnPokemonUpdatedListener {
        public void onPokemonUpdated(Pokemon pokemon);
    }

    private Pokemon getPokemonFromJson(String json) {
    	JSONObject pokemonWrapper;
    	
        try {
        	      	
        	pokemonWrapper = new JSONObject(json);
        	//String testData = getResources().getString(R.string.testData);
        	//pokemonWrapper = new JSONObject(testData);
        			
            Log.i(TAG, "Checking Abilities...");
            JSONArray jArray = pokemonWrapper.getJSONArray("abilities");
            String pId = pokemonWrapper.getString("national_id");
            String pName = pokemonWrapper.getString(JSON_FIELD_NAME);
            String pSpecies = pokemonWrapper.getString(JSON_FIELD_SPECIES);
            
            String pHP = pokemonWrapper.getString("hp");
            String pAttack = pokemonWrapper.getString(JSON_FIELD_ATTACK);
            String pDefense = pokemonWrapper.getString(JSON_FIELD_DEFENSE);
            String pSpAtk = pokemonWrapper.getString("sp_atk");
            String pSpDef = pokemonWrapper.getString("sp_def");
            String pSpeed = pokemonWrapper.getString("speed");
            
            String pEV = pokemonWrapper.getString("ev_yield");
            String pHappiness = pokemonWrapper.getString("happiness");
            String pHeight = pokemonWrapper.getString("height");
            String pWeight = pokemonWrapper.getString("weight");
            
            pokemon.setId(pId);
            pokemon.setName(pName);
            pokemon.setSpecies(pSpecies);
            pokemon.setHp(Integer.parseInt(pHP));
            pokemon.setAttack(Integer.parseInt(pAttack));
            pokemon.setDefense(Integer.parseInt(pDefense));
            pokemon.setSpAtk(Integer.parseInt(pSpAtk));
            pokemon.setSpDef(Integer.parseInt(pSpDef));
            pokemon.setSpeed(Integer.parseInt(pSpeed));
            pokemon.setEvYield(pEV);
            pokemon.setHappiness(pHappiness);
            pokemon.setHeight(pHeight);
            pokemon.setWeight(pWeight);
        }
        catch (JSONException e) {
            Log.e(TAG, "Failed to parse JSON.", e);
        }
        
        return pokemon;
    }

}
