package com.model;

import java.util.List;
import java.util.ArrayList;

import com.Dao.ManageUser;
import com.Dao.ManageProfession;
import com.Dao.ManageSeller;
import com.beans.Seller;

public class GetSellers {
	private static ManageSeller ms = new ManageSeller();
	private static ManageUser mu = new ManageUser();
	private static ManageProfession mp = new ManageProfession();

	public static List<List<String>> GetSellerMap(String[] cities, String[] professions) {

		List<Seller> sellers = new ArrayList<Seller>();
		List<List<String>> SellersLists = new ArrayList<List<String>>();

		sellers = ms.GetSpecificSellers(cities, professions);

		for (Seller seller : sellers) {
			List<String> templist = new ArrayList<String>();
			templist.add(Integer.toString(seller.getCodeUtilisateur()));
			templist.add(seller.getPhotoProfil());
			templist.add(mu.getUser(seller.getCodeUtilisateur()).getPrenom() + ' '
					+ mu.getUser(seller.getCodeUtilisateur()).getNom());
			templist.add(mp.getProfession(seller.getCodeProfession()).getNom());

			SellersLists.add(templist);
		}

		return SellersLists;
	}
}
