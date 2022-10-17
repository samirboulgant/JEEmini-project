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

@WebFilter("/BuyerFilter")
public class BuyerFilter implements Filter {


    public BuyerFilter() {
    }


	public void destroy() {		// TODO Auto-generated method stub
	}


	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		
		HttpSession session = request.getSession();
		
		int status = ((User) session.getAttribute("SESSION_USER")).getStatusAdmin();
		
		
		if( status == 0 || (Integer) session.getAttribute("STATUS_SELLER") == 0) {
			response.sendRedirect("Homepage");
		}
		else {
			chain.doFilter(request, response);
		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
