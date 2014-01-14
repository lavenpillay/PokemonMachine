package com.darkdesign.pokemonmachine.element;

import com.darkdesign.pokemonmachine.helper.Util;


/**
 * @author Laven2
 *
 */
public class Move {
	
	private String id = "";
	private String name = "";
	private String type = "";

	private String resourceURI = "";
	
	private String power = "";
	private String pp = "";
	private String accuracy = "";
	private String priority = "";

	private String level = "";
	
	private String effectShort = "";
	private String effectLong = "";
	private String effectChance = "";
	
	private String targets = "";
	private String damageClass = "";

	private String method = ""; // learn method

	
	public Move() {
		super();
		this.id = "";
		this.name = "";
		this.type = "";
		this.resourceURI = "";
		this.power = "";
		this.pp = "";
		this.accuracy = "";
		this.priority = "";
		this.level = "";
		this.effectShort = "";
		this.effectLong = "";
		this.effectChance = "";
		this.targets = "";
		this.damageClass = "";
		this.method = "";
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

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	public String getPP() {
		return pp;
	}

	public void setPP(String pp) {
		this.pp = pp;
	}

	public String getAccuracy() {
		return accuracy;
	}

	public void setAccuracy(String accuracy) {
		this.accuracy = accuracy;
	}

	
	
	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}	

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
