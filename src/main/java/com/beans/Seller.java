package com.beans;

public class Seller extends User {

	private int codeUtilisateur;
	private String CIN;
	private String photoProfil;
	private int codeVille, CodeProfession;
	
	private String information;
	private String tel;
	
	
	public Seller() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Seller(int codeUtilisateur, String cIN, String photoProfil, int codeVille, String information, String tel) {
		super();
		this.codeUtilisateur = codeUtilisateur;
		CIN = cIN;
		this.photoProfil = photoProfil;
		this.codeVille = codeVille;
		this.information = information;
		this.tel = tel;
	}


	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public String getCIN() {
		return CIN;
	}
	public void setCIN(String cIN) {
		CIN = cIN;
	}
	public String getPhotoProfil() {
		return photoProfil;
	}
	public void setPhotoProfil(String photoProfil) {
		this.photoProfil = photoProfil;
	}
	public int getCodeVille() {
		return codeVille;
	}
	public void setCodeVille(int codeVille) {
		this.codeVille = codeVille;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public int getCodeUtilisateur() {
		return codeUtilisateur;
	}
	public void setCodeUtilisateur(int codeUtilisateur) {
		this.codeUtilisateur = codeUtilisateur;
	}


	public int getCodeProfession() {
		return CodeProfession;
	}


	public void setCodeProfession(int codeProfession) {
		CodeProfession = codeProfession;
	}

	

	
}
