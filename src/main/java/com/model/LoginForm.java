package com.model;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.beans.User;

public class LoginForm {

	public LoginForm() {
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

	public User login(HttpServletRequest request) {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User usr = new User();

		try {
			Validator.validationEmail(email);
		} catch (Exception e) {
			this.errors.put("email", e.getMessage());
		}

		try {

			if (password == null) {
				throw new Exception("Merci de saisir votre Mote de passe.");
			}

		} catch (Exception e) {
			this.errors.put("password", e.getMessage());
		}

		if (errors.isEmpty()) {
			result = "Succeeded to login .";

		} else {
			result = "Failed to login.";

		}

		usr.setEmail(email);
		usr.setPassword(password);

		return usr;

	}
}
