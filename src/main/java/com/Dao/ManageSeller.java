package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

import com.beans.Seller;
import com.beans.User;
import com.beans.photosSeller;

public class ManageSeller {

	private static SessionFactory factory = HibernateUtil.getSessionFactory();

	/* Method to CREATE an seller in the database */

	public void addSeller(Seller seller) {

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			seller.setStatusAdmin(1);
			session.save(seller);
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

	/* Method to READ all the sellers */
	public Seller selectSeller(int codeUtilisateur) {

		Seller seller = new Seller();
		User user = new User();

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			user = (User) session.get(User.class, codeUtilisateur);
			seller = (Seller) session.get(Seller.class, codeUtilisateur);

			if (seller != null) {
				seller.setNom(user.getNom());
				seller.setPrenom(user.getPrenom());
				seller.setEmail(user.getEmail());
				seller.setPassword(user.getPassword());
			}

			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}

		return seller;
	}

	/* Method to UPDATE salary for an seller */
	public User updateSeller(int codeUtilisateur, Seller sella) {

		Seller seller = sella;
		seller.setCodeUtilisateur(codeUtilisateur);
		User user = new User(codeUtilisateur, seller.getNom(), seller.getPrenom(), seller.getEmail(),
				seller.getPassword());
		user.setDateInscrip(seller.getDateInscrip());
		user.setStatusAdmin(seller.getStatusAdmin());

		Session session = factory.openSession();

		Transaction tx = null;
		try {
			tx = session.beginTransaction();

			session.update(seller);
			session.update(user);

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
		return user;

	}

	@SuppressWarnings("unchecked")
	public List<Seller> GetSellers() {
		Session session = factory.openSession();
		Transaction tx = null;
		List<Seller> sellerList = new ArrayList<Seller>();
		try {
			tx = session.beginTransaction();
			Query sellers = session.createQuery("FROM Seller");
			tx.commit();

			sellerList = sellers.list();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
		return sellerList;

	}

	@SuppressWarnings("unchecked")
	public List<Seller> GetSpecificSellers(String[] Villes, String[] Professions) {
		Session session = factory.openSession();
		Transaction tx = null;
		List<Seller> sellerList = new ArrayList<Seller>();
		try {
			tx = session.beginTransaction();
			String sql = "SELECT * FROM seller where CodeVille in (" + String.join(",", Villes)
					+ ") AND CodeProfession in (" + String.join(",", Professions) + ")";
			SQLQuery sellers = session.createSQLQuery(sql);
			sellers.addEntity(Seller.class);
			tx.commit();

			sellerList = sellers.list();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
		return sellerList;
	}

	public void addPhotos(photosSeller Photo) {

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();

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

	public void deletePhotos(int user_id) {

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();

			Query query = session.createQuery("DELETE photosSeller WHERE CodeUtilisateur = :id");
			query.setParameter("id", user_id);

			query.executeUpdate();
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
	public List<photosSeller> getPhotos(int seller_id) {
		Session session = factory.openSession();
		Transaction tx = null;
		List<photosSeller> photoList = new ArrayList<photosSeller>();
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM photosSeller WHERE CodeUtilisateur = :id");
			query.setParameter("id", seller_id);
			tx.commit();

			photoList = query.list();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
		return photoList;

	}

	public Seller getSeller(int CodeUtilisateur) {

		Seller seller = new Seller();

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			seller = (Seller) session.get(Seller.class, CodeUtilisateur);
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

		return seller;
	}

	/*
	 * Method to DELETE an seller from the records public void deleteSeller(Integer
	 * SellerID){ Session session = factory.openSession(); Transaction tx = null;
	 * 
	 * try { tx = session.beginTransaction(); Seller seller =
	 * (Seller)session.get(Seller.class, SellerID); session.delete(seller);
	 * tx.commit(); } catch (HibernateException e) { if (tx!=null) tx.rollback();
	 * e.printStackTrace(); } finally { session.close(); } }
	 * 
	 */

}
