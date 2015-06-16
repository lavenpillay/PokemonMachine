package com.darkdesign.pokemonmachine.database;

import android.provider.BaseColumns;

/**
 * Created by darkness on 2015/06/16.
 */
public class FavouritePokemonDatabaseContract {
    // To prevent someone from accidentally instantiating the contract class,
    // give it an empty constructor.
    public FavouritePokemonDatabaseContract() {}

    /* Inner class that defines the table contents */
    public static abstract class FavouritePokemonEntry implements BaseColumns {
        public static final String TABLE_NAME = "favourite_pokemon";
        public static final String COLUMN_NAME_ID = "id";
        public static final String COLUMN_NAME_POKEMON_ID = "pokemon_id";
    }
}
