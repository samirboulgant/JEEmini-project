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
import com.beans.JobOffer;
import com.model.DeleteForm;
import com.model.Offers;

@WebServlet("/Admin/Offres")
public class AdminOffres extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Offers Mo = new Offers();

	public AdminOffres() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("offers", Mo.GetoffersMap());
		
		request.getRequestDispatcher("/WEB-INF/admin/Offres.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DeleteForm form = new DeleteForm();
		form.DeleteOffer(request);
		ManageOffers mu = new ManageOffers();
		List<JobOffer> offerList = mu.GetOffers();
		HttpSession session = request.getSession();
		session.setAttribute("offers", offerList);
		response.sendRedirect("Offres");
	}

}
