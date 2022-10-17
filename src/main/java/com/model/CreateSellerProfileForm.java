package com.model;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.beans.Seller;

public class CreateSellerProfileForm {

	public CreateSellerProfileForm() {
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

	public Seller createProfile(HttpServletRequest request) {

		
		
		String tel = request.getParameter("tel");
		int prof = Integer.parseInt(request.getParameter("profession"));
		int ville = Integer.parseInt(request.getParameter("ville"));
		String cin = request.getParameter("cin");
		String information = request.getParameter("information");
		
		

		Seller seller = new Seller();

		

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

		

		if (errors.isEmpty()) {
			result = "Changes are saved.";

		} else {
			result = "Changes are not saved.";

		}

		
		seller.setCIN(cin);
		seller.setInformation(information);
		seller.setTel(tel);
		seller.setCodeVille(ville);
		seller.setCodeProfession(prof);
		
		return seller;

	}
}
