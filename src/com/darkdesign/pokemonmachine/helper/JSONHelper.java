package com.darkdesign.pokemonmachine.helper;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;

import com.darkdesign.pokemonmachine.pokedex.element.Move;

public class JSONHelper {
	private static final String TAG = JSONHelper.class.getName();
	
	public static ArrayList<Move> getMovesListFromJSON(JSONArray jsonMovesArray) throws JSONException 
	{
		ArrayList<Move> movesList = new ArrayList<Move>();
		
		for (int i = 0; i < jsonMovesArray.length(); i++) {
			 JSONObject jsonMoveData = jsonMovesArray.getJSONObject(i);
			 
			 Move move = new Move();
			 move.setName(jsonMoveData.getString("name"));
			 move.setLearnType(jsonMoveData.getString("learn_type"));
			 move.setResourceURI(jsonMoveData.getString("resource_uri"));
			 
			 movesList.add(move);
			 
			 Log.d(TAG,"Read Move : " + move.getName() + "[" + move.getLearnType() + "]");
		}
		
		return movesList;
	}

}
