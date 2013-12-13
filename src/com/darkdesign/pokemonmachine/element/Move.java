package com.darkdesign.pokemonmachine.element;

import java.util.ArrayList;

public class Move {
	private String learnType;
	private String name;
	private String resourceURI;
	
	private String power;
	private String pp;
	private String accuracy;

	private String level;
	
	public Move() {
		// TODO Auto-generated constructor stub
	}
	
	public String getLearnType() {
		return learnType;
	}

	public void setLearnType(String learnType) {
		this.learnType = learnType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
}
