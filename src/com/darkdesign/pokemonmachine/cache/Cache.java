package com.darkdesign.pokemonmachine.cache;

import java.util.HashMap;

import android.support.v4.app.FragmentActivity;

import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;

public class Cache {

	private static HashMap<String, Pokemon> POKEMON_CACHE;
	private static HashMap<Pokemon, Move> MOVE_CACHE;
	
	private DatabaseHelper db;
	
	public Cache(FragmentActivity mainActivity) {
		POKEMON_CACHE = new HashMap<String, Pokemon>();
		MOVE_CACHE = new HashMap<Pokemon, Move>();
		
		db = new DatabaseHelper(mainActivity);
	}
	
	public void addPokemonToCache(Pokemon pokemon) {
		POKEMON_CACHE.put(pokemon.getId(), pokemon);
	}
	
	public Pokemon getPokemon(int id) {
		Pokemon pokemon = POKEMON_CACHE.get(String.valueOf(id));
		
		if (pokemon == null) {
			pokemon = db.getPokemon(String.valueOf(id));
			addPokemonToCache(pokemon);
		}
		
		return pokemon;
	}
}
