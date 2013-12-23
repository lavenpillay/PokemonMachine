package com.darkdesign.pokemonmachine.helper;

public class Parser {
	public static String parseMoveDescription(String moveDescription) {
		String newString = moveDescription;
		
		newString = newString.replace("[]", "");
		newString = newString.replace("{mechanic:sleep}", "");
		
		newString = newString.replace("[sleep]", "SLEEP");
		newString = newString.replace("{mechanic:sleep}", "");
		
		newString = newString.replace("[regular damage]", "regular damage");
		newString = newString.replace("{mechanic:regular-damage}", "");
		
		newString = newString.replace("[Attack]", "ATTACK");
		newString = newString.replace("{mechanic:attack}", "");
		
		newString = newString.replace("[drains]", "DRAINS");
		newString = newString.replace("{mechanic:drain}", "");
		
		newString = newString.replace("[HP]", "HP");
		newString = newString.replace("{mechanic:hp}", "");
		
		newString = newString.replace("{type:grass}", "GRASS");
		
		newString = newString.replace("{ability:liquid-ooze}", "LIQUID OOZE");
		
		newString = newString.replace("{move:rapid-spin}", "RAPID SPIN");
		
		newString = newString.replace("{move:baton-pass}", "BATON PASS");
		
		return newString;
	}
}
