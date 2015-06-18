package com.darkdesign.pokemonmachine.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;

/**
 * Created by darkness on 2015/06/16.
 */

public class FavouritePokemonDatabaseHelper extends SQLiteOpenHelper {
    private static final String TEXT_TYPE = " TEXT";
    private static final String COMMA_SEP = ",";

    private static final String SQL_CREATE_TABLE =
            "CREATE TABLE " + FavouritePokemonDatabaseContract.FavouritePokemonEntry.TABLE_NAME + " (" +
                    FavouritePokemonDatabaseContract.FavouritePokemonEntry.COLUMN_NAME_ID + " INTEGER PRIMARY KEY," +
                    FavouritePokemonDatabaseContract.FavouritePokemonEntry.COLUMN_NAME_POKEMON_ID + " INTEGER)";

    private static final String SQL_DELETE_ENTRIES = "DELETE FROM " + FavouritePokemonDatabaseContract.FavouritePokemonEntry.TABLE_NAME;

    // If you change the database schema, you must increment the database version.
    public static final int DATABASE_VERSION = 1;
    public static final String DATABASE_NAME = "FavouritePokemon.db";

    public FavouritePokemonDatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    public long addFavourite(int pokemonId) {
        // Gets the data repository in write mode
        SQLiteDatabase db = getWritableDatabase();

        // Create a new map of values, where column names are the keys
        ContentValues values = new ContentValues();
        values.put(FavouritePokemonDatabaseContract.FavouritePokemonEntry.COLUMN_NAME_POKEMON_ID, pokemonId);

        // Insert the new row, returning the primary key value of the new row
        long newRowId;
        newRowId = db.insert(
                FavouritePokemonDatabaseContract.FavouritePokemonEntry.TABLE_NAME,
                null,
                values);

        return newRowId;
    }

    public boolean removeFavourite(int pokemonId) {
        // Gets the data repository in write mode
        SQLiteDatabase db = getWritableDatabase();

        return db.delete(FavouritePokemonDatabaseContract.FavouritePokemonEntry.TABLE_NAME, FavouritePokemonDatabaseContract.FavouritePokemonEntry.COLUMN_NAME_POKEMON_ID + "=" + pokemonId, null) > 0;
    }

    public void deleteAllEntries() {
        // Gets the data repository in write mode
        SQLiteDatabase db = getWritableDatabase();

        db.delete(FavouritePokemonDatabaseContract.FavouritePokemonEntry.TABLE_NAME, null, null);
    }

    public ArrayList<Integer> getFavourites() {
        ArrayList<Integer> favourites = new ArrayList<Integer>();

        SQLiteDatabase db = getReadableDatabase();

        // Define a projection that specifies which columns from the database
        // you will actually use after this query.
        String[] projection = {
                FavouritePokemonDatabaseContract.FavouritePokemonEntry.COLUMN_NAME_POKEMON_ID
        };

        // How you want the results sorted in the resulting Cursor
        String sortOrder =
                FavouritePokemonDatabaseContract.FavouritePokemonEntry.COLUMN_NAME_POKEMON_ID + " ASC";

        String selection = null;
        String[] selectionArgs = new String[0];

        Cursor c = db.query(
                FavouritePokemonDatabaseContract.FavouritePokemonEntry.TABLE_NAME,  // The table to query
                projection,                               // The columns to return
                selection,                                // The columns for the WHERE clause
                selectionArgs,                            // The values for the WHERE clause
                null,                                     // don't group the rows
                null,                                     // don't filter by row groups
                sortOrder                                 // The sort order
        );

        while(c.moveToNext()) {
            favourites.add(new Integer(c.getInt(0)));
        }

        c.close();

        return favourites;
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL(SQL_CREATE_TABLE);
    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {
        /*
        // This database is only a cache for online data, so its upgrade policy is
        // to simply to discard the data and start over
        db.execSQL(SQL_DELETE_ENTRIES);
        onCreate(db);
        */
    }
}
