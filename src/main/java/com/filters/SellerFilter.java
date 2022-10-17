package com.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.User;


@WebFilter("/SellerFilter")
public class SellerFilter implements Filter {

  
    public SellerFilter() {
    }


	public void destroy() {
	}


	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		
		HttpSession session = request.getSession();
		String chemin = request.getRequestURI().substring(request.getContextPath().length());
				
		int status = ((User) session.getAttribute("SESSION_USER")).getStatusAdmin();
		int status_seller = (Integer) session.getAttribute("STATUS_SELLER") ;
		
		System.out.println(status);
		System.out.println(status_seller);
		
		if (chemin.startsWith("/CreateSeller") && status == 1) {
			response.sendRedirect("Homepage");
			return;
		}
		
		if(status_seller == 1) {
			response.sendRedirect("Homepage");
		}
		else {
			chain.doFilter(request, response);
		}
	}


	public void init(FilterConfig fConfig) throws ServletException {
	}

}
