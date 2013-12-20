package com.darkdesign.pokemonmachine.database;

import java.util.ArrayList;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.util.Log;

import com.darkdesign.pokemonmachine.element.Evolution;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.exception.DoesNotEvolveException;
import com.darkdesign.pokemonmachine.helper.GlobalConstants;
import com.darkdesign.pokemonmachine.helper.Util;
import com.readystatesoftware.sqliteasset.SQLiteAssetHelper;

public class DatabaseHelper extends SQLiteAssetHelper {
	
	private static final String TAG = DatabaseHelper.class.getName();

    public static final String DATABASE_NAME = "pokemon_machine_db";
    public static final int DATABASE_VERSION = 1;
    
    // Table Names
    private static final String TABLE_POKEMON = "pokemon";
    private static final String TABLE_MOVES = "moves";
    private static final String TABLE_EVOLUTION = "pokemon_evolution";
    private static final String TABLE_SPECIES = "pokemon_species";
    
    
    // Field names for Pokemon table
    private static final String P_DEXNO = "dex_no";
    private static final String P_NAME = "name";
    private static final String P_SPECIES = "species";
    private static final String P_HP = "hp";
    private static final String P_ATTACK = "atk";
    private static final String P_DEFENSE = "def";
    private static final String P_SPECIAL_ATTACK = "sp_atk";
    private static final String P_SPECIAL_DEFENSE = "sp_def";
    private static final String P_SPEED = "speed";
    private static final String P_TOTAL = "total";
    private static final String P_HEIGHT = "height";
    private static final String P_WEIGHT = "weight";
    private static final String P_TYPES = "types"; // Comma delimited list of IDs
    private static final String P_ABILITIES = "abilities"; // Comma delimited list of IDs
    private static final String P_MOVES = "moves"; // Comma delimited list of IDs
    private static final String P_CATCH_RATE = "catch_rate";
    private static final String P_EGG_CYCLES = "egg_cycles";
    private static final String P_EGG_GROUPS = "egg_groups";
    private static final String P_EV_YIELD = "ev_yield";
    private static final String P_EXP = "exp";
    private static final String P_GROWTH_RATE = "growth_rate";
    private static final String P_HAPPINESS = "happiness";
    private static final String P_GENDER_RATIO = "gender_ratio";
    private static final String P_RESOURCE_URI = "resource_uri";

