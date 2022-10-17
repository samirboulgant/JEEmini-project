package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.javaMail;


@WebServlet("/cantact")
public class cantact extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public cantact() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/contact.jsp").forward(request ,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
	public static void main(String[] args) throws Exception{
		javaMail.sendMail("user emeil??");
		
	}

}
