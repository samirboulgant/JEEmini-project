package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Offers;

@WebServlet("/Offers")
public class OffersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Offers of = new Offers();

	public OffersServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		List<List<String>> OffersLists = new ArrayList<List<String>>();
		List<List<String>> photosOffer = new ArrayList<List<String>>();
		
		OffersLists = of.GetoffersMap();
		photosOffer = of.GetofferIMages();
		
		session.setAttribute("OffersLists", OffersLists);
		session.setAttribute("photosOffer", photosOffer);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/offers.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
