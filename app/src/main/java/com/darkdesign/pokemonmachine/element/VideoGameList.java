package com.darkdesign.pokemonmachine.element;

import java.util.ArrayList;
import java.util.Collection;

public class VideoGameList extends ArrayList<VideoGame> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8926359682791418874L;

	public VideoGameList() {
		super();

	}

	public VideoGameList(Collection<? extends VideoGame> collection) {
		super(collection);

	}

	public VideoGameList(int capacity) {
		super(capacity);
	}

	
}
