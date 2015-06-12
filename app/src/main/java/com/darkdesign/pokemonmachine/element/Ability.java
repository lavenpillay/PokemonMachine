package com.darkdesign.pokemonmachine.element;

public class Ability {
	
	private int id;
	private String name;
	private String identifier;
	private boolean isHidden;
	private String flavourText;
	

	public Ability() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIdentifier() {
		return identifier;
	}

	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}

	public boolean isHidden() {
		return isHidden;
	}

	public void setHidden(boolean isHidden) {
		this.isHidden = isHidden;
	}

	public String getFlavourText() {
		return flavourText;
	}

	public void setFlavourText(String flavourText) {
		this.flavourText = flavourText;
	}
}
