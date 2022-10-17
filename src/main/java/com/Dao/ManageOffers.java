package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.beans.JobOffer;
import com.beans.photosOffre;

public class ManageOffers {

	private static SessionFactory factory = HibernateUtil.getSessionFactory();


	public String insertOffer(JobOffer Offer) {

		String result = "data entred";

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			session.save(Offer);
			tx.commit();

		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
				result = "data not entered";
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}

		return result;
	}

	public void insertPhoto(photosOffre Photo) {

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();

			String sql = "SELECT MAX(code_offer) FROM JobOffer";
			Query query = session.createQuery(sql);

			int num = (int) query.list().get(0);

			Photo.setCodeOffer(num);
			session.save(Photo);
			tx.commit();

		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();

			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	public List<JobOffer> GetOffers() {
		
		Session session = factory.openSession();
		Transaction tx = null;
		List<JobOffer> offerList = new ArrayList<JobOffer>();
		try {
			tx = session.beginTransaction();
			Query offers = session.createQuery("FROM JobOffer");
			tx.commit();
			offerList = offers.list();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
		return offerList;

	}
	
	@SuppressWarnings("unchecked")
	public List<photosOffre> GetOfferImages(int codeoffer){
		Session session = factory.openSession();
		Transaction tx = null;
		List<photosOffre> photosOffer = new ArrayList<photosOffre>();
		try {
			tx = session.beginTransaction();
			
			Query offers = session.createQuery("FROM photosOffre where CodeOffre= :code");
			offers.setParameter("code", codeoffer);
			tx.commit();
			photosOffer = offers.list();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
		return photosOffer;
	}
	
	
	public JobOffer getOffer(int code_offer) {

		JobOffer offer = new JobOffer();

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			offer = (JobOffer) session.get(JobOffer.class, code_offer);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}

		return offer;
	}
	
	

}
