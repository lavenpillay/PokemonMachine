package com.darkdesign.pokemonmachine.element;

public class EggGroup {

	private int id;
	private String identifier;
	private String name;


	public EggGroup() {
		// TODO Auto-generated constructor stub
	}
	
	

	public EggGroup(int id, String identifier, String name) {
		super();
		this.id = id;
		this.identifier = identifier;
		this.name = name;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}



	public String getIdentifier() {
		return identifier;
	}



	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}

	@Override
	public String toString() {
		return this.name;
	}

}
