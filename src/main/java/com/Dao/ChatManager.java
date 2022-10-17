package com.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.ResultSet;

import com.beans.ChatSession;
import com.beans.Messages;

public class ChatManager {

	private static String user = "root";
	private static String pass = "ahenna2012";
	private static String url = "jdbc:mysql://localhost:3306/brikol";

	public void saveMessage(String Message, int sender, int receiver, int chat_id)
			throws SQLException, ClassNotFoundException {
		Connection con = null;
		Statement stat = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			stat = con.createStatement();

			java.sql.Timestamp now = new java.sql.Timestamp(new Date().getTime());

			String req = "INSERT INTO messages(Message, Sender, Receiver, DateEnvoi, Chat_id) values(? , ?, ?, ?,?)";
			PreparedStatement stmt = con.prepareStatement(req);

			stmt.setString(1, Message);
			stmt.setInt(2, sender);
			stmt.setInt(3, receiver);
			stmt.setTimestamp(4, now);
			stmt.setInt(5, chat_id);
			stmt.executeUpdate();

		} catch (SQLException e) {
			System.err.println("Problème de connexion à la BD ");
			System.err.println("Error : " + e.getMessage());
			System.err.println("Error Code :" + e.getErrorCode());
		} finally {
			if (stat != null) {
				stat.close();
			}
			if (con != null) {
				con.close();
			}
		}
	}

	public List<Messages> getMessages(int user_id, int user_session) throws SQLException, ClassNotFoundException {
		Connection con = null;
		Statement stat = null;
		ResultSet result = null;

		List<Messages> MessageList = new ArrayList<Messages>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			stat = con.createStatement();

			String req = "select * from messages where Sender in (" + user_id + "," + user_session
					+ ") and Receiver in (" + user_id + "," + user_session + ")";

			result = stat.executeQuery(req);
			while (result.next()) {
				MessageList.add(new Messages(result.getInt(1), result.getInt(3), result.getInt(4), result.getInt(6),
						result.getTimestamp(5), result.getString(2)));
			}

		} catch (SQLException e) {
			System.err.println("Problème de connexion à la BD ");
			System.err.println("Error : " + e.getMessage());
			System.err.println("Error Code :" + e.getErrorCode());
		} finally {
			if (result != null) {
				result.close();
			}
			if (stat != null) {
				stat.close();
			}
			if (con != null) {
				con.close();
			}
		}
		return MessageList;
	}

	public List<ChatSession> getChat(int user_1, int user_2) throws ClassNotFoundException, SQLException {
		Connection con = null;
		Statement stat = null;
		ResultSet result = null;

		List<ChatSession> ChatList = new ArrayList<ChatSession>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			stat = con.createStatement();

			String req = "select * from Chat where User_1 in (" + user_1 + "," + user_2 + ") and User_2 in (" + user_1
					+ "," + user_2 + ")";

			result = stat.executeQuery(req);
			while (result.next()) {
				ChatList.add(new ChatSession(result.getInt(1)));
			}

		} catch (SQLException e) {
			System.err.println("Problème de connexion à la BD ");
			System.err.println("Error : " + e.getMessage());
			System.err.println("Error Code :" + e.getErrorCode());
		} finally {
			if (result != null) {
				result.close();
			}
			if (stat != null) {
				stat.close();
			}
			if (con != null) {
				con.close();
			}
		}
		return ChatList;
	}

	public int CreateChat(int user_1, int user_2) throws ClassNotFoundException, SQLException {
		Connection con = null;
		Statement stat = null;
		int id = 0;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			stat = con.createStatement();

			String req = "INSERT INTO Chat(User_1, User_2) values(? , ?)";
			PreparedStatement stmt = con.prepareStatement(req, Statement.RETURN_GENERATED_KEYS);

			stmt.setInt(2, user_2);
			stmt.setInt(1, user_1);
			int affectedRows = stmt.executeUpdate();

			if (affectedRows == 0) {
				throw new SQLException("Creating user failed, no rows affected.");
			}

			try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
				if (generatedKeys.next()) {
					id = generatedKeys.getInt(1);
				} else {
					throw new SQLException("Creating user failed, no ID obtained.");
				}
			}

		} catch (SQLException e) {
			System.err.println("Problème de connexion à la BD ");
			System.err.println("Error : " + e.getMessage());
			System.err.println("Error Code :" + e.getErrorCode());
		} finally {
			if (stat != null) {
				stat.close();
			}
			if (con != null) {
				con.close();
			}
		}
		return id;
	}

	public List<ChatSession> getChats(int userSession) throws ClassNotFoundException, SQLException {
		Connection con = null;
		Statement stat = null;
		ResultSet result = null;

		List<ChatSession> ChatList = new ArrayList<ChatSession>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			stat = con.createStatement();

			String req = "select * from Chat where User_1 = " + userSession + " or User_2 =" + userSession;

			result = stat.executeQuery(req);
			while (result.next()) {
				ChatList.add(new ChatSession(result.getInt(1), result.getInt(2), result.getInt(3)));
			}

		} catch (SQLException e) {
			System.err.println("Problème de connexion à la BD ");
			System.err.println("Error : " + e.getMessage());
			System.err.println("Error Code :" + e.getErrorCode());
		} finally {
			if (result != null) {
				result.close();
			}
			if (stat != null) {
				stat.close();
			}
			if (con != null) {
				con.close();
			}
		}
		return ChatList;
	}

	public Messages getLastMessage(int user_id, int user_session) throws SQLException, ClassNotFoundException {
		Connection con = null;
		Statement stat = null;
		ResultSet result = null;

		List<Messages> MessageList = new ArrayList<Messages>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			stat = con.createStatement();
			System.out.println(user_id);
			System.out.println(user_session);
			String req = "select * from messages where Sender in (" + user_id + "," + user_session
					+ ") and Receiver in (" + user_id + "," + user_session + ") " + "ORDER BY Message_id DESC LIMIT 1";

			result = stat.executeQuery(req);
			while (result.next()) {
				MessageList.add(new Messages(result.getInt(1), result.getInt(3), result.getInt(4), result.getInt(6),
						result.getTimestamp(5), result.getString(2)));
			}

		} catch (SQLException e) {
			System.err.println("Problème de connexion à la BD ");
			System.err.println("Error : " + e.getMessage());
			System.err.println("Error Code :" + e.getErrorCode());
		} finally {
			if (result != null) {
				result.close();
			}
			if (stat != null) {
				stat.close();
			}
			if (con != null) {
				con.close();
			}
		}
		return MessageList.get(0);
	}
}
