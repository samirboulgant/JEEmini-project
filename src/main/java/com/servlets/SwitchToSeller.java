package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/SwitchToSeller")
public class SwitchToSeller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       

    public SwitchToSeller() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		session.setAttribute("STATUS_SELLER", 1);
		response.sendRedirect("SellerProfile");
	}


}
