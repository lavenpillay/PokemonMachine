package com.darkdesign.pokemonmachine.element;

public class VideoGame {
	private int id;
	private String name;
	private int generation;
	
	public VideoGame(int id, String name, int generation) {
		super();
		this.id = id;
		this.name = name;
		this.generation = generation;
	}

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

	public int getGeneration() {
		return generation;
	}

	public void setGeneration(int generation) {
		this.generation = generation;
	}
	
	
}
