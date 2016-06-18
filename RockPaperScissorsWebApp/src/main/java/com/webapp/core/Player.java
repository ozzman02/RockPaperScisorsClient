package com.webapp.core;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Player {
	
	String name;
	
	public Player() {}
	
	public Player(String name) {
		setName(name);
	}
		
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Player [name=" + name + "]";
	}
	
}
