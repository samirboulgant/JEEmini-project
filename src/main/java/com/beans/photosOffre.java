package com.beans;

public class photosOffre {

	private int CodePhotos;
	private String PhotoPath;
	private int CodeOffer;
	
	public photosOffre() {
		// TODO Auto-generated constructor stub
	}

	public photosOffre( String photoPath) {
		super();
		
		PhotoPath = photoPath;
		
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

	public int getCodeOffer() {
		return CodeOffer;
	}

	public void setCodeOffer(int codeOffer) {
		CodeOffer = codeOffer;
	}

	@Override
	public String toString() {
		return "photosOffre [CodePhotos=" + CodePhotos + ", PhotoPath=" + PhotoPath + ", CodeOffer=" + CodeOffer + "]";
	}

	
}
