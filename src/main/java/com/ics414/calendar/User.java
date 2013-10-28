package com.ics414.calendar;

import javax.persistence.*;

@Entity
@Table(name="USER")
public class User {
	
	@Id
	@Column(name="USER_ID", nullable=false)
    @GeneratedValue(strategy=GenerationType.AUTO)
	private long userId;
	
	@Column(name="EMAIL", nullable=false, length=100)
	private String email;
	
	@Column(name="PASSWORD", nullable=false)
	private int password;
	
	public User() {	}
	
	public User(String email, String password) {
		this.email = email;
		this.password = password.hashCode();
	}
	
	public static User getUser(String username, String password) {
		User user = null;
		return user;
	}

	public int getPassword() { return this.password; }
	public String getEmail()    { return this.email; }	
	public void setPassword(String password) { this.password = password.hashCode(); }	
	public void setEmail(String email)       { this.email = email; }
}
