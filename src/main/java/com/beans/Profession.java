package com.beans;

public class Profession {

	private int CodeProfession;
	private String Nom;
	
	public Profession() {
		// TODO Auto-generated constructor stub
	}

	public int getCodeProfession() {
		return CodeProfession;
	}

	public void setCodeProfession(int codeProfession) {
		CodeProfession = codeProfession;
	}

	public String getNom() {
		return Nom;
	}

	public void setNom(String nom) {
		Nom = nom;
	}

	@Override
	public String toString() {
		return "Profession [CodeProfession=" + CodeProfession + ", Nom=" + Nom + "]";
	}

	
}
