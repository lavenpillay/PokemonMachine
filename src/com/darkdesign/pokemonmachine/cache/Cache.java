package com.darkdesign.pokemonmachine.cache;

import java.util.HashMap;

import android.support.v4.app.FragmentActivity;

import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;

public class Cache {

	private static HashMap<String, Pokemon> POKEMON_CACHE;
	private static int[][] TYPE_EFFICACY_MATRIX;
	
	private DatabaseHelper db;
	
	public Cache(FragmentActivity mainActivity) {
		db = new DatabaseHelper(mainActivity);
		
		POKEMON_CACHE = new HashMap<String, Pokemon>();
		TYPE_EFFICACY_MATRIX = db.getTypeEfficacyMatrix();
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
	
	public int[][] getTypeEfficacyMatrix() {
		return TYPE_EFFICACY_MATRIX;
	}
}
