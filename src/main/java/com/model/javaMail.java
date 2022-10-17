package com.model;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.*;

public class javaMail {

	public static void sendMail(String recepient) {
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		String myAccountMail = "contact@brikol.com";
		String password = "contact@brikol.com";
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(myAccountMail, password);
			}
		});

		Message message = prepareMessage(session, myAccountMail, recepient);
		try {
			Transport.send(message);
		} catch (Exception e) {

		}

	}

	private static Message prepareMessage(Session session, String myAccountMail, String recepient) {
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(myAccountMail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
			message.setSubject("");
			message.setText("");
			return message;

		} catch (Exception ex) {
			Logger.getLogger(javaMail.class.getName()).log(Level.SEVERE, null, ex);

		}
		return null;
	}

}
