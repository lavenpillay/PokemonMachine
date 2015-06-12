package com.darkdesign.pokemonmachine.element;

public class Evolution {
	private String level;
	private String method;
	private String resourceURI;
	private String identifier;
	private int pokemonId;
	private int previousEvolutionId = -1;
	private String triggerItemId;
	private String heldItemId;
	private String minimumHappiness;

	public Evolution() {
	}
	
	public Evolution(int pokemonId, int previousEvolutionId, String method) {
		this.pokemonId = pokemonId;
		this.method = method;
		this.previousEvolutionId = previousEvolutionId;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getResourceURI() {
		return resourceURI;
	}

	public void setResourceURI(String resourceURI) {
		this.resourceURI = resourceURI;
	}

	public int getPreviousEvolutionId() {
		return previousEvolutionId;
	}

	public void setPreviousEvolutionId(int previousEvolutionId) {
		this.previousEvolutionId = previousEvolutionId;
	}
	
	public String getIdentifier() {
		return identifier;
	}

	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}

	public int getPokemonId() {
		return pokemonId;
	}

	public void setPokemonId(int pokemonId) {
		this.pokemonId = pokemonId;
	}

	public String getTriggerItemId() {
		return triggerItemId;
	}

	public void setTriggerItemId(String triggerItemId) {
		this.triggerItemId = triggerItemId;
	}	

	public String getMinimumHappiness() {
		return minimumHappiness;
	}

	public void setMinimumHappiness(String minimumHapiness) {
		this.minimumHappiness = minimumHapiness;
	}

	public String getHeldItemId() {
		return heldItemId;
	}

	public void setHeldItemId(String heldItemId) {
		this.heldItemId = heldItemId;
	}
	
}
