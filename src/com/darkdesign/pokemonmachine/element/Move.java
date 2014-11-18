package com.darkdesign.pokemonmachine.element;

import com.darkdesign.pokemonmachine.helper.Util;


/**
 * @author Laven2
 *
 */
public class Move {
	
	private int id;
	private String name = "";
	private String type = "";

	private String resourceURI = "";
	
	private int power;
	private int pp;
	private int accuracy;
	private int priority;

	private int level;
	
	private String effectShort = "";
	private String effectLong = "";
	private String effectChance = "";
	
	private String targets = "";
	private String damageClass = "";

	private String method = ""; // learn method

	
	public Move() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = Util.toTitleCase(name.replace("-", " "));
	}

	public String getResourceURI() {
		return resourceURI;
	}

	public void setResourceURI(String resourceURI) {
		this.resourceURI = resourceURI;
	}

	public int getPower() {
		return power;
	}

	public void setPower(int power) {
		this.power = power;
	}

	public int getPP() {
		return pp;
	}

	public void setPP(int pp) {
		this.pp = pp;
	}

	public int getAccuracy() {
		return accuracy;
	}

	public void setAccuracy(int accuracy) {
		this.accuracy = accuracy;
	}
	
	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}	

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public String getEffectShort() {
		return effectShort;
	}

	public void setEffectShort(String effectShort) {
		this.effectShort = effectShort;
	}

	public String getEffectLong() {
		return effectLong;
	}

	public void setEffectLong(String effectLong) {
		this.effectLong = effectLong;
	}

	public String getEffectChance() {
		return effectChance;
	}

	public void setEffectChance(String effectChance) {
		this.effectChance = effectChance;
	}

	public String getTargets() {
		return targets;
	}

	public void setTargets(String targets) {
		this.targets = targets;
	}

	public String getDamageClass() {
		return damageClass;
	}

	public void setDamageClass(String damageClass) {
		this.damageClass = damageClass;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
