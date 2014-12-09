package com.darkdesign.pokemonmachine.cache;

import java.util.ArrayList;
import java.util.HashMap;

import android.app.Activity;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Berry;
import com.darkdesign.pokemonmachine.element.EggGroup;
import com.darkdesign.pokemonmachine.element.Item;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.element.VideoGame;

public class Cache {

	private static HashMap<Integer, Pokemon> POKEMON_CACHE;
	private static HashMap<Integer, Item> ITEM_CACHE_BY_ID;
	private static HashMap<String, Item> ITEM_CACHE_BY_NAME;
	private static String[] ITEM_NAMES;
	private static ArrayList<VideoGame> GAME_LIST_CACHE;
	private static ArrayList<Type> TYPE_LIST_CACHE;
	private static ArrayList<Move> MOVE_LIST_CACHE;
	private static int[][] TYPE_EFFICACY_MATRIX;
	private static ArrayList<EggGroup> EGG_GROUP_CACHE;
	
	private static HashMap<String,Integer> TYPE_ID_BY_NAME;
	private static HashMap<Integer,String> TYPE_NAME_BY_ID;
	private static HashMap<String,String> BERRY_NAME_BY_ID;
	
	private static DatabaseHelper db;
	
	public static DatabaseHelper getDatabaseHelper() {
		return db;
	}

	public Cache() {
		db = PokemonMachineActivity.db;
		
		// Pokemon
		POKEMON_CACHE = new HashMap<Integer, Pokemon>();
		
		// Moves
		MOVE_LIST_CACHE = db.getAllMoves();
		
		// Types
		TYPE_LIST_CACHE = db.getTypes();
		TYPE_EFFICACY_MATRIX = db.getTypeEfficacyMatrix();
		
		TYPE_ID_BY_NAME = db.getTypeIdsByNamesMap();
		TYPE_NAME_BY_ID = db.getTypeNamesByIdsMap();
		
		// Games
		GAME_LIST_CACHE = db.getVideoGameList();
		
		// Egg Groups
		EGG_GROUP_CACHE = db.getEggGroups();
		
		// Items
		buildItemMaps();
		ITEM_NAMES = db.getItemNames();
		
		int temp = 0;
	}

	private void buildItemMaps() {
		ITEM_CACHE_BY_ID = new HashMap<Integer, Item>();
		ITEM_CACHE_BY_NAME = new HashMap<String, Item>();
		
		ArrayList<Item> itemList = db.getItems();
		
		for (Item item : itemList) {
			ITEM_CACHE_BY_ID.put(item.getId(), item);
			ITEM_CACHE_BY_NAME.put(item.getName(), item);
		}
	}
	
	public void addPokemonToCache(Pokemon pokemon) {
		POKEMON_CACHE.put(pokemon.getId(), pokemon);
	}
	
	public Pokemon getPokemon(int id) {
		Pokemon pokemon = POKEMON_CACHE.get(id);
		
		if (pokemon == null) {
			pokemon = db.getPokemon(String.valueOf(id));
			addPokemonToCache(pokemon);
		}
		
		return pokemon;
	}
	
	public ArrayList<Move> getAllMoves() {
		return MOVE_LIST_CACHE;
	}
	
	public String[] getAllMoveNames() {
		ArrayList<String> namesList = new ArrayList<String>();
		String[] namesArray = new String[MOVE_LIST_CACHE.size()];
		
		for (Move move : MOVE_LIST_CACHE) {
			namesList.add(move.getName());
		}
		
		namesArray = namesList.toArray(namesArray);
		
		return namesArray;
	}
	
	public ArrayList<EggGroup> getEggGroups() {
		return EGG_GROUP_CACHE;
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
	
	public Item getItemById(int itemId) {
		return ITEM_CACHE_BY_ID.get(itemId);
	}
	
	public Item getItemByName(String itemName) {
		return ITEM_CACHE_BY_NAME.get(itemName);
				
	}
	
	public int[][] getTypeEfficacyMatrix() {
		return TYPE_EFFICACY_MATRIX;
	}
	
	public String[] getItemNames() {
		return ITEM_NAMES;
	}
}
