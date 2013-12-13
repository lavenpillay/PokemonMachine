package com.darkdesign.pokemonmachine.helper;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import com.darkdesign.pokemonmachine.element.Move;

public class Util {
	private static final int MOVE_ID_TOKEN_POSITION = 4;

	public static String padLeft(String stringToPad, int finalLength) {
		return String.format("%03d", Integer.valueOf(stringToPad));
	}
	
	public static String padLeft(int intToPad, int finalLength) {
		return String.format("%03d", intToPad);
	}
	
	public static String arrayListToCSV(ArrayList list) {
		return list.toString().replaceAll("[\\s\\[\\]]", "");
	}
	
	public static String toTitleCase(String stringToConvert) {
		
		String returnStr = "";
		
		if (stringToConvert.equals("")) {
			return "";
		}
		
		if (stringToConvert != null) {
	        String[] arr = stringToConvert.split(" ");
	        StringBuffer sb = new StringBuffer();
	        for (int i = 0; i < arr.length; i++) {
	        	sb.append(Character.toUpperCase(arr[i].charAt(0))).append(arr[i].substring(1)).append(" ");
	        }   
	        
	        returnStr =  sb.toString().trim();
		}

		return returnStr;
    }
	
	/**
	 * Returns the IDs of a list of Moves, as a CSV string
	 */
	public static String getMoveListIDsAsCSV(ArrayList<Move> moveList) {
		String returnStr = "";
		
		for (int i=0; i < moveList.size(); i++) {
			String resourceURI = moveList.get(i).getResourceURI();
			String[] moveData = resourceURI.split("/");
			String moveID = moveData[MOVE_ID_TOKEN_POSITION];
			returnStr += (moveID + ",");
		}
		
		// Trim final comma and return
		return returnStr.substring(0, returnStr.length() -1);
	}
	
	public static String[] getMoveListIDsAsArray(ArrayList<Move> moveList) {
		String[] ids = new String[moveList.size()];
		
		for (int i=0; i < moveList.size(); i++) {
			String resourceURI = moveList.get(i).getResourceURI();
			String[] moveData = resourceURI.split("/");
			String moveID = moveData[MOVE_ID_TOKEN_POSITION];
			ids[i] = moveID;
		}
		
		return ids;
	}
	
	public static ArrayList<Move> sortMovesByLevel(ArrayList<Move> list) {
		Collections.sort(list, new Comparator<Move>() {
		    @Override
		    public int compare(Move move1, Move move2) {
		        if (Integer.valueOf(move1.getLevel()) > Integer.valueOf(move2.getLevel()))
		            return 1;
		        if (Integer.valueOf(move1.getLevel()) < Integer.valueOf(move2.getLevel()))
		            return -1;
		        return 0;
		    }
		});
		
		return list;
	}

}
