package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.Dao.ManageSeller;
import com.Dao.ManageUser;
import com.beans.Seller;
import com.beans.User;
import com.beans.photosSeller;
import com.model.CreateSellerProfileForm;

@WebServlet("/CreateSeller")
@MultipartConfig( fileSizeThreshold = 1024 * 1024, 
maxFileSize = 1024 * 1024 * 10,
maxRequestSize = 1024 * 1024 * 5 * 5 )
public class CreateSeller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ManageSeller ms = new ManageSeller();
	private static String ProjectPath = "C:/Users/Lenovo/git/JeeProject/";

	public CreateSeller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/create_seller.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		CreateSellerProfileForm form = new CreateSellerProfileForm();
		ManageUser mu = new ManageUser();
		Seller seller = form.createProfile(request);
		request.setAttribute("FORM", form);
		request.setAttribute("SELLER", seller);

		if (form.getErrors().isEmpty()) {

			User user = (User) session.getAttribute("SESSION_USER");
			user.setStatusAdmin(1);
			seller.setNom(user.getNom());
			seller.setPrenom(user.getPrenom());
			seller.setEmail(user.getEmail());
			seller.setPassword(user.getPassword());
			seller.setCodeUtilisateur(user.getUser_code());
			mu.StatusSeller(seller.getCodeUtilisateur(), 1);
			
			
			
			// upload and insert photo profile
			Part photo = request.getPart("profile_photo");
			String photoName = photo.getSubmittedFileName();
			if(photoName != "") {
				
				String photoPath = ProjectPath + "JEE_Mini_Project/src/main/webapp/SellerImages/" + photoName;
				
				photo.write(photoPath);
				seller.setPhotoProfil(photoName);
			}

	        
	        // upload and insert galery photos
			List<Part> parts = (List<Part>) request.getParts();
//			ms.deletePhotos(user.getUser_code());
			ms.addSeller(seller);
			for (Part part : parts) {

				String filename = part.getSubmittedFileName();
				System.out.println(filename);
				if (filename != "" && part.getContentType() != null && !filename.equals(photoName)) {
					
					String fullPath = ProjectPath + "JEE_Mini_Project/src/main/webapp/SellerImages/" + filename;

					photosSeller photosGalery = new photosSeller(filename, user.getUser_code());
					ms.addPhotos(photosGalery);

					part.write(fullPath);
				}
			}								
			
			session.setAttribute("SELLER", seller);
			session.setAttribute("SESSION_USER", user);
			session.setAttribute("STATUS_SELLER", 1);
			response.sendRedirect("SellerProfile");

		} else {

			this.getServletContext().getRequestDispatcher("/WEB-INF/view/create_seller.jsp").forward(request, response);
		}
	}

}
