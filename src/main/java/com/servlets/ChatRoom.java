package com.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Chatting;
import com.Dao.ManageUser;
import com.beans.User;


@WebServlet("/ChatRoom")
public class ChatRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ChatRoom() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int user_id = 0;
		String userId = request.getParameter("user_id");
		
		List<List<String>> Chats = new ArrayList<List<String>>();
		
		HttpSession session = request.getSession();
		
		Chatting chatting = new Chatting();
		ManageUser mu = new ManageUser();
		
		
		int userSession = ((User) session.getAttribute("SESSION_USER")).getUser_code();
		
		try {
			Chats = chatting.getChats(userSession);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
		if(userId == null) {
			if (Chats.isEmpty()) {
				this.getServletContext().getRequestDispatcher("/WEB-INF/view/chatRoom.jsp").forward(request, response);
			}
			else {	
				int a = Integer.parseInt(Chats.get(Chats.size() - 1).get(1));
				int b = Integer.parseInt(Chats.get(Chats.size() - 1).get(3));
				
				if (a==userSession) user_id = b;
				else user_id = a;
			}
		}
		else {
			user_id = Integer.parseInt(userId);
		}
		
		
		try {
			
			List<List<String>> messages = chatting.getMessages(user_id, userSession);
			System.out.println(messages);
			Collections.reverse(Chats);
			String to_contact_user_name = ((User) mu.getUser(user_id)).getPrenom() + " " +((User) mu.getUser(user_id)).getNom();
			session.setAttribute("messages", messages);
			session.setAttribute("user_id", user_id);
			session.setAttribute("Chats", Chats);
			session.setAttribute("to_contact_user_name", to_contact_user_name);
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/chatRoom.jsp").forward(request, response);

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		String message = request.getParameter("message");
		
		HttpSession session = request.getSession();
		int userSession = ((User) session.getAttribute("SESSION_USER")).getUser_code();
		
		Chatting chatting = new Chatting();
		
		try {
			chatting.saveMessage(message, userSession, user_id);
			response.sendRedirect("ChatRoom?user_id="+ user_id);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
	}
}
