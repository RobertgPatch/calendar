package com.ics414.calendar;

public class User {
	
	private String username;
	private int password;
	private String email;
	
	public User() {	}
	
	public User(String username, String password) {
		this.username = username;
		this.password = password.hashCode();
	}
	
	public User(String username, String password, String email) {
		this.username = username;
		this.password = password.hashCode();
		this.email    = email;
	}

	public String getUsername() { return this.username; }
	public int getPassword() { return this.password; }
	public String getEmail()    { return this.email; }
	public void setUsername(String username) { this.username = username; }	
	public void setPassword(String password) { this.password = password.hashCode(); }	
	public void setEmail(String email)       { this.email = email; }
}
