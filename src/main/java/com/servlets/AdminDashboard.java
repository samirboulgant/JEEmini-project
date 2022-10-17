package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ManageVille;
import com.Dao.AdminDao;
import com.Dao.ManageProfession;

@WebServlet(urlPatterns={"/Admin/Dashboard", "/Admin"})
public class AdminDashboard extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static AdminDao adminDao = new AdminDao();
	private static ManageVille mv = new ManageVille();
	private static ManageProfession mp = new ManageProfession();
	
       

    public AdminDashboard() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		List<Integer> villeCounts = new ArrayList<Integer>();
		List<String> villeNames = new ArrayList<String>();
		List<Integer> professionCounts = new ArrayList<Integer>();
	    List<String> professionNames = new ArrayList<String>();
		
		int NumOffres = adminDao.CountOffres();
		int NumSellers = adminDao.CountSellers();
		int NumUsers = adminDao.CountUsers();
		HashMap<Integer, Integer> map = adminDao.CountVille();
		HashMap<Integer, Integer> map1 = adminDao.CountProfession();
		
		for(HashMap.Entry<Integer, Integer> entry : map.entrySet()) {
			villeNames.add("'" + mv.getVille(entry.getKey()).getNom()  + " ('");
			villeCounts.add(entry.getValue());
		}
		
		for(HashMap.Entry<Integer, Integer> entry : map1.entrySet()) {
			professionNames.add("'" + mp.getProfession(entry.getKey()).getNom()  + " ('");
			professionCounts.add(entry.getValue());
		}
		
		System.out.println( villeCounts);
		System.out.println( villeNames);
		
		session.setAttribute("NumOffres", NumOffres);
		session.setAttribute("NumSellers", NumSellers);
		session.setAttribute("NumUsers", NumUsers);
		request.setAttribute("villeNames", villeNames);
		request.setAttribute("villeCounts", villeCounts);   
		request.setAttribute("professionNames", professionNames);
		request.setAttribute("professionCounts", professionCounts );
		session.setAttribute("offresByDate", adminDao.OffersCreatedByDate());
		session.setAttribute("usersByDate", adminDao.UsersCreatedByDate());
		
		request.getRequestDispatcher("/WEB-INF/admin/Dashboard.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	
}
