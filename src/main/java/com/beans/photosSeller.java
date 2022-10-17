package com.beans;

public class photosSeller {
	private int CodePhotos;
	private String PhotoPath;
	private int CodeUtilisateur;

	public photosSeller() {
		// TODO Auto-generated constructor stub
	}

	public photosSeller( String photoPath, int codeUtilisateur) {
		super();
		
		PhotoPath = photoPath;
		CodeUtilisateur = codeUtilisateur;
	}

	public int getCodePhotos() {
		return CodePhotos;
	}

	public void setCodePhotos(int codePhotos) {
		CodePhotos = codePhotos;
	}

	public String getPhotoPath() {
		return PhotoPath;
	}

	public void setPhotoPath(String photoPath) {
		PhotoPath = photoPath;
	}

	public int getCodeUtilisateur() {
		return CodeUtilisateur;
	}

	public void setCodeUtilisateur(int codeUtilisateur) {
		CodeUtilisateur = codeUtilisateur;
	}

	@Override
	public String toString() {
		return "photosSeller [CodePhotos=" + CodePhotos + ", PhotoPath=" + PhotoPath + ", CodeUtilisateur="
				+ CodeUtilisateur + "]";
	}

	
}
