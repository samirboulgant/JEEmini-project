package com.beans;

import java.sql.Timestamp;

public class Messages {

	private int message_id, sender, receiver, chat_id;
	private String message;
	private Timestamp dateEnvoi;
	
	

	public Messages(int message_id, int sender, int receiver, int chat_id, Timestamp dateEnvoi, String message) {
		super();
		this.message_id = message_id;
		this.sender = sender;
		this.receiver = receiver;
		this.chat_id = chat_id;
		this.dateEnvoi = dateEnvoi;
		this.message = message;
	}

	public int getMessage_id() {
		return message_id;
	}

	public void setMessage_id(int message_id) {
		this.message_id = message_id;
	}

	public int getSender() {
		return sender;
	}

	public void setSender(int sender) {
		this.sender = sender;
	}

	public int getReceiver() {
		return receiver;
	}

	public void setReceiver(int receiver) {
		this.receiver = receiver;
	}

	public int getChat_id() {
		return chat_id;
	}

	public void setChat_id(int chat_id) {
		this.chat_id = chat_id;
	}

	public Timestamp getDateEnvoi() {
		return dateEnvoi;
	}

	public void setDateEnvoi(Timestamp dateEnvoi) {
		this.dateEnvoi = dateEnvoi;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	

}
