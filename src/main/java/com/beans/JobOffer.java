package com.beans;

import java.sql.Timestamp;

public class JobOffer {
 
	private int code_offer;
	private String title, description;
	private Timestamp creation_date;
	private int CodeUtilisateur, CodeVille, CodeProfession;
	
	public JobOffer() {
		// TODO Auto-generated constructor stub
	}

	
	public int getCodeUtilisateur() {
		return CodeUtilisateur;
	}


	public void setCodeUtilisateur(int codeUtilisateur) {
		CodeUtilisateur = codeUtilisateur;
	}


	public int getCode_offer() {
		return code_offer;
	}

	public void setCode_offer(int code_offer) {
		this.code_offer = code_offer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Timestamp getCreation_date() {
		return creation_date;
	}

	public void setCreation_date(Timestamp now) {
		this.creation_date = now;
	}


	public int getCodeVille() {
		return CodeVille;
	}


	public void setCodeVille(int codeVille) {
		CodeVille = codeVille;
	}


	public int getCodeProfession() {
		return CodeProfession;
	}


	public void setCodeProfession(int codeProfession) {
		CodeProfession = codeProfession;
	}
	
}
