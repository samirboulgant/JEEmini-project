package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/SwitchToBuyer")
public class SwitchToBuyer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SwitchToBuyer() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.setAttribute("STATUS_SELLER", 0);
		response.sendRedirect("Homepage");
	}


}
