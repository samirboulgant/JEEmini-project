package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.Profession;
import com.beans.User;
import com.beans.Ville;
import com.model.LoginForm;
import com.Dao.*;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ManageUser mu = new ManageUser();
	
	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LoginForm form = new LoginForm();
		User user0 = form.login(request);

		HttpSession session = request.getSession();

		request.setAttribute("FORM", form);
		request.setAttribute("USER", user0);

		if (form.getErrors().isEmpty()) {
						
			User user = mu.verifyUser(user0.getEmail(), user0.getPassword());
			if(user != null) {
				if(user.getStatusAdmin() == 0 || user.getStatusAdmin() == 1) {
					
					ManageProfession mp = new ManageProfession();
					List<Profession> profs = mp.getProfessions();
					session.setAttribute("SESSION_PROFS", profs);
			
					ManageVille mv = new ManageVille();
					List<Ville> villes = mv.getVilles();
					session.setAttribute("SESSION_VILLES", villes);
				
					session.setAttribute("SESSION_USER", user);
					session.setAttribute("STATUS_SELLER", 0);
				
					response.sendRedirect("Homepage");
				}
				else if(user.getStatusAdmin() == 2){
					session.setAttribute("SESSION_ADMIN", user);
					response.sendRedirect("Admin/Dashboard");
				}
				else {
					session.setAttribute("SESSION_ADMIN", null);
					session.setAttribute("SESSION_USER", null);
					System.out.println("error"); //Pour tester si ça marche
					response.sendRedirect("Login");
				}
			}
			else {
				request.setAttribute("unknown_user", "ERROR: Unknown User\ncheckout your email and password or sign up for new account");
				this.getServletContext().getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
			}			
			

		} else {
			
			session.setAttribute("SESSION_USER", null);
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);

		}

	}

}
