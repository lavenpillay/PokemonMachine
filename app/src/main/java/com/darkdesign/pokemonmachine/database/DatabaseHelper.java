package com.darkdesign.pokemonmachine.database;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import com.darkdesign.pokemonmachine.element.Ability;
import com.darkdesign.pokemonmachine.element.Berry;
import com.darkdesign.pokemonmachine.element.EggGroup;
import com.darkdesign.pokemonmachine.element.Evolution;
import com.darkdesign.pokemonmachine.element.Item;
import com.darkdesign.pokemonmachine.element.ItemCategory;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.element.VideoGame;
import com.darkdesign.pokemonmachine.element.VideoGameList;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.helper.Util;
import com.readystatesoftware.sqliteasset.SQLiteAssetHelper;

public class DatabaseHelper extends SQLiteAssetHelper {
	
	private static final String TAG = "DatabaseHelper";

    public static final String DATABASE_NAME = "pokemon_machine_db";
    public static final int DATABASE_VERSION = 1;
    
    // Table Names
    private static final String TABLE_POKEMON = "pokemon";
    private static final String TABLE_MOVES = "moves";
    private static final String TABLE_EVOLUTION = "pokemon_evolution";
    private static final String TABLE_SPECIES = "pokemon_species";
    private static final String TABLE_ITEMS = "items";
    private static final String TABLE_TYPES = "types";
    private static final String TABLE_TYPE_EFFICACY = "type_efficacy";
    private static final String TABLE_VERSION_NAMES = "version_names";
    private static final String TABLE_VERSIONS = "versions";
    private static final String TABLE_VERSION_GROUPS = "version_groups";
    
    
    private static SQLiteDatabase db = null;
    
    public DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
        
        db = getReadableDatabase();
    }
    
    public ArrayList<Move> getAllMoves() {
    	ArrayList<Move> moveList = new ArrayList<Move>(); 
    	
    	String queryMoves = "SELECT id, identifier, type_id, power, pp, accuracy, priority, target_id, damage_class_id, effect_id, effect_chance FROM moves ORDER BY id ASC ";
        Cursor cursorMoves = db.rawQuery(queryMoves, null);
    	
        while (cursorMoves.moveToNext()) {
        	Move move = new Move();
        	
        	move.setId(cursorMoves.getInt(0));
        	move.setName(cursorMoves.getString(1));
        	move.setPower(cursorMoves.getInt(3));
        	move.setPP(cursorMoves.getInt(4));
        	move.setAccuracy(cursorMoves.getInt(5));
        	move.setPriority(cursorMoves.getInt(6));
        	move.setEffectChance(cursorMoves.getString(10) == null ? "" : cursorMoves.getString(10));
        	
        	int mId = move.getId();
        	
        	int typeId = cursorMoves.getInt(2);
        	
        	// Get move Type
        	String queryType = "SELECT identifier FROM types WHERE id = " + typeId;
            Cursor cursorType = db.rawQuery(queryType, null);
            cursorType.moveToFirst();
            move.setType(cursorType.getString(0));
            cursorType.close();
        	
        	int effectId = cursorMoves.getInt(9);
        	
        	// Get Effects
            String queryEffect = "SELECT effect, short_effect FROM move_effect_prose WHERE move_effect_id = " + effectId;
            Cursor cursorEffect = db.rawQuery(queryEffect, null);
            cursorEffect.moveToFirst();
            move.setEffectLong(cursorEffect.getString(0));
            move.setEffectShort(cursorEffect.getString(1));
            cursorEffect.close();
            
            int targetId = cursorMoves.getInt(7);
            
            // Get Targets
            String queryTarget = "SELECT identifier FROM move_targets WHERE id = " + targetId;
            Cursor cursorTarget = db.rawQuery(queryTarget, null);
            cursorTarget.moveToFirst();
            move.setTargets(cursorTarget.getString(0));
            cursorTarget.close();
            
            int damageClassId = cursorMoves.getInt(8);
            
            // Get Damage Class
            String queryDamageClass = "SELECT identifier FROM move_damage_classes WHERE id = " + damageClassId;
            Cursor cursorDamageClass = db.rawQuery(queryDamageClass, null);
            cursorDamageClass.moveToFirst();
            move.setDamageClass(cursorDamageClass.getString(0));
            cursorDamageClass.close();
            
            moveList.add(move);
        }
        
    	return moveList;
    }
    
    public int[] getPokemonIdsForMove(int moveId) {
    	ArrayList<Integer> pokemonIdList = new ArrayList<Integer>();
    	int[] pokemonIds = null;
    	
    	// Get Targets
        String queryPokemon = "SELECT pokemon_id FROM pokemon_moves WHERE version_group_id = 15 AND move_id = " + moveId;
        Cursor cursorPokemon = db.rawQuery(queryPokemon, null);
        while (cursorPokemon.moveToNext()) {
        	pokemonIdList.add(cursorPokemon.getInt(0));
        }
        cursorPokemon.close();
    	
        pokemonIds = new int[pokemonIdList.size()];
        for (int i=0; i < pokemonIdList.size(); i++) {
        	pokemonIds[i] = pokemonIdList.get(i);
        }
        
    	return pokemonIds;
    }
    
    public int[] getMoveIdsByType(int typeId) {
    	String movesQuery = "SELECT id FROM moves WHERE type_id = " + typeId;
        Cursor movesCursor = db.rawQuery(movesQuery, null);
        
        int totalMoves = movesCursor.getCount();
        int[] moveIds = new int[totalMoves];
        int index = 0;
        
        while(movesCursor.moveToNext()) {
        	moveIds[index++] = movesCursor.getInt(0);
        }
        
    	return moveIds;
    }

    /**
     * 
     * @param pokemon
     * @return
     */
    
    // TODO optimise this - get move from cache then add extra fields like Method
    public ArrayList<Move> getMovesForPokemon(Pokemon pokemon) {
    	
    	ArrayList<Move> moveList = new ArrayList<Move>(); 
    	
        String versionGroupToQuery = "";
        
        // TODO Update/Remove this check after data is updated
        if (Arrays.asList(Constants.POKEMON_WITH_NO_GEN_6_MOVEDATA).contains(pokemon.getId())) {
        	versionGroupToQuery = Constants.VERSION_GROUP_BLACKWHITE_2;
        } else {
        	versionGroupToQuery = Constants.VERSION_GROUP_XY;
        }
        
        String query = "SELECT move_id, pokemon_move_method_id, level FROM pokemon_moves WHERE pokemon_id = " + pokemon.getId() + " AND version_group_id = " + versionGroupToQuery;
        Cursor c = db.rawQuery(query, null);
        
        int totalMoves = c.getCount();
        
        while(c.moveToNext()) {
        	Move move = new Move();
        	
        	int moveId = c.getInt(0);
        	String methodId = c.getString(1);
        	
        	Log.v(TAG, "Getting info for Move with ID = " + moveId);
        	
        	move.setId(moveId);
        	move.setLevel(c.getInt(2));
        	
        	// Get Move Main Info
        	String queryMove = "SELECT identifier, type_id, power, pp, accuracy, priority," 
        			+ " target_id, damage_class_id, effect_id, effect_chance from moves where id = " + moveId;
            Cursor cursorMove = db.rawQuery(queryMove, null);
            cursorMove.moveToFirst();
            
            String typeId = cursorMove.getString(1);
            String targetId = cursorMove.getString(6);
            String damageClassId = cursorMove.getString(7);
            String effectId = cursorMove.getString(8);
            String effectChance = cursorMove.getString(9) == null ? "" : cursorMove.getString(9);
            
            move.setEffectChance(effectChance);
            move.setName(cursorMove.getString(0));
            move.setPower(cursorMove.getInt(2));
            move.setPP(cursorMove.getInt(3));
            move.setAccuracy(cursorMove.getInt(4));
            move.setPriority(cursorMove.getInt(5));
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
        
        c.close();

        return moveList;
    }
    
    /**
     * Returns an ArrayList of Evolution objects containing all evolutions
     * 
     * @param id
     * @return
     */
	public ArrayList<Evolution> getEvolutions(int id) /* throws DoesNotEvolveException */ 
	{
		ArrayList<Evolution> evolutions = new ArrayList<Evolution>();
		
		Evolution evolution = null;
		String evolvedSpeciesId;
		
		Cursor cursorSpecies;
		Cursor cursorEvolutions;
		
		//SQLiteDatabase db = getReadableDatabase();

        String querySpecies = "SELECT id, evolves_from_species_id FROM " + TABLE_SPECIES + " WHERE evolution_chain_id = (SELECT evolution_chain_id FROM " + TABLE_SPECIES + " WHERE id = " + id + ")";
        
        cursorSpecies = db.rawQuery(querySpecies, null);
        
        while (cursorSpecies.moveToNext()) {
	        
        	evolvedSpeciesId =  cursorSpecies.getString(0);
	        
	        String queryEvolutions = "SELECT evolved_species_id, evolution_trigger_id, minimum_level, trigger_item_id, minimum_happiness, held_item_id " +
	        		"FROM " + TABLE_EVOLUTION + " WHERE evolved_species_id = " + evolvedSpeciesId;
	        cursorEvolutions = db.rawQuery(queryEvolutions, null);
	        cursorEvolutions.moveToFirst();
	        
	        String pokemonId = cursorSpecies.getString(0);
	        String prevEvolutionId = cursorSpecies.getString(1);
	        
	        evolution = new Evolution();
	        evolution.setPokemonId(pokemonId);
	        evolution.setPreviousEvolutionId(prevEvolutionId);

	        if (cursorEvolutions.getCount() > 0) {
		        String method = cursorEvolutions.getString(1);
		        String level = cursorEvolutions.getString(2);
		        String triggerItemId = cursorEvolutions.getString(3);
		        String minimumHappiness = cursorEvolutions.getString(4);
		        String heldItemId = cursorEvolutions.getString(5);
		        
		        evolution.setMethod(method);
		        evolution.setLevel(level);
		        evolution.setTriggerItemId(triggerItemId);
		        evolution.setMinimumHappiness(minimumHappiness);
		        evolution.setHeldItemId(heldItemId);
	        }
	        
	        evolutions.add(evolution);
	        cursorEvolutions.close();
        }
        
        cursorSpecies.close();
        
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
	
	public String getPokemonName(int id) {
		
		String queryPokemonName = "SELECT identifier FROM pokemon WHERE id = " + id;
		
		Cursor c = db.rawQuery(queryPokemonName, null);
        c.moveToFirst();
        
        String name = c.getString(0);
        c.close();
        
        return name;
	}
    
    
    // Getting single pokemon
    public Pokemon getPokemon(String id) {
    	Log.d(TAG, "Getting Pokemon from Database " + id);
    	
    	Pokemon pokemon = new Pokemon();
    	ArrayList<EggGroup> eggGroupList = new ArrayList<EggGroup>();
    	
    	//SQLiteDatabase db = getReadableDatabase();

        String queryPokemon = "SELECT p.id, psn.name, ps.generation_id, ps.evolves_from_species_id, ps.evolution_chain_id,"
        		+ "	ps.gender_rate, ps.capture_rate, ps.base_happiness, ps.is_baby,	ps.hatch_counter, gr.identifier,"
        		+ " ps.forms_switchable, height, weight, psn.genus"
        		+ " FROM pokemon p, pokemon_species ps, pokemon_species_names psn, growth_rates gr "
        		+ " WHERE p.id = " + id + " AND psn.pokemon_species_id = p.species_id AND ps.id = p.id AND gr.id = ps.growth_rate_id";
        
        Cursor c = db.rawQuery(queryPokemon, null);
        c.moveToFirst();
        
        pokemon.setId(c.getInt(0));
        pokemon.setName(c.getString(1));
        pokemon.setGenerationId(c.getInt(2));
        pokemon.setEvolvesFromId(c.getInt(3));
        pokemon.setEvolutionChainId(c.getInt(4));
        pokemon.setGenderRate(c.getString(5));
        pokemon.setCatchRate(c.getString(6));
        pokemon.setHappiness(c.getString(7));
        pokemon.setBaby(c.getInt(8) == 1 ? true : false);
        pokemon.setHatchCounter(c.getString(9));
        pokemon.setGrowthRate(Util.toTitleCase(c.getString(10)));
        pokemon.setFormSwitchable(c.getInt(11) == 1 ? true : false);
        pokemon.setHeight(c.getString(12));
        pokemon.setWeight(c.getString(13));
        pokemon.setSpecies(c.getString(14));
        
        // Get Base Stats
        String queryBaseStats = 
        		"SELECT base_stat FROM pokemon_stats WHERE pokemon_id = " + id + " ORDER BY stat_id ASC";
        
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
        
        cursorStats.close();
        
        // Get Pokemon Types
        ArrayList<Type> pokemonTypes = getPokemonTypes(pokemon.getId());
        pokemon.setTypes(pokemonTypes);
        
        // Get Egg Groups
        String queryEggGroups = 
        		"SELECT species_id, egg_group_id, identifier, name FROM pokemon_egg_groups g JOIN egg_group_prose p USING (egg_group_id) JOIN egg_groups e ON e.id = p.egg_group_id WHERE p.local_language_id = 9 AND species_id = " + pokemon.getId();
        
        Cursor cursorGroups = db.rawQuery(queryEggGroups, null);
        while(cursorGroups.moveToNext()) {
        	EggGroup eggGroup = new EggGroup(cursorGroups.getInt(1), cursorGroups.getString(2), cursorGroups.getString(3));
        	eggGroupList.add(eggGroup);
        }
        
        pokemon.setEggGroups(eggGroupList);
        cursorGroups.close();
        
        // Get Abilities
        String queryAbilities = 
        		"SELECT pa.ability_id as id, pa.is_hidden as ishidden, a.identifier as identifier, aft.flavor_text as flavour_text, an.name FROM pokemon_abilities pa JOIN abilities a ON pa.ability_id = a.id JOIN ability_flavor_text aft ON pa.ability_id = aft.ability_id JOIN ability_names an ON pa.ability_id = an.ability_id WHERE an.local_language_id = 9 AND aft.language_id = 9 AND aft.version_group_id = 15 AND pokemon_id = " + pokemon.getId();
        
        Cursor cursorAbilities = db.rawQuery(queryAbilities, null);
        while(cursorAbilities.moveToNext()) {
        	Ability ability = new Ability();
        	ability.setId(cursorAbilities.getInt(0));
        	ability.setHidden(cursorAbilities.getInt(1) == 1);
        	ability.setIdentifier(cursorAbilities.getString(2));
        	ability.setFlavourText(cursorAbilities.getString(3));
        	ability.setName(cursorAbilities.getString(4));
        	
        	pokemon.addAbility(ability);
        }
        
        cursorAbilities.close();
        
        // Get regular evolutions
        pokemon.setEvolutions(getEvolutions(pokemon.getId()));
        
        // Get Mega Evolution
     // Get Mega-Evolutions
        String queryMegaEvolution =
        		"SELECT id, identifier, species_id, megastone_item_id FROM pokemon p JOIN pokemon_megaevolution m ON p.id = m.pokemon_id WHERE p.species_id = " + pokemon.getId() + " AND p.id != p.species_id";
        
        Cursor cursorMegaEvo = db.rawQuery(queryMegaEvolution, null);
        if (cursorMegaEvo.moveToFirst()) {
        	Evolution megaEvolution = new Evolution();
        	megaEvolution.setPokemonId(cursorMegaEvo.getString(0));
        	megaEvolution.setIdentifier(cursorMegaEvo.getString(1));
        	megaEvolution.setPreviousEvolutionId(cursorMegaEvo.getString(2));
        	megaEvolution.setTriggerItemId(cursorMegaEvo.getString(3));
        	megaEvolution.setMethod(Constants.EVOLUTION_METHOD_MEGAEVOLUTION);
        	pokemon.setMegaEvolution(megaEvolution);
        	
        	// TODO Extract and lazy-load
        	// Add to other states
        	if (pokemon.getEvolutions().size() > 0) {
        		
        	}
        } else {
        	// No mega evolution
        }
        cursorMegaEvo.close();
        
        c.close();
        
    	return pokemon;
    }

	public ArrayList<Type> getPokemonTypes(int pokemonId) {
		// Get Pokemon Types
        ArrayList<Type> pokemonTypes = new ArrayList<Type>();
        
        String queryPokemonTypes = 
        		"SELECT identifier, type_id FROM pokemon_types INNER JOIN types ON id = type_id WHERE pokemon_id = " + pokemonId;
        
        Cursor cursorTypes = db.rawQuery(queryPokemonTypes, null);
        while(cursorTypes.moveToNext()) {
        	pokemonTypes.add(new Type(cursorTypes.getString(0), cursorTypes.getString(1)));
        }
        cursorTypes.close();
        
		return pokemonTypes;
	}


    /**
     * 
     * @return
     */
    public ArrayList<Item> getItems() {
    	ArrayList<Item> itemsList = new ArrayList<Item>();
    	
    	String queryItem = "SELECT i.id AS id, i.category_id AS category_id, n.name AS name, i.cost AS cost, i.identifier AS identifier, f.flavor_text AS description FROM items i JOIN item_names n ON i.id = n.item_id JOIN item_flavor_text f ON i.id = f.item_id WHERE n.local_language_id = 9 ORDER BY i.id ASC;";
    	
        Cursor cursorItems = db.rawQuery(queryItem, null);
        
        while(cursorItems.moveToNext()) {
        	// create Item object here
        	Item item = new Item();
        	item.setId(cursorItems.getInt(0));
        	item.setName(cursorItems.getString(2));
        	item.setCost(cursorItems.getString(3));
        	item.setIdentifier(cursorItems.getString(4));

        	item.setDescription(cursorItems.getString(5));
        	
        	// Get category information
        	ItemCategory itemCategory = null;
        	String queryItemCategory = "SELECT c.id, c.identifier, p.name FROM items i JOIN item_categories c ON i.category_id = c.id JOIN item_category_prose p ON c.id = p.item_category_id WHERE p.local_language_id = 9 AND i.id = " + item.getId();
            
            Cursor cursorItemCategories = db.rawQuery(queryItemCategory, null);
            while(cursorItemCategories.moveToNext()) {
            	itemCategory = new ItemCategory(cursorItemCategories.getInt(0), cursorItemCategories.getString(1), cursorItemCategories.getString(2));
            }
            cursorItemCategories.close();
            
            item.setCategory(itemCategory);
            
            // Get extra information
            String extraInfo = "";
        	String queryExtraInfo = "SELECT effect FROM item_extra_info WHERE id = " + item.getId();
            
            Cursor cursorExtraInfo = db.rawQuery(queryExtraInfo, null);
            if (cursorExtraInfo.moveToFirst()) {
            	extraInfo = cursorExtraInfo.getString(0);
            	item.setAdditionalInfo(extraInfo);
            }

            cursorExtraInfo.close();

            // Add item to list
        	itemsList.add(item);
        }
        
        cursorItems.close();
        
    	return itemsList;
    }
    
    /**
     * Return an item from the database
     * 
     * @param itemId
     * @return
     */
    public String[] getItemNames() {

    	ArrayList<Item> itemsList = getItems();
    	
        String[] namesArray = new String[itemsList.size()];
        for (int i=0; i < itemsList.size(); i++) {
        	namesArray[i] = itemsList.get(i).getName();
        }
        
        return namesArray;
    }
    
    /**
     * 
     * @return
     */
    public int[][] getTypeEfficacyMatrix() {
    	int[][] typeEfficacyMatrix = new int[Constants.NUMBER_OF_TYPES+1][Constants.NUMBER_OF_TYPES+1];
    	
    	String queryTypeEfficacy = "SELECT damage_type_id, target_type_id, damage_factor FROM " + TABLE_TYPE_EFFICACY;
        
        Cursor cursorTypeEfficacy = db.rawQuery(queryTypeEfficacy, null);
        
        while (cursorTypeEfficacy.moveToNext()) {
           	int damageTypeId = cursorTypeEfficacy.getInt(0);
           	int targetTypeId = cursorTypeEfficacy.getInt(1);
           	int damageFactor = cursorTypeEfficacy.getInt(2);
           	
           	typeEfficacyMatrix[damageTypeId][targetTypeId] = damageFactor;
        }
        
        cursorTypeEfficacy.close();
    	
    	return typeEfficacyMatrix;
    }
    
    public ArrayList<Type> getTypes() {
    	ArrayList<Type> types = new ArrayList<Type>();
    	
    	String queryTypes = "SELECT id, identifier FROM " + TABLE_TYPES + " WHERE id < 10000 ORDER BY identifier ASC ";
       
        Cursor cursorTypes = db.rawQuery(queryTypes, null);
    	
        while (cursorTypes.moveToNext()) {
        	types.add(new Type(cursorTypes.getString(1), cursorTypes.getString(0)));
        }
        
    	return types;
    }
    
    public HashMap<String,Integer> getTypeIdsByNamesMap() {
    	HashMap<String,Integer> typeIdByName = new HashMap<String,Integer>();
    	
    	String queryTypes = "SELECT id, identifier FROM " + TABLE_TYPES;
        
        Cursor cursorTypes = db.rawQuery(queryTypes, null);
        
        while (cursorTypes.moveToNext()) {
        	typeIdByName.put(Util.toTitleCase(cursorTypes.getString(1)), cursorTypes.getInt(0));
        }
    	
    	return typeIdByName;
    }
    
    public HashMap<Integer,String> getTypeNamesByIdsMap() {
    	HashMap<Integer,String> typeNameById = new HashMap<Integer,String>();
    	
    	String queryTypes = "SELECT id, identifier FROM " + TABLE_TYPES;
        
        Cursor cursorTypes = db.rawQuery(queryTypes, null);
        
        while (cursorTypes.moveToNext()) {
        	typeNameById.put(cursorTypes.getInt(0), Util.toTitleCase(cursorTypes.getString(1)));
        }
    	
    	return typeNameById;
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
 
    public VideoGameList getVideoGameList() {
    	VideoGameList gameList = new VideoGameList();
    	
    	String queryGames = "";
    	queryGames += "SELECT v.id, n.name, g.generation_id ";
    	queryGames += "FROM " + TABLE_VERSIONS + " v, " + TABLE_VERSION_NAMES +" n, " + TABLE_VERSION_GROUPS + " g ";
    	queryGames += "WHERE n.version_id = v.id AND v.version_group_id = g.id ";
    	queryGames += "GROUP BY v.id";
    	
        Cursor cursorGames = db.rawQuery(queryGames, null);
        
        // Build Game List from results
        while (cursorGames.moveToNext()) {
        	gameList.add(new VideoGame(cursorGames.getInt(0), cursorGames.getString(1), cursorGames.getInt(2)));
        }
    	
    	return gameList;
    }
    
    /**
     * 
     * @return
     */
    public ArrayList<EggGroup> getEggGroups() {
    	ArrayList<EggGroup> eggGroupList = new ArrayList<EggGroup>();
    	
    	String queryEggGroups = "SELECT e.id AS id, e.identifier AS identifier, p.name AS name FROM egg_groups e JOIN egg_group_prose p ON p.egg_group_id = e.id WHERE p.local_language_id = 9";
        
        Cursor cursorEggGroups = db.rawQuery(queryEggGroups, null);
        
        while (cursorEggGroups.moveToNext()) {
        	int id = cursorEggGroups.getInt(0);
        	String identifier = cursorEggGroups.getString(1);
        	String name = cursorEggGroups.getString(2);
        	int[] pokemonIds = getPokemonIdsForEggGroup(id);
        	
        	EggGroup eggGroup = new EggGroup(id, identifier, name);
        	eggGroup.setPokemonIds(pokemonIds);
        	eggGroupList.add(eggGroup);
        }
    	
    	return eggGroupList;
    }
    
    public int[] getPokemonIdsForEggGroup(int eggGroupId) {
    	int[] pokemonIds;
    	
    	String queryEggGroupIds = "SELECT species_id FROM pokemon_egg_groups WHERE egg_group_id = " + eggGroupId;
        
        Cursor cursorEggGroups = db.rawQuery(queryEggGroupIds, null);
        
        pokemonIds = new int[cursorEggGroups.getCount()];
        int index = 0;
        
        while (cursorEggGroups.moveToNext()) {
        	pokemonIds[index++] = cursorEggGroups.getInt(0);
        }
    	
    	return pokemonIds;
    }
    
}