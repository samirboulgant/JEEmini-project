package com.beans;

public class ChatSession {

	private int code_chat;
	private int user_1, user_2;
//	private Timestamp date;
//	private String message;

	public ChatSession() {
		// TODO Auto-generated constructor stub
	}

	public ChatSession(int code_chat) {
		super();
		this.code_chat = code_chat;
	}

	public ChatSession(int code_chat, int sender, int receiver) {
		super();
		this.code_chat = code_chat;
		this.user_1 = sender;
		this.user_2 = receiver;

	}

	public int getCode_chat() {
		return code_chat;
	}

	public void setCode_chat(int code_chat) {
		this.code_chat = code_chat;
	}

	public int getUser_1() {
		return user_1;
	}

	public void setUser_1(int user_1) {
		this.user_1 = user_1;
	}

	public int getUser_2() {
		return user_2;
	}

	public void setUser_2(int user_2) {
		this.user_2 = user_2;
	}

}
