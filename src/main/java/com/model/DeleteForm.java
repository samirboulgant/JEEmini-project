package com.model;

import javax.servlet.http.HttpServletRequest;

import com.Dao.AdminDao;
import com.Dao.ManageOffers;
import com.Dao.ManageSeller;
import com.Dao.ManageUser;
import com.beans.JobOffer;
import com.beans.Seller;
import com.beans.User;

public class DeleteForm {

	public static AdminDao adminDao = new AdminDao();

	public void DeleteUser(HttpServletRequest request) {
		int codeUser = Integer.parseInt(request.getParameter("userid"));
		ManageUser mu = new ManageUser();
		ManageSeller ms = new ManageSeller();
		User user = mu.getUser(codeUser);
		Seller seller = ms.getSeller(codeUser);

		if (user.getStatusAdmin() == 2) {
			System.out.println("Admin cannot be deleted!");
		} else {
			if (seller == null && user != null) {
				adminDao.deleteUser(user);
				System.out.println("Target neutralized !");
			} else {
				adminDao.deleteSeller(seller);
				adminDao.deleteUser(user);
				System.out.println("Target neutralized !");
			}
		}

	}

	public void DeleteOffer(HttpServletRequest request) {
		int codeOffer = Integer.parseInt(request.getParameter("offerid"));
		ManageOffers mo = new ManageOffers();
		JobOffer offer = mo.getOffer(codeOffer);

		adminDao.deleteOffer(offer);
		System.out.println("Targer Offer rekt!");
	}
}
