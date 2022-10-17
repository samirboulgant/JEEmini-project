package com.model;

import java.io.IOException;
import java.util.HashMap;

import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.beans.Seller;
import com.beans.User;

public class EditSellerProfileForm {

	public EditSellerProfileForm() {
		// TODO Auto-generated constructor stub
	}

	private String result;
	private Map<String, String> errors = new HashMap<String, String>();

	public String getResult() {
		return result;
	}

	public Map<String, String> getErrors() {
		return errors;
	}

	public Seller editProfile(HttpServletRequest request) throws IOException, ServletException {

		HttpSession session = request.getSession();

		String email = request.getParameter("email");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String tel = request.getParameter("tel");
		int prof = Integer.parseInt(request.getParameter("profession"));
		int ville = Integer.parseInt(request.getParameter("ville"));
		String password = request.getParameter("password");
		String cin = request.getParameter("cin");
		String information = request.getParameter("information");
		String photopath = request.getParameter("get_photo_path");

		Seller seller = new Seller();

		try {
			Validator.validationEmail(email);
		} catch (Exception e) {
			this.errors.put("email", e.getMessage());
		}

		try {
			Validator.validationName(nom);
		} catch (Exception e) {
			this.errors.put("nom", e.getMessage());
		}

		try {
			Validator.validationName(prenom);
		} catch (Exception e) {
			this.errors.put("prenom", e.getMessage());
		}

		try {
			Validator.validationCin(cin);
		} catch (Exception e) {
			this.errors.put("cin", e.getMessage());
		}
		try {
			Validator.validationTel(tel);
		} catch (Exception e) {
			this.errors.put("tel", e.getMessage());
		}

		try {

			if (information == null) {
				throw new Exception("Merci de saisir votre profession.");
			}

		} catch (Exception e) {
			this.errors.put("profession", e.getMessage());
		}

		try {

			if (password == null) {
				throw new Exception("Merci de saisir votre Mote de passe.");
			}

		} catch (Exception e) {
			this.errors.put("password", e.getMessage());
		}

		if (errors.isEmpty()) {
			result = "Changes are saved.";

		} else {
			result = "Changes are not saved.";

		}

		seller.setEmail(email);
		if (password.isEmpty()) {
			password = ((User) session.getAttribute("SESSION_USER")).getPassword();
		}

		seller.setDateInscrip(((User) session.getAttribute("SESSION_USER")).getDateInscrip());
		seller.setStatusAdmin((int) session.getAttribute("STATUS_SELLER"));
		seller.setPassword(password);
		seller.setNom(nom);
		seller.setCIN(cin);
		seller.setPrenom(prenom);
		seller.setInformation(information);
		seller.setTel(tel);
		seller.setCodeVille(ville);
		seller.setCodeProfession(prof);
		seller.setPhotoProfil(photopath);

		return seller;

	}
}
