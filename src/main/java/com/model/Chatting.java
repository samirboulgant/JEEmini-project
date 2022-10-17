package com.model;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.Dao.ChatManager;
import com.Dao.ManageUser;
import com.beans.ChatSession;
import com.beans.Messages;

public class Chatting {

	public void saveMessage(String message, int sender, int receiver) throws ClassNotFoundException, SQLException {

		ChatManager cm = new ChatManager();

		List<ChatSession> chatSession = cm.getChat(sender, receiver);

		int chat_id = 0;

		if (chatSession.isEmpty()) {
			chat_id = cm.CreateChat(sender, receiver);
		} else {
			chat_id = chatSession.get(0).getCode_chat();
		}

		if (chat_id != 0) {
			cm.saveMessage(message, sender, receiver, chat_id);
		}

	}

	public List<List<String>> getMessages(int user_id, int user_session) throws ClassNotFoundException, SQLException {

		ChatManager cm = new ChatManager();
		ManageUser mu = new ManageUser();

		List<List<String>> messages = new ArrayList<List<String>>();

		List<Messages> messagesList = cm.getMessages(user_id, user_session);

		for (Messages message : messagesList) {

			List<String> templist = new ArrayList<String>();

			templist.add(Integer.toString(message.getChat_id()));
			templist.add(Integer.toString(message.getReceiver()));
			templist.add(Integer.toString(message.getSender()));
			templist.add(mu.getUser(message.getSender()).getPrenom() + " " + mu.getUser(message.getSender()).getNom());
			templist.add(mu.getUser(message.getReceiver()).getPrenom() + " " + mu.getUser(message.getReceiver()).getNom());
			templist.add(message.getMessage());

			Timestamp Date = message.getDateEnvoi();

			String pattern = "HH:mm a | MMM D";
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
			String date = simpleDateFormat.format(Date);

			templist.add(date);

			messages.add(templist);
		}

		return messages;
	}

	public List<List<String>> getChats(int userSesion) throws ClassNotFoundException, SQLException {

		ChatManager cm = new ChatManager();
		ManageUser mu = new ManageUser();

		List<List<String>> Chats = new ArrayList<List<String>>();
		List<ChatSession> chatList = cm.getChats(userSesion);

		for (ChatSession chat : chatList) {

			List<String> templist = new ArrayList<String>();

			templist.add(Integer.toString(chat.getCode_chat()));
			templist.add(Integer.toString(chat.getUser_1()));
			templist.add(mu.getUser(chat.getUser_1()).getPrenom() + " " + mu.getUser(chat.getUser_1()).getNom());
			templist.add(Integer.toString(chat.getUser_2()));
			templist.add(mu.getUser(chat.getUser_2()).getPrenom() + " " + mu.getUser(chat.getUser_2()).getNom());

			int user_id = 0;
			if (chat.getUser_1() == userSesion)
				user_id = chat.getUser_2();
			else
				user_id = chat.getUser_1();

			templist.add(cm.getLastMessage(user_id, userSesion).getMessage());

			Chats.add(templist);

		}
		return Chats;

	}

}
