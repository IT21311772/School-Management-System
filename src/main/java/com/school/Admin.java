package com.school;

public class Admin {
	
	// Attributes
	private int id;
	private String username;
	private String password;
	
	// Constructor
	public Admin(int id, String username, String password) {
		this.id = id;
		this.username = username;
		this.password = password;
	}

	// Getters
	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
	
	

}
