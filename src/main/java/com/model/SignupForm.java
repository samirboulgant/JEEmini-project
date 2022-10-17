package com.model;

import java.util.Date;
import java.text.SimpleDateFormat;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.beans.User;

public class SignupForm {

	public SignupForm() {
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

	public User signup(HttpServletRequest request) {

		String email = request.getParameter("email");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");

		String password = request.getParameter("password");

		User usr = new User();

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

			if (password == null) {
				throw new Exception("Merci de saisir votre Mote de passe.");
			}

		} catch (Exception e) {
			this.errors.put("password", e.getMessage());
		}

		if (errors.isEmpty()) {
			result = "Succeeded to sign up .";

		} else {
			result = "Failed to sign up.";

		}

		SimpleDateFormat formatter = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
		Date date = new Date();

		usr.setEmail(email);
		usr.setPassword(password);
		usr.setNom(nom);
		usr.setPrenom(prenom);
		usr.setDateInscrip(formatter.format(date));
		usr.setStatusAdmin(0);

		return usr;

	}

}
