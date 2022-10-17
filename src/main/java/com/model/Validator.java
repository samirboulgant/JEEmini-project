package com.model;

public class Validator {

	public static void validationCin(String str) throws Exception {

		if (str != null) {
			if (!str.matches("[a-zA-Z]{1,2}[0-9]{5,6}")) {
				throw new Exception("Merci de saisir un cin valide.");
			}

		} else {
			throw new Exception("Merci de saisir votre cin.");
		}

	}

	public static void validationEmail(String email) throws Exception {
		if (email != null && email.trim().length() != 0) {
			if (!email.matches("([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)")) {
				throw new Exception("Merci de saisir une adresse mail valide.");
			}
		} else {
			throw new Exception("Merci de saisir une adresse mail.");
		}
	}

	public static void validationTel(String tel) throws Exception {
		if (tel != null) {
			if (!tel.matches("^((06)|(07))[0-9]{8}$")) {
				throw new Exception("Merci de saisir un numero de telephone valide");
			}
		} else {
			throw new Exception("Merci de saisir un numero de telephone");
		}
	}

	public static void validationAdresse(String str) throws Exception {
		if (str != null) {
			if (str.trim().length() < 10) {
				throw new Exception("Merci de saisir une adresse valide.");
			}

		} else {
			throw new Exception("Merci de saisir une adresse.");
		}

	}

	public static void validationName(String name) throws Exception {
		if (name != null && name.trim().length() != 0) {
			if (!name.matches("^[a-zA-z]{2,}$")) {
				throw new Exception("La valeur entrée est invalide,veuillez saisir au moins 2 champs");
			}
		} else {
			throw new Exception("Merci de remplir ce champs");
		}
	}

	public static void validationDate(String date) throws Exception {
		if (date != null && date.trim().length() != 0) {
			if (!date.matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}$")) {
				throw new Exception("Merci d'informer la date comme suit : '07/11/2021' ");
			}
		} else {
			throw new Exception("Merci de remplir ce champs");
		}
	}

}
