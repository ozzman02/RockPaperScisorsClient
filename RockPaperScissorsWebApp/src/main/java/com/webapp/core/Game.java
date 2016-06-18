package com.webapp.core;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Game {
	
	private Player player;
	private String strategy;
	
	public Game() {}

	public Game(Player player, String strategy) {
		setPlayer(player);
		setStrategy(strategy);
	}

	public Player getPlayer() {
		return player;
	}

	public void setPlayer(Player player) {
		this.player = player;
	}

	public String getStrategy() {
		return strategy;
	}

	public void setStrategy(String strategy) {
		this.strategy = strategy;
	}

	@Override
	public String toString() {
		return "Game [player=" + player + ", strategy=" + strategy + "]";
	}
	
}
