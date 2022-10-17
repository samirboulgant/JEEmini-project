package com.servlets;


import java.io.IOException;

import java.io.PrintWriter;
import java.util.Date;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.Dao.ManageOffers;
import com.beans.JobOffer;
import com.beans.User;
import com.beans.photosOffre;
import com.model.CreateOfferModel;

@WebServlet("/CreerOffre")
public class CreerOffre extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CreerOffre() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/CreateOffer.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("SESSION_USER");
		JobOffer offer = new JobOffer();
		offer.setCodeUtilisateur(user.getUser_code());
		CreateOfferModel modeloffer = new CreateOfferModel();
		modeloffer.handlinput(request);
		java.sql.Timestamp now = new java.sql.Timestamp(new Date().getTime());
		offer.setTitle(modeloffer.getOtherFieldValue().get(0));
		offer.setCodeProfession(Integer.parseInt(modeloffer.getOtherFieldValue().get(1)));
		offer.setCodeVille(Integer.parseInt(modeloffer.getOtherFieldValue().get(2)));
		offer.setDescription(modeloffer.getOtherFieldValue().get(3));
		offer.setCreation_date(now);
		ManageOffers NewOffer= new ManageOffers();
		String res = NewOffer.insertOffer(offer);
		if (res.equalsIgnoreCase("data entred")) {
			for (String name : modeloffer.getNames()) {
				if(name!="") {
				photosOffre image = new photosOffre(name);
				NewOffer.insertPhoto(image);
				}
				
			}
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Offer Creer avec succes');");
			out.println("location='Offers';");
			out.println("</script>");
		} else {
			response.getWriter().print(res);
			out.println("<script type=\"text/javascript\">");
			out.println("alert('ERREUR: Offer n'est pas Creer ');");
			out.println("location='CreerOffre';");
			out.println("</script>");
		}
		

	}
}
