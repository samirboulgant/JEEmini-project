package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ManageProfession;
import com.Dao.ManageVille;
import com.beans.Profession;
import com.beans.Seller;
import com.beans.Ville;
import com.model.GetSellers;

@WebServlet("/Sellers")
public class Sellers extends HttpServlet {

	List<Seller> sellerList = new ArrayList<Seller>();
	private static final long serialVersionUID = 1L;

	public Sellers() {
		super();
	}
	
	
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();

		if (session.getAttribute("SESSION_PROFS") == null && session.getAttribute("SESSION_VILLES") == null) {

			ManageProfession mp = new ManageProfession();
			List<Profession> profs = mp.getProfessions();
			session.setAttribute("SESSION_PROFS", profs);
			
			ManageVille mv = new ManageVille();
			List<Ville> villes = mv.getVilles();
			session.setAttribute("SESSION_VILLES", villes);
		}
		
		List<Profession> profs =(ArrayList<Profession>) session.getAttribute("SESSION_PROFS");
		List<Ville> villes = (ArrayList<Ville>) session.getAttribute("SESSION_VILLES");
		
		String[] Professions = new String[profs.size()];
		for(int i=0;i<profs.size();i++) {
			Professions[i] = Integer.toString(profs.get(i).getCodeProfession());
		}
		
		String[] Villes = new String[villes.size()];
		for(int i=0; i<villes.size(); i++) {
			Villes[i] = Integer.toString(villes.get(i).getCodeVille());
		}
		
		session.setAttribute("sellerList", GetSellers.GetSellerMap(Villes, Professions));
		
		request.getRequestDispatcher("/WEB-INF/view/sellers.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String[] cities = request.getParameterValues("city[]");
		String[] professions = request.getParameterValues("category[]");
		
		request.setAttribute("selectedvilles", Arrays.asList(cities));
		request.setAttribute("selectedprofessions", Arrays.asList(professions));
		
		session.setAttribute("sellerList", GetSellers.GetSellerMap(cities, professions));
		
		request.getRequestDispatcher("/WEB-INF/view/sellers.jsp").forward(request, response);
	}

}
