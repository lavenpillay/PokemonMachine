package com.darkdesign.pokemonmachine.helper;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class Constants {
	public static final int TOTAL_POKEMON_COUNT = 719;
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
	public static final String EVOLUTION_METHOD_MEGAEVOLUTION = "100";
	
	public static final String VERSION_GROUP_XY = "15";
	public static final String VERSION_GROUP_BLACKWHITE_2 = "14";
	
	public static final int NUMBER_OF_TYPES = 18;
	
	public static final int TYPE_NORMAL = 1;
	public static final int TYPE_FIGHTING = 2;
	public static final int TYPE_FLYING = 3;
	public static final int TYPE_POISON = 4;
	public static final int TYPE_GROUND = 5;
	public static final int TYPE_ROCK = 6;
	public static final int TYPE_BUG = 7;
	public static final int TYPE_GHOST = 8;
	public static final int TYPE_STEEL = 9;
	public static final int TYPE_FIRE = 10;
	public static final int TYPE_WATER = 11;
	public static final int TYPE_GRASS = 12;
	public static final int TYPE_ELECTRIC = 13;
	public static final int TYPE_PSYCHIC = 14;
	public static final int TYPE_ICE = 15;
	public static final int TYPE_DRAGON = 16;
	public static final int TYPE_DARK = 17;
	public static final int TYPE_FAIRY = 18;
	
	public static final int TYPE_NULL = -1;
	
	public static final String DAMAGE_STRING_IMMUNE = "Immune";
	public static final String DAMAGE_STRING_HALF = "Half";
	public static final String DAMAGE_STRING_QUARTER = "Quarter";
	public static final String DAMAGE__STRING_REGULAR = "Regular";
	public static final String DAMAGE_STRING_DOUBLE = "x2";
	public static final String DAMAGE_STRING_QUADRUPLE = "x4";
	
	public static final int DAMAGE_IMMUNE = 0;
	public static final int DAMAGE_HALF = 50;
	public static final int DAMAGE_REGULAR = 100;
	public static final int DAMAGE_DOUBLE = 200;
	
	public static final String GENDER_RATE_STRING_GENDERLESS = "Genderless";
	public static final String GENDER_RATE_STRING_0 = "Male: 100%\nFemale: 0%";
	public static final String GENDER_RATE_STRING_1 = "Male: 87.5%\nFemale: 12.5%";
	public static final String GENDER_RATE_STRING_2 = "Male: 75%\nFemale: 25%";
	public static final String GENDER_RATE_STRING_4 = "Male: 50%\nFemale: 50%";
	public static final String GENDER_RATE_STRING_6 = "Male: 25%\nFemale: 75%";
	public static final String GENDER_RATE_STRING_8 = "Male: 0%\nFemale: 100%";
	
	public static final String ITEM_CATEGORY_SPECIAL_BALLS = "special-balls";
	public static final String ITEM_CATEGORY_STANDARD_BALLS = "standard-balls";
	public static final String ITEM_CATEGORY_EVOLUTION = "evolution";
	
	public static final int ITEM_IMAGE_SCALE_MULTIPLIER = 8;
	public static final int EVOLUTION_ITEM_IMAGE_SCALE_MULTIPLIER = 3;
	public static final int POKEMON_EVOLUTION_IMAGE_SCALE_MULTIPLIER = 1;
	
	public static final String COLOR_EFFECT_CHANCE = "#007FFF";
	public static final String COLOR_MOVE_NAME = "#1111AA";
	public static final String COLOR_MECHANIC_NAME = "#cc0029";
	public static final String COLOR_ABILITY_NAME = "#FF7F2A";
	public static final String COLOR_ITEM_NAME = "#00D4FF";
	
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