    public DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);  
    }

    public Cursor getAllPokemon() {

        SQLiteDatabase db = getReadableDatabase();
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();

        String [] sqlSelect = {"0 _id", "name"}; 
        String sqlTables = TABLE_POKEMON;

        qb.setTables(sqlTables);
        Cursor c = qb.query(db, sqlSelect, null, null,
                        null, null, null);

        c.moveToFirst();
        return c;
    }
    
    public ArrayList<Move> getMovesForPokemon(Pokemon pokemon) {
    	
    	ArrayList<Move> updatedMoveList = pokemon.getMoves();
    	
    	// Get Move IDs as array
		String[] moveIDs = Util.getMoveListIDsAsArray(pokemon.getMoves());

        SQLiteDatabase db = getReadableDatabase();
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();

        String query = "SELECT id, identifier, power, pp, accuracy FROM " + TABLE_MOVES + " "
                + " WHERE id IN (" + makePlaceholders(moveIDs.length) + ")";

        Cursor cursor = db.rawQuery(query, moveIDs);
        
        int i = 0;
        while (cursor.moveToNext()) {
        	updatedMoveList.get(i).setPower(cursor.getString(2));
        	updatedMoveList.get(i).setPP(cursor.getString(3));
        	updatedMoveList.get(i).setAccuracy(cursor.getString(4));
        	i++;
        }
        
        return updatedMoveList;
    }
    
    /**
     * Returns an ArrayList of Evolution objects containing all evolutions
     * 
     * @param id
     * @return
     */
	public ArrayList<Evolution> getEvolutions(String id) throws DoesNotEvolveException 
	{
		ArrayList<Evolution> evolutions = new ArrayList<Evolution>();
		
		Evolution evolution = null;
		
		SQLiteDatabase db = getReadableDatabase();
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();

        String querySpecies = "SELECT id, evolves_from_species_id FROM " + TABLE_SPECIES + " WHERE evolution_chain_id IN (SELECT evolution_chain_id FROM " + TABLE_SPECIES + " WHERE id = " + id + ")";
        Log.d(TAG, querySpecies);
        
        Cursor cursor = db.rawQuery(querySpecies, null);
        
        if (cursor.getCount() == 0) {
        	throw new DoesNotEvolveException();
        } else {
        	cursor.moveToFirst();
        }
        
        while (cursor.moveToNext()) {
	        Log.d(TAG, "CHAIN : " + cursor.getString(0));
	        
	        String queryEvolutions = "SELECT evolved_species_id, evolution_trigger_id, minimum_level, trigger_item_id FROM " + TABLE_EVOLUTION + " WHERE evolved_species_id = " + cursor.getString(0);
	        Log.d(TAG, queryEvolutions);
	        Cursor cursorEvolutions = db.rawQuery(queryEvolutions, null);
	        cursorEvolutions.moveToFirst();
	        
	        String pokemonId = cursor.getString(0);
	        String prevEvolutionId = cursor.getString(1);
	        String method = cursorEvolutions.getString(1);
	        String level = cursorEvolutions.getString(2);
	        String triggerItemId = cursorEvolutions.getString(2);
	        
	        evolution = new Evolution();
	        evolution.setPokemonId(pokemonId);
	        evolution.setPreviousEvolutionId(prevEvolutionId);
	        evolution.setMethod(method);
	        evolution.setLevel(level);
	        evolution.setTriggerItemId(triggerItemId);
	        
	        evolutions.add(evolution);
        }
		
		return evolutions;
	}
    
    
    // Adding new Pokemon
    /*
    public void addPokemon(Pokemon pokemon) {
    	SQLiteDatabase db = this.getWritableDatabase();
    	 
        ContentValues values = new ContentValues();
        values.put(P_DEXNO, pokemon.getNationalId());
        values.put(P_NAME, pokemon.getName());
		values.put(P_SPECIES, pokemon.getSpecies());
		values.put(P_HP, pokemon.getHp());
		values.put(P_ATTACK, pokemon.getAttack());
		values.put(P_DEFENSE, pokemon.getDefense());
		values.put(P_SPECIAL_ATTACK, pokemon.getSpAtk());
		values.put(P_SPECIAL_DEFENSE, pokemon.getSpDef());
		values.put(P_SPEED, pokemon.getSpeed());
		values.put(P_TOTAL, pokemon.getTotal());
		values.put(P_HEIGHT, pokemon.getHeight());
		values.put(P_WEIGHT, pokemon.getWeight());
		values.put(P_TYPES, Util.arrayListToCSV(pokemon.getTypes()));
		values.put(P_ABILITIES, Util.arrayListToCSV(pokemon.getAbilities()));
		values.put(P_MOVES, Util.arrayListToCSV(pokemon.getMoves()));
		values.put(P_CATCH_RATE, pokemon.getCatchRate());
		values.put(P_EGG_CYCLES, pokemon.getEggCycles());
		values.put(P_EGG_GROUPS, Util.arrayListToCSV(pokemon.getEggGroups()));
		values.put(P_EV_YIELD, pokemon.getEvYield());
		values.put(P_EXP, pokemon.getExp());
		values.put(P_GROWTH_RATE, pokemon.getGrowthRate());
		values.put(P_HAPPINESS, pokemon.getHappiness());
		values.put(P_GENDER_RATIO, pokemon.getGenderRatio());
		values.put(P_RESOURCE_URI, pokemon.getResourceURI());
     
        // Inserting Row
        db.insert(TABLE_POKEMON, null, values);
        db.close(); // Closing database connection
    }
    */
    
    // Getting single pokemon
    public Pokemon getPokemon(String id) {
    	
    	SQLiteDatabase db = this.getReadableDatabase();
    	 
        Cursor cursor = db.query(TABLE_POKEMON, 
        		new String[] { P_DEXNO, P_NAME },    // fields to SELECT 
        		P_DEXNO + "=?", 				     // WHERE clause
                new String[] { id }, // WHERE clause VALUES 
                null, null, null, null);
        
        if (cursor != null)
            cursor.moveToFirst();
     
        Pokemon pokemon = new Pokemon();
        
        pokemon.setNationalId(cursor.getString(0));
        pokemon.setName(cursor.getString(1));
        
    	return pokemon;
    }
    
    // Getting Pokemon Count
    public int getPokemonCount() {
    	return -1;
    }
    
    // Updating single Pokemon
    public int updatePokemon(Pokemon pokemon) {
    	return -1;
    }
     
    // Deleting single Pokemon
    public void deletePokemon(Pokemon pokemon) {
    	
    }
    
    /**
     * Helper method to create the correct number of comma-delimited 
     * question marks for SQL Query building
     * 
     * @param len
     * @return
     */
    public String makePlaceholders(int len) {
        if (len < 1) {
            // It will lead to an invalid query anyway ..
            throw new RuntimeException("No placeholders");
        } else {
            StringBuilder sb = new StringBuilder(len * 2 - 1);
            sb.append("?");
            for (int i = 1; i < len; i++) {
                sb.append(",?");
            }
            return sb.toString();
        }
    }
    
    
}