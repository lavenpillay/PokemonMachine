package com.darkdesign.pokemonmachine.helper;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.darkdesign.pokemonmachine.element.Move;

public class Parser {
	
	private static final String TAG = Parser.class.getName();
	
	public static String parseMoveDescription(Move move) {
		String newString = move.getEffectLong();
		
		// Handle "Effect Chance"
		newString = newString.replace("$effect_chance", move.getEffectChance());
		
		// Parse Move Names
		Pattern MATCH_MOVE_PATTERN = Pattern.compile("\\{move:(.*?)\\}");
		Matcher moveMatcher = MATCH_MOVE_PATTERN.matcher(newString);
		String moveName = "";
		
		while (moveMatcher.find()) {
		    moveName = moveMatcher.group(1);
		    //Log.v(TAG, "Found MOVE match : " + moveName);
		    newString = newString.replace("{move:" + moveName + "}", moveName.toUpperCase());
		}
		
		// Parse Mechanics
		newString = newString.replace("[", "");
		newString = newString.replace("]", "");
		Pattern MATCH_MECHANIC_PATTERN = Pattern.compile("\\{mechanic:(.*?)\\}");
		Matcher mechanicMatcher = MATCH_MECHANIC_PATTERN.matcher(newString);
		String mechanicName = "";
		
		while (mechanicMatcher.find()) {
			mechanicName = mechanicMatcher.group(1);
		    newString = newString.replace("{mechanic:" + mechanicName + "}", "");
		}
		
		// Parse Abilities
		Pattern MATCH_ABILITY_PATTERN = Pattern.compile("\\{ability:(.*?)\\}");
		Matcher abilityMatcher = MATCH_ABILITY_PATTERN.matcher(newString);
		String abilityName = "";
		
		while (abilityMatcher.find()) {
			abilityName = abilityMatcher.group(1);
		    //Log.v(TAG, "Found ABILITY match : " + abilityName);
		    newString = newString.replace("{ability:" + abilityName + "}", abilityName.toUpperCase());
		}
		
		// Parse Items
		Pattern MATCH_ITEM_PATTERN = Pattern.compile("\\{item:(.*?)\\}");
		Matcher itemMatcher = MATCH_ITEM_PATTERN.matcher(newString);
		String itemName = "";
		
		while (itemMatcher.find()) {
			itemName = itemMatcher.group(1);
		    //Log.v(TAG, "Found ITEM match : " + itemName);
		    newString = newString.replace("{item:" + itemName + "}", itemName.toUpperCase());
		}
		
		// Parse Types
		Pattern MATCH_TYPE_PATTERN = Pattern.compile("\\{type:(.*?)\\}");
		Matcher typeMatcher = MATCH_TYPE_PATTERN.matcher(newString);
		String typeName = "";
		
		while (typeMatcher.find()) {
			typeName = typeMatcher.group(1);
		    //Log.v(TAG, "Found TYPE match : " + typeName);
		    newString = newString.replace("{type:" + typeName + "}", typeName.toUpperCase() + "-type");
		}
		
		return newString;
	}
}
