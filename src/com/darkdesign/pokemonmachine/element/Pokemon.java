package com.darkdesign.pokemonmachine.element;

import java.util.ArrayList;

public class Pokemon {
	// API-Values
	private String createdTimestamp; // maps to "created" in json
	private String modifiedTimestamp; // masp to "modified" in json
	
	// Pokemon Values
	private int id;
	private int generationId;
	private int evolvesFromId;
	private int evolutionChainId;

	private String name;
	private String species;
	
	private int hp;
	private int attack;
	private int defense;
	private int spAtk;
	private int spDef;
	private int speed;
	private int total; // Total base stat values

	private String height;
	private String weight;
	
	private ArrayList<Type> types;
	private ArrayList<Ability> abilities;
	private ArrayList<Move> moves;
	private ArrayList<Evolution> evolutions;
	
	private String catchRate;
	private String eggCycles;
	private String hatchCounter;
	private ArrayList<EggGroup> eggGroups;
	private String evYield; // In the format "1 Sp Atk"
	private int exp;
	private String growthRate;
	private String happiness;
	private String genderRate;
	private String resourceURI;

	private boolean isBaby;
	private boolean isFormSwitchable;

	public Pokemon() {
		
		this.createdTimestamp = "";
		this.modifiedTimestamp = "";
		this.id = -1;
		this.generationId = -1;
		this.evolvesFromId = -1;
		this.evolutionChainId = -1;
		this.name = "";
		this.species = "";
		this.hp = 0;
		this.attack = 0;
		this.defense = 0;
		this.spAtk = 0;
		this.spDef = 0;
		this.speed = 0;
		this.total = 0;
		this.height = "";
		this.weight = "";
		this.types = new ArrayList<Type>(); // TODO Implement getting Pokemon Type(s) 
		this.abilities = new ArrayList<Ability>();
		this.moves = new ArrayList<Move>();
		this.evolutions = new ArrayList<Evolution>();
		this.catchRate = "";
		this.eggCycles = "";
		this.hatchCounter = "";
		this.eggGroups = new ArrayList<EggGroup>();
		this.evYield = "";
		this.exp = 0;
		this.growthRate = "";
		this.happiness = "";
		this.genderRate = "";
		this.resourceURI = "";
		this.isBaby = false;
		this.isFormSwitchable = false;
	}

	public Pokemon(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	/**
	 *  Returns all the Moves which match a specific type.
	 *  Types include : "level up", "trade", etc.
	 *  
	 * @param type
	 * @return
	 */
	public ArrayList<Move> getMovesByType(String type) {
		ArrayList<Move> moveSubset = new ArrayList<Move>();
		
		for (int i=0; i < moves.size(); i++) {
			Move move = moves.get(i);
			if (move.getMethod().equals(type)) {
				moveSubset.add(move);
			}
		}
		
		return moveSubset;
	}
	

	/* ----------------------------- GETTERS and SETTERS ------------------------ */
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCreatedTimestamp() {
		return createdTimestamp;
	}

	public void setCreatedTimestamp(String createdTimestamp) {
		this.createdTimestamp = createdTimestamp;
	}

	public String getModifiedTimestamp() {
		return modifiedTimestamp;
	}

	public void setModifiedTimestamp(String modifiedTimestamp) {
		this.modifiedTimestamp = modifiedTimestamp;
	}

	public int getNationalId() {
		return id;
	}

	public void setNationalId(int nationalId) {
		this.id = nationalId;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public int getHp() {
		return hp;
	}

	public void setHp(int hp) {
		this.hp = hp;
	}

	public int getAttack() {
		return attack;
	}

	public void setAttack(int attack) {
		this.attack = attack;
	}

	public int getDefense() {
		return defense;
	}

	public void setDefense(int defense) {
		this.defense = defense;
	}

	public int getSpAtk() {
		return spAtk;
	}

	public void setSpAtk(int spAtk) {
		this.spAtk = spAtk;
	}

	public int getSpDef() {
		return spDef;
	}

	public void setSpDef(int spDef) {
		this.spDef = spDef;
	}

	public int getSpeed() {
		return speed;
	}

	public void setSpeed(int speed) {
		this.speed = speed;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public ArrayList<Type> getTypes() {
		return types;
	}

	public void setTypes(ArrayList<Type> types) {
		this.types = types;
	}

	public ArrayList<Ability> getAbilities() {
		return abilities;
	}

	public void setAbilities(ArrayList<Ability> abilities) {
		this.abilities = abilities;
	}

	public ArrayList<Evolution> getEvolutions() {
		return evolutions;
	}

	public void setEvolutions(ArrayList<Evolution> evolutions) {
		this.evolutions = evolutions;
	}

	public ArrayList<Move> getMoves() {
		return moves;
	}

	public void setMoves(ArrayList<Move> moves) {
		this.moves = moves;
	}

	public String getCatchRate() {
		return catchRate;
	}

	public void setCatchRate(String catchRate) {
		this.catchRate = catchRate;
	}

	public String getEggCycles() {
		return eggCycles;
	}

	public void setEggCycles(String eggCycles) {
		this.eggCycles = eggCycles;
	}

	public ArrayList<EggGroup> getEggGroups() {
		return eggGroups;
	}

	public void setEggGroups(ArrayList<EggGroup> eggGroups) {
		this.eggGroups = eggGroups;
	}

	public String getEvYield() {
		return evYield;
	}

	public void setEvYield(String evYield) {
		this.evYield = evYield;
	}

	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public String getGrowthRate() {
		return growthRate;
	}

	public void setGrowthRate(String growthRate) {
		this.growthRate = growthRate;
	}

	public String getHappiness() {
		return happiness;
	}

	public void setHappiness(String happiness) {
		this.happiness = happiness;
	}

	public String getGenderRate() {
		return genderRate;
	}

	public void setGenderRate(String genderRate) {
		this.genderRate = genderRate;
	}

	public String getResourceURI() {
		return resourceURI;
	}

	public void setResourceURI(String resourceURI) {
		this.resourceURI = resourceURI;
	}

	public int getGenerationId() {
		return generationId;
	}

	public void setGenerationId(int generationId) {
		this.generationId = generationId;
	}	

	public int getEvolvesFromId() {
		return evolvesFromId;
	}

	public void setEvolvesFromId(int evolvesFromId) {
		this.evolvesFromId = evolvesFromId;
	}

	public int getEvolutionChainId() {
		return evolutionChainId;
	}

	public void setEvolutionChainId(int evolutionChainId) {
		this.evolutionChainId = evolutionChainId;
	}

	public boolean isBaby() {
		return isBaby;
	}

	public void setBaby(boolean isBaby) {
		this.isBaby = isBaby;
	}

	public String getHatchCounter() {
		return hatchCounter;
	}

	public void setHatchCounter(String hatchCounter) {
		this.hatchCounter = hatchCounter;
	}	

	public boolean isFormSwitchable() {
		return isFormSwitchable;
	}

	public void setFormSwitchable(boolean isFormSwitchable) {
		this.isFormSwitchable = isFormSwitchable;
	}
}
