package com.webapp.core;

import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Tournament {

	private ArrayList<Game> games;
	
	public Tournament() {}

	public Tournament(ArrayList<Game> games) {
		this.games = games;
	}

	public ArrayList<Game> getGames() {
		return games;
	}

	public void setGames(ArrayList<Game> games) {
		this.games = games;
	}

	@Override
	public String toString() {
		return "Tournament [games=" + games + "]";
	}
}
