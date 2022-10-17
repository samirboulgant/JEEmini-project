package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ManageUser;
import com.beans.User;
import com.model.SignupForm;

@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ManageUser mu = new ManageUser();

	public Signup() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/sign up.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SignupForm form = new SignupForm();
		User user = form.signup(request);

		HttpSession session = request.getSession();
		request.setAttribute("FORM", form);
		request.setAttribute("USER", user);

		if (form.getErrors().isEmpty()) {
			System.out.println(user);
			mu.addUser(user);

			RequestDispatcher rd = request.getRequestDispatcher("/Login");
			rd.forward(request, response);

		} else {
			session.setAttribute("SESSION_USER", null);

			this.getServletContext().getRequestDispatcher("/WEB-INF/view/sign up.jsp").forward(request, response);
			System.out.println("error");

		}

	}

}
