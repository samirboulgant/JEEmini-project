package com.servlets;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.Dao.ManageSeller;
import com.beans.Seller;
import com.beans.User;
import com.beans.photosSeller;
import com.model.EditSellerProfileForm;

@WebServlet("/EditSellerProfile")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 5 * 5)
public class EditSellerProfile extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static ManageSeller ms = new ManageSeller();
	private static String ProjectPath = "C:/Users/User_4/git/JeeProject/";

	public EditSellerProfile() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		User user = (User) session.getAttribute("SESSION_USER");
		Seller seller = ms.selectSeller(user.getUser_code());

		if (seller != null) {
			List<photosSeller> photoList = ms.getPhotos(user.getUser_code());
			request.setAttribute("GALERY", photoList);
			session.setAttribute("SELLER", seller);
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/edit_profile.jsp").forward(request, response);
			
			
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/CreateSeller");
			rd.forward(request, response);
		}
		
		
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		EditSellerProfileForm form = new EditSellerProfileForm();
		Seller seller = form.editProfile(request);
		request.setAttribute("FORM", form);
		request.setAttribute("SELLER", seller);

		if (form.getErrors().isEmpty()) {

			User user = (User) session.getAttribute("SESSION_USER");

			// upload and insert photo profile
			Part photo = request.getPart("profile_photo");
			String photoName = photo.getSubmittedFileName();
			
			//System.out.println(photoName);
			if(photoName != "") {
				
				String photoPath = ProjectPath + "JEE_Mini_Project/src/main/webapp/SellerImages/" + photoName;
				
				photo.write(photoPath);
				seller.setPhotoProfil(photoName);
			}

			

			// upload and insert galery photos
			String[] images_path = request.getParameterValues("get_images_path");
			//System.out.println(images_path);
			List<Part> parts = (List<Part>) request.getParts();
			
			ms.deletePhotos(user.getUser_code());
			
			if(images_path!=null) {
				for(String path : images_path) {

					photosSeller photosGalery = new photosSeller(path, user.getUser_code());
					ms.addPhotos(photosGalery);
					
				}
			}
			
			
			for (Part part : parts) {

				String filename = part.getSubmittedFileName();
				//System.out.println(filename);
				if (filename != "" && part.getContentType() != null && !filename.equals(photoName)) {

					String fullPath = ProjectPath + "JEE_Mini_Project/src/main/webapp/SellerImages/" + filename;

					photosSeller photosGalery = new photosSeller(filename, user.getUser_code());
					ms.addPhotos(photosGalery);

					part.write(fullPath);
				}

			}
			
			user = ms.updateSeller(user.getUser_code(), seller);
			session.setAttribute("SELLER", seller);
			session.setAttribute("SESSION_USER", user);
			response.sendRedirect("SellerProfile");

		} else {

			this.getServletContext().getRequestDispatcher("/WEB-INF/view/edit_profile.jsp").forward(request, response);
		}
	}

}
