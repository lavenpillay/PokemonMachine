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
	
	public static String stripZeros(String stringToModify) {
		return stringToModify.replaceAll("0", "");
	}
	
	/**
	 * 
	 * @param stringToConvert
	 * @return
	 */
	public static String toTitleCase(String stringToConvert) {
		
		String returnStr = "";
		
		if (stringToConvert == null || stringToConvert.equals("")) {
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
	 * 
	 * @param text
	 * @return
	 */
	public static String toAllLowerCase(String text) {
		String newText;
		newText = text.toLowerCase();
		newText = newText.replace(" ", "");
		newText = newText.replace("_", "");
		newText = newText.replace("-", "");
		
		return newText;
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
	
	public static int arrayIndexOf(String[] array, String value) {
		int index = 0;
		boolean valueFound = false;
		
		while (!valueFound) {
			if (array[index].equalsIgnoreCase(value)) {
				break;
			}
			index++;
		}
		
		return index;
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
	
	public static boolean stringIsInteger(String str) {
		try  
		  {  
		    int i = Integer.parseInt(str);  
		  }  
		  catch(NumberFormatException nfe)  
		  {  
		    return false;  
		  }  
		
		  return true;
	}
	
	public String convertKilogramsToPounds(double valueInKilograms) {
		return String.valueOf(valueInKilograms / 2.2);
	}
	
	public String convertMetersToFeetAndInches(double valueInMeters) {
		double valueInInches = valueInMeters * 39.37;
		int feetPart = (int) (valueInInches / 12);
		int inchesPart = (int) (valueInInches % 12);
		
		String finalValue = feetPart + "' " + inchesPart + "\"";
				
		return finalValue; 
	}

	/**
	 * 
	 * @param damagePercentageType1
	 * @param damagePercentageType2
	 * @return
	 */
	public static String getAttackEfficacy(int damagePercentageType1, int damagePercentageType2) {
		String damage = "";

		if (damagePercentageType2 == Constants.TYPE_NULL) {
			if (damagePercentageType1 == 0) {
				damage = Constants.DAMAGE_IMMUNE;
			} else if (damagePercentageType1 == 50) {
				damage = Constants.DAMAGE_HALF;
			} else if (damagePercentageType1 == 100) {
				damage = Constants.DAMAGE_REGULAR;
			} else if (damagePercentageType1 == 200) {
				damage = Constants.DAMAGE_DOUBLE;
			}
		} else {
			if (damagePercentageType1 == 100 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE_REGULAR;
			} else if (damagePercentageType1 == 200 && damagePercentageType2 == 50) {
				damage = Constants.DAMAGE_REGULAR;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 200) {
				damage = Constants.DAMAGE_REGULAR;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE_REGULAR;
			} else if (damagePercentageType1 == 100 && damagePercentageType2 == 50) {
				damage = Constants.DAMAGE_HALF;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE_HALF;
			} else if (damagePercentageType1 == 100 && damagePercentageType2 == 200) {
				damage = Constants.DAMAGE_DOUBLE;
			} else if (damagePercentageType1 == 200 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE_DOUBLE;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 50) {
				damage = Constants.DAMAGE_QUARTER;
			} else if (damagePercentageType1 == 0 || damagePercentageType2 == 0) {
				damage = Constants.DAMAGE_IMMUNE;
			} else if (damagePercentageType1 == 200 && damagePercentageType2 == 200) {
				damage = Constants.DAMAGE_QUADRUPLE;
			}
		}
		
		return damage;
	}
	
}
