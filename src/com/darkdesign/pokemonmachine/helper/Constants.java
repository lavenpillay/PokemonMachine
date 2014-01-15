package com.darkdesign.pokemonmachine.helper;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class Constants {
	public static final int TOTAL_POKEMON_COUNT = 718;
	public static final int POKEMON_ID_LENGTH = 3;
	
	public static final String PATH_TO_POKEMON_SPRITES = "pokemon_sprites/";
	public static final String PATH_TO_POKEMON_IMAGES = "pokemon_images/";
	public static final String PATH_TO_ITEM_SPRITES = "items/";

	public static final String LEARN_TYPE_LEVEL_UP = "Level up";
	public static final String LEARN_TYPE_TUTOR = "Tutor";
	public static final String LEARN_TYPE_MACHINE = "Machine";
	public static final String LEARN_TYPE_EGG_MOVE = "Egg";

	public static final String EVOLUTION_METHOD_LEVEL_UP = "1";
	public static final String EVOLUTION_METHOD_TRADE = "2";
	public static final String EVOLUTION_METHOD_USE_ITEM = "3";
	public static final String EVOLUTION_METHOD_SHED = "4";
	
	public static final String VERSION_GROUP_XY = "15";
	public static final String VERSION_GROUP_BLACKWHITE_2 = "14";
	
	public static final int NUMBER_OF_TYPES = 18;
	
	public static final String[] POKEMON_WITH_NO_GEN_6_MOVEDATA = 
		{"19", "20", "52", "53", "109", "110", "137", "151", "152", "153", "154", "155", "156", "157", "158", "159", 
		"160", "200", "201", "233", "234", "243", "244", "245", "249", "250", "251", "252", "253", "254", "258", 
		"259", "260", "287", "288", "289", "343", "344", "349", "350", "351", "377", "378", "379", "380", "381", 
		"382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "401", 
		"402", "420", "421", "427", "428", "429", "431", "432", "456", "457", "474", "480", "481", "482", "483",
		"484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498",
		"499", "500", "501", "502", "503", "546", "547", "554", "555", "562", "563", "592", "593", "602", "603", 
		"604", "605", "606", "626", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", 
		"649"};
	
	public static final int STAT_BAR_HEIGHT = 3;
	public static final double STAT_BAR_LENGTH_MULTIPLIER = 1; // change to 0.5 [128 length for a 255 value]
	
	private static final Map<String, Integer> TYPE_COLORS_PASTEL;
    static {
    	Map<String, Integer> cMap = new HashMap<String, Integer>();
        cMap.put("bug", 0xffeafbe1);
        cMap.put("dark", 0xffeafbe1);
        cMap.put("dragon", 0xffeafbe1);
        cMap.put("electric", 0xffeafbe1);
        cMap.put("fairy", 0xffeafbe1);
        cMap.put("fighting", 0xffeafbe1);
        cMap.put("fire", 0xffeafbe1);
        cMap.put("flying", 0xffeafbe1);
        cMap.put("ghost", 0xffeafbe1);
        cMap.put("grass", 0xffeafbe1);
        cMap.put("ground", 0xffeafbe1);
        cMap.put("ice", 0xffeafbe1);
        cMap.put("normal", 0xffeafbe1);
        cMap.put("poison", 0xffeafbe1);
        cMap.put("psychic", 0xffeafbe1);
        cMap.put("rock", 0xffeafbe1);
        cMap.put("steel", 0xffeafbe1);
        cMap.put("water", 0xffeafbe1);
        
        TYPE_COLORS_PASTEL = Collections.unmodifiableMap(cMap);
    }
}
