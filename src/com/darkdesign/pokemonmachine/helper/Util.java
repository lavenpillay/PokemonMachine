package com.darkdesign.pokemonmachine.helper;

import java.util.ArrayList;

public class Util {
	public static String padLeft(String stringToPad, int finalLength) {
		return String.format("%03d", Integer.valueOf(stringToPad));
	}
	
	public static String padLeft(int intToPad, int finalLength) {
		return String.format("%03d", intToPad);
	}
	
	public static String arrayListToCSV(ArrayList list) {
		return list.toString().replaceAll("[\\s\\[\\]]", "");
	}

}
