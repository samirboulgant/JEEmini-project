package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ManageSeller;
import com.beans.Seller;
import com.beans.User;
import com.beans.photosSeller;

@WebServlet("/SellerProfile")
public class SellerProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ManageSeller ms = new ManageSeller();


	public SellerProfile() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		Seller seller = new Seller();
		User user = (User) session.getAttribute("SESSION_USER");
		String seller_id = request.getParameter("seller_id");
		
		if(seller_id!=null) {
			seller = ms.selectSeller(Integer.parseInt(seller_id));
		}
		else {
			seller = ms.selectSeller(user.getUser_code());
		}
		

		

		if (seller != null) {
			List<photosSeller> photoList = ms.getPhotos(seller.getCodeUtilisateur());
			session.setAttribute("GALERY", photoList);
			
			
			session.setAttribute("SELLER", seller);
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/seller_profile.jsp").forward(request,response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/CreateSeller");
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
