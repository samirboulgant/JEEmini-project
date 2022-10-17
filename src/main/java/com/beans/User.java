package com.beans;

public class User {

	private int user_code;
	private int StatusAdmin;
	private String nom, prenom, email, password;
	private String DateInscrip;
	

	

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(int user_code, String nom, String prenom, String email, String password) {
		super();
		this.user_code = user_code;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
	}
	
	

	public int getStatusAdmin() {
		return StatusAdmin;
	}

	public void setStatusAdmin(int statusAdmin) {
		StatusAdmin = statusAdmin;
	}

	public int getUser_code() {
		return user_code;
	}

	public void setUser_code(int user_code) {
		this.user_code = user_code;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDateInscrip() {
		return DateInscrip;
	}

	public void setDateInscrip(String dateInscrip) {
		DateInscrip = dateInscrip;
	}

	@Override
	public String toString() {
		return "User [user_code=" + user_code + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email
				+ ", password=" + password + ", DateInscrip=" + DateInscrip + "]";
	}

}
