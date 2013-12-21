package com.darkdesign.pokemonmachine.element;

public class Evolution {
	private String level;
	private String method;
	private String resourceURI;
	private String pokemonId;
	private String previousEvolutionId;
	private String triggerItemId;
	private String minimumHappiness;

	public Evolution() {
		// TODO Auto-generated constructor stub
	}
	
	public Evolution(String pokemonId, String previousEvolutionId, String method) {
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

	public String getPreviousEvolutionId() {
		return previousEvolutionId;
	}

	public void setPreviousEvolutionId(String previousEvolutionId) {
		this.previousEvolutionId = previousEvolutionId;
	}

	public String getPokemonId() {
		return pokemonId;
	}

	public void setPokemonId(String pokemonId) {
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
}
