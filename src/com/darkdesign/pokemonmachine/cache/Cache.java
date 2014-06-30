package com.darkdesign.pokemonmachine.cache;

import java.util.ArrayList;
import java.util.HashMap;

import android.app.Activity;

import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Berry;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.element.VideoGame;

public class Cache {

	private static HashMap<Integer, Pokemon> POKEMON_CACHE;
	private static ArrayList<Berry> BERRY_CACHE;
	private static ArrayList<VideoGame> GAME_LIST_CACHE;
	private static ArrayList<Type> TYPE_LIST_CACHE;
	private static int[][] TYPE_EFFICACY_MATRIX;
	
	private static HashMap<String,Integer> TYPE_ID_BY_NAME;
	private static HashMap<Integer,String> TYPE_NAME_BY_ID;
	private static HashMap<String,String> BERRY_NAME_BY_ID;
	
	private static DatabaseHelper db;
	
	public static DatabaseHelper getDatabaseHelper() {
		return db;
	}

	public Cache(Activity mainActivity) {
		db = new DatabaseHelper(mainActivity);
		
		// Pokemon
		POKEMON_CACHE = new HashMap<Integer, Pokemon>();
		
		// Types
		TYPE_LIST_CACHE = db.getTypes();
		TYPE_EFFICACY_MATRIX = db.getTypeEfficacyMatrix();
		
		TYPE_ID_BY_NAME = db.getTypeIdsByNamesMap();
		TYPE_NAME_BY_ID = db.getTypeNamesByIdsMap();
		
		// Berries
		BERRY_CACHE = db.getBerries();
		setupBerryNameByIdMap();
		
		// Games
		GAME_LIST_CACHE = db.getVideoGameList();
		
		
	}
	
	public void setupBerryNameByIdMap() {
		BERRY_NAME_BY_ID = new HashMap<String,String>();
		
		for (int i=0; i < BERRY_CACHE.size(); i++) {
			Berry berry = BERRY_CACHE.get(i);
			BERRY_NAME_BY_ID.put(berry.getBerryId(), berry.getBerryName()); 
		}
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
	
	public ArrayList<VideoGame> getGameList() {
		return GAME_LIST_CACHE;
	}
	
	public ArrayList<Type> getTypeList() {
		return TYPE_LIST_CACHE;
	}
	
	public int getTypeIdByName(String typeName) {
		return TYPE_ID_BY_NAME.get(typeName);
	}
	
	public String getTypeNameById(int typeId) {
		return TYPE_NAME_BY_ID.get(typeId);
	}
	
	public int[][] getTypeEfficacyMatrix() {
		return TYPE_EFFICACY_MATRIX;
	}
	
	public ArrayList<Berry> getBerryList() {
		return BERRY_CACHE;
	}
	

}
