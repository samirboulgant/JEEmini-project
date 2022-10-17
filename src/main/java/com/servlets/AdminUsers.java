package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ManageOffers;
import com.Dao.ManageUser;
import com.beans.JobOffer;
import com.beans.User;
import com.model.DeleteForm;


@WebServlet("/Admin/Users")
public class AdminUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static ManageUser mu = new ManageUser();

    public AdminUsers() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<User> userList = mu.GetUsers();
		request.setAttribute("users", userList);
		
		request.getRequestDispatcher("/WEB-INF/admin/Users.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DeleteForm form = new DeleteForm();
		form.DeleteUser(request);
		List<User> userList = mu.GetUsers();
		ManageOffers mo = new ManageOffers();
		List<JobOffer> offerList = mo.GetOffers();
		HttpSession session = request.getSession();
		session.setAttribute("users", userList);
		session.setAttribute("offers", offerList);
		response.sendRedirect("Users");
	}

}
