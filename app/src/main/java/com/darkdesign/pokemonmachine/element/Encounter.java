package com.darkdesign.pokemonmachine.element;

/**
 * Created by darkness on 2015/06/19.
 */
public class Encounter {
    private int id;
    private int versionId;
    private Location location;
    private int encounterSlotId;
    private int pokemonId;
    private int minLevel;
    private int maxLevel;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVersionId() {
        return versionId;
    }

    public void setVersionId(int versionId) {
        this.versionId = versionId;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public int getEncounterSlotId() {
        return encounterSlotId;
    }

    public void setEncounterSlotId(int encounterSlotId) {
        this.encounterSlotId = encounterSlotId;
    }

    public int getPokemonId() {
        return pokemonId;
    }

    public void setPokemonId(int pokemonId) {
        this.pokemonId = pokemonId;
    }

    public int getMinLevel() {
        return minLevel;
    }

    public void setMinLevel(int minLevel) {
        this.minLevel = minLevel;
    }

    public int getMaxLevel() {
        return maxLevel;
    }

    public void setMaxLevel(int maxLevel) {
        this.maxLevel = maxLevel;
    }



}
