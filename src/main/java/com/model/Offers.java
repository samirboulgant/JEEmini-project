package com.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.Dao.ManageOffers;
import com.Dao.ManageUser;
import com.Dao.ManageVille;
import com.Dao.ManageProfession;
import com.beans.JobOffer;
import com.beans.photosOffre;

public class Offers {

	public List<List<String>> GetoffersMap() {
		List<JobOffer> Offers = new ArrayList<JobOffer>();
		List<List<String>> OffersLists = new ArrayList<List<String>>();
		
		ManageOffers mo = new ManageOffers();
		ManageVille mv = new ManageVille();
		ManageProfession mp = new ManageProfession();
		ManageUser mu = new ManageUser();
		
		Offers = mo.GetOffers();

		for (JobOffer offer : Offers) {

			List<String> templist = new ArrayList<String>();

			templist.add(offer.getTitle());
			templist.add(offer.getDescription());
			templist.add(mv.getVille(offer.getCodeVille()).getNom());
			templist.add(mp.getProfession(offer.getCodeProfession()).getNom());
			templist.add(mu.getUser(offer.getCodeUtilisateur()).getPrenom() + ' ' + mu.getUser(offer.getCodeUtilisateur()).getNom());
			
			String year = offer.getCreation_date().toString().split(" ")[0].split("-")[0];
			String month = offer.getCreation_date().toString().split(" ")[0].split("-")[1];
			String day = offer.getCreation_date().toString().split(" ")[0].split("-")[2];
			
			templist.add(day + "/" + month + "/" + year);
			templist.add(String.valueOf(offer.getCode_offer()));
			templist.add(Integer.toString(offer.getCodeUtilisateur()));
			OffersLists.add(templist);

		}
		Collections.reverse(OffersLists);
		return OffersLists;
	}

	public List<List<String>> GetofferIMages() {
		List<JobOffer> Offers = new ArrayList<JobOffer>();
		List<List<String>> offerPhotos = new ArrayList<List<String>>();
		
		ManageOffers mo = new ManageOffers();
		Offers = mo.GetOffers();
		for (JobOffer offer : Offers) {
			List<String> templist1 = new ArrayList<String>();
			List<photosOffre> photos = mo.GetOfferImages(offer.getCode_offer());

			for (photosOffre photo : photos) {
				templist1.add(photo.getPhotoPath());
			}

			offerPhotos.add(templist1);
		}
		Collections.reverse(offerPhotos);
		return offerPhotos;
	}

}
