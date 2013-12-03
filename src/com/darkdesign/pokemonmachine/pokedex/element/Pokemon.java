package com.darkdesign.pokemonmachine.pokedex.element;

import java.util.ArrayList;

public class Pokemon {
	// API-Values
	private String createdTimestamp; // maps to "created" in json
	private String modifiedTimestamp; // masp to "modified" in json
	
	// Pokemon Values
	private String nationalId;
	private String name;
	private String species;
	
	private int hp;
	private int attack;
	private int defense;
	private int spAtk;
	private int spDef;
	private int speed;
	private int total; // Total what ?

	private String height;
	private String weight;
	
	private ArrayList<Type> types;
	private ArrayList<Ability> abilities;
	private ArrayList<Move> moves;
	
	private String catchRate;
	private String eggCycles;
	private ArrayList<EggGroup> eggGroups;
	private String evYield; // In the format "1 Sp Atk"
	private int exp;
	private String growthRate;
	private String happiness;
	private String genderRatio; // Maps to "male_female_ratio" from json
	private String resourceURI; // What is this for ?
	
	
	public Pokemon() {
		super();
		this.nationalId = "";
		this.name = "";
	}
	
	public Pokemon(String id, String name) {
		super();
		this.nationalId = id;
		this.name = name;
	}

	public String getId() {
		return nationalId;
	}

	public void setId(String id) {
		this.nationalId = id;
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

	public String getNationalId() {
		return nationalId;
	}

	public void setNationalId(String nationalId) {
		this.nationalId = nationalId;
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

	public String getGenderRatio() {
		return genderRatio;
	}

	public void setGenderRatio(String genderRatio) {
		this.genderRatio = genderRatio;
	}

	public String getResourceURI() {
		return resourceURI;
	}

	public void setResourceURI(String resourceURI) {
		this.resourceURI = resourceURI;
	}
	
}
