package com.darkdesign.pokemonmachine.database;

import java.util.ArrayList;
import java.util.Collections;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.util.Log;

import com.darkdesign.pokemonmachine.element.Evolution;
import com.darkdesign.pokemonmachine.element.Item;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.exception.DoesNotEvolveException;
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
    private static final String TABLE_ITEMS = "items";

    private static final String VERSION_GROUP_XY = "15";
    
    public DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);  
    }

    /**
     * 
     * @return
     */
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
    
    /**
     * 
     * @param pokemon
     * @return
     */
    public ArrayList<Move> getMovesForPokemon(Pokemon pokemon) {
    	
    	ArrayList<Move> moveList = new ArrayList<Move>(); 
    	
        SQLiteDatabase db = getReadableDatabase();
        
        String query = "SELECT move_id, pokemon_move_method_id, level FROM pokemon_moves WHERE pokemon_id = " + pokemon.getId() + " AND version_group_id = " + VERSION_GROUP_XY;
        Cursor c = db.rawQuery(query, null);
        
        int totalMoves = c.getCount();
        
        while(c.moveToNext()) {
        	Move move = new Move();
        	
        	String moveId = c.getString(0);
        	String methodId = c.getString(1);
        	
        	Log.v(TAG, "Getting info for Move with ID = " + moveId);
        	
        	move.setId(moveId);
        	move.setLevel(c.getString(2));
        	
        	// Get Move Main Info
        	String queryMove = "SELECT identifier, type_id, power, pp, accuracy, priority," 
        			+ " target_id, damage_class_id, effect_id, effect_chance from moves where id = " + moveId;
            Cursor cursorMove = db.rawQuery(queryMove, null);
            cursorMove.moveToFirst();
            
            String typeId = cursorMove.getString(1);
            String targetId = cursorMove.getString(6);
            String damageClassId = cursorMove.getString(7);
            String effectId = cursorMove.getString(8);
            move.setEffectChance(cursorMove.getString(9));
            
            move.setName(cursorMove.getString(0));
            move.setPower(cursorMove.getString(2));
            move.setPP(cursorMove.getString(3));
            move.setAccuracy(cursorMove.getString(4));
            move.setPriority(cursorMove.getString(5));
            cursorMove.close();
            
            // Get move Type
        	String queryType = "SELECT identifier FROM types WHERE id = " + typeId;
            Cursor cursorType = db.rawQuery(queryType, null);
            cursorType.moveToFirst();
            move.setType(cursorType.getString(0));
            cursorType.close();
            
            // Get Targets
            String queryTarget = "SELECT identifier FROM move_targets WHERE id = " + targetId;
            Cursor cursorTarget = db.rawQuery(queryTarget, null);
            cursorTarget.moveToFirst();
            move.setTargets(cursorTarget.getString(0));
            cursorTarget.close();
            
            // Get Damage Class
            String queryDamageClass = "SELECT identifier FROM move_damage_classes WHERE id = " + damageClassId;
            Cursor cursorDamageClass = db.rawQuery(queryDamageClass, null);
            cursorDamageClass.moveToFirst();
            move.setDamageClass(cursorDamageClass.getString(0));
            cursorDamageClass.close();
            
            // Get Effects
            String queryEffect = "SELECT effect, short_effect FROM move_effect_prose WHERE move_effect_id = " + effectId;
            Cursor cursorEffect = db.rawQuery(queryEffect, null);
            cursorEffect.moveToFirst();
            move.setEffectLong(cursorEffect.getString(0));
            move.setEffectShort(cursorEffect.getString(1));
            cursorEffect.close();
        	
        	// Get Method Name
        	String queryMethod = "SELECT name FROM pokemon_move_method_prose WHERE pokemon_move_method_id = " + methodId;
            Cursor cursorMethod = db.rawQuery(queryMethod, null);
            cursorMethod.moveToFirst();
            move.setMethod(cursorMethod.getString(0));
            cursorMethod.close();
        	
        	moveList.add(move);
        }

        return moveList;
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
		String evolvedSpeciesId;
		
		SQLiteDatabase db = getReadableDatabase();
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();

        String querySpecies = "SELECT id, evolves_from_species_id FROM " + TABLE_SPECIES + " WHERE evolution_chain_id = (SELECT evolution_chain_id FROM " + TABLE_SPECIES + " WHERE id = " + id + ")";
        Log.d(TAG, querySpecies);
        
        Cursor cursor = db.rawQuery(querySpecies, null);
        
        if (cursor.getCount() == 0) {
        	throw new DoesNotEvolveException();
        } else {
        	//cursor.moveToFirst();
        }
        
        while (cursor.moveToNext()) {
	        Log.d(TAG, "CHAIN : " + cursor.getString(0));
	        
        	evolvedSpeciesId =  cursor.getString(0);
	        
	        String queryEvolutions = "SELECT evolved_species_id, evolution_trigger_id, minimum_level, trigger_item_id, minimum_happiness " +
	        		"FROM " + TABLE_EVOLUTION + " WHERE evolved_species_id = " + evolvedSpeciesId;
	        Log.d(TAG, queryEvolutions);
	        Cursor cursorEvolutions = db.rawQuery(queryEvolutions, null);
	        cursorEvolutions.moveToFirst();
	        
	        String pokemonId = cursor.getString(0);
	        String prevEvolutionId = cursor.getString(1);
	        
	        evolution = new Evolution();
	        evolution.setPokemonId(pokemonId);
	        evolution.setPreviousEvolutionId(prevEvolutionId);

	        if (cursorEvolutions.getCount() > 0) {
		        String method = cursorEvolutions.getString(1);
		        String level = cursorEvolutions.getString(2);
		        String triggerItemId = cursorEvolutions.getString(3);
		        String minimumHappiness = cursorEvolutions.getString(4);
		        
		        evolution.setMethod(method);
		        evolution.setLevel(level);
		        evolution.setTriggerItemId(triggerItemId);
		        evolution.setMinimumHappiness(minimumHappiness);
	        }
	        
	        evolutions.add(evolution);
        }
        
        if (evolutions.size() > 1) {
	        // Sort evolutions - get pre-evolutions first
	        for (int i=0; i < evolutions.size(); i++) {
	        	if (evolutions.get(i).getPreviousEvolutionId() == null) {
	        		Collections.swap(evolutions, 0, i);
	        	}
	        }

	        // If theres 3 evolutions check and swap
	        if (evolutions.size() > 2) {
	        	if (evolutions.get(1).getPreviousEvolutionId().equals(evolutions.get(2).getPokemonId())) {
	        		Collections.swap(evolutions, 1, 2);
	        	}
	        }

        }
		
		return evolutions;
	}
    
    
    // Getting single pokemon
    public Pokemon getPokemon(String id) {
    	Pokemon pokemon = new Pokemon();
    	
    	SQLiteDatabase db = getReadableDatabase();
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();

        String queryPokemon = "SELECT p.id, psn.name, ps.generation_id, ps.evolves_from_species_id, ps.evolution_chain_id,"
        		+ "	ps.gender_rate, ps.capture_rate, ps.base_happiness, ps.is_baby,	ps.hatch_counter, gr.identifier,"
        		+ " ps.forms_switchable, height, weight"
        		+ " FROM pokemon p, pokemon_species ps, pokemon_species_names psn, growth_rates gr "
        		+ " WHERE p.id = " + id + " AND psn.pokemon_species_id = p.species_id AND ps.id = p.id AND gr.id = ps.growth_rate_id";
        
        Log.v(TAG, queryPokemon);
        
        Cursor c = db.rawQuery(queryPokemon, null);
        c.moveToFirst();
        
        pokemon.setId(c.getString(0));
        pokemon.setName(c.getString(1));
        pokemon.setGenerationId(c.getString(2));
        pokemon.setEvolvesFromId(c.getString(3));
        pokemon.setEvolutionChainId(c.getString(4));
        pokemon.setGenderRate(c.getString(5));
        pokemon.setCatchRate(c.getString(6));
        pokemon.setHappiness(c.getString(7));
        pokemon.setBaby(c.getInt(8) == 1 ? true : false);
        pokemon.setHatchCounter(c.getString(9));
        pokemon.setGrowthRate(c.getString(10));
        pokemon.setFormSwitchable(c.getInt(11) == 1 ? true : false);
        pokemon.setHeight(c.getString(12));
        pokemon.setWeight(c.getString(13));
        
        // Get Base Stats
        String queryBaseStats = 
        		"SELECT base_stat FROM pokemon_stats WHERE pokemon_id = " + id + " ORDER BY stat_id ASC";
        
        Log.v(TAG, queryBaseStats);
        
        Cursor cursorStats = db.rawQuery(queryBaseStats, null);
        cursorStats.moveToFirst();
        pokemon.setHp(cursorStats.getInt(0));
        cursorStats.moveToNext();
        pokemon.setAttack(cursorStats.getInt(0));
        cursorStats.moveToNext();
        pokemon.setDefense(cursorStats.getInt(0));
        cursorStats.moveToNext();
        pokemon.setSpAtk(cursorStats.getInt(0));
        cursorStats.moveToNext();
        pokemon.setSpDef(cursorStats.getInt(0));
        cursorStats.moveToNext();
        pokemon.setSpeed(cursorStats.getInt(0));
        
    	return pokemon;
    }
    
    /**
     * Return an item from the database
     * 
     * @param itemId
     * @return
     */
    public Item getItemById(String itemId) {
    	Item item;
    	
    	SQLiteDatabase db = getReadableDatabase();
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();

        String queryItem = "SELECT id, identifier FROM " + TABLE_ITEMS + " WHERE id = " + itemId;
        Log.d(TAG, queryItem);
        
        Cursor cursor = db.rawQuery(queryItem, null);
        cursor.moveToFirst();
        
        item = new Item(cursor.getString(0), cursor.getString(1));
        
        return item;
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