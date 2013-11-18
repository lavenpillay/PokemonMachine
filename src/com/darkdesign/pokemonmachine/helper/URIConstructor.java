package com.darkdesign.pokemonmachine.helper;

public class URIConstructor {
	public void URIConstructor() {
	}
	
	public static String nationalID(int id) {
		return "http://pokeapi.co/api/v1/pokemon/" + Integer.toString(id) + "/";
	}
	
	public static String name(String name) {
		return "http://pokeapi.co/api/v1/pokemon/" + name + "/";
	}
}