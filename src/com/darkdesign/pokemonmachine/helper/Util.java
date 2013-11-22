package com.darkdesign.pokemonmachine.helper;

public class Util {
	public static String padLeft(String stringToPad, int finalLength) {
		return String.format("%03d", Integer.valueOf(stringToPad));
	}
	
	public static String padLeft(int intToPad, int finalLength) {
		return String.format("%03d", intToPad);
	}

}
