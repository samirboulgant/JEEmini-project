package com.Dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.beans.*;

public class AdminDao {

	private static SessionFactory factory = HibernateUtil.getSessionFactory();

	public void addAdminDetails(String password, String email) {
		try {
			// 1. configuring hibernate
			Configuration configuration = new Configuration().configure();

			// 2. create sessionfactory
			SessionFactory sessionFactory = configuration.buildSessionFactory();

			// 3. Get Session object
			Session session = sessionFactory.openSession();

			// 4. Starting Transaction
			Transaction transaction = session.beginTransaction();
			Admin admin = new Admin();

			admin.setPassword(password);
			admin.setEmail(email);

			session.save(admin);
			transaction.commit();
			System.out.println("\n\n Details Added \n");

		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			System.out.println("error");
		}

	}

	public void deleteOffer(JobOffer offer) {

		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.delete(offer);
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

	public void deleteUser(User user) {

		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.delete(user);
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

	public void deleteSeller(Seller user) {

		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.delete(user);
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

	public int CountUsers() {
		Session session = factory.openSession();
		Transaction tx = null;
		int NumUsers = 0;
		try {
			tx = session.beginTransaction();
			String sql = "SELECT COUNT(*) FROM utilisateur";
			SQLQuery query = session.createSQLQuery(sql);
			tx.commit();

			NumUsers = ((BigInteger) query.list().get(0)).intValue();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
		return NumUsers;
	}

	public int CountSellers() {
		Session session = factory.openSession();
		Transaction tx = null;
		int NumSellers = 0;
		try {
			tx = session.beginTransaction();
			String sql = "SELECT COUNT(*) FROM seller";
			SQLQuery query = session.createSQLQuery(sql);
			tx.commit();

			NumSellers = ((BigInteger) query.list().get(0)).intValue();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
		return NumSellers;
	}

	public int CountOffres() {
		Session session = factory.openSession();
		Transaction tx = null;
		int NumOffres = 0;
		try {
			tx = session.beginTransaction();
			String sql = "SELECT COUNT(*) FROM offreemploi";
			SQLQuery query = session.createSQLQuery(sql);
			tx.commit();

			NumOffres = ((BigInteger) query.list().get(0)).intValue();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
		return NumOffres;
	}

	@SuppressWarnings("unchecked")
	public HashMap<Integer, Integer> CountVille() {

		HashMap<Integer, Integer> villeCounts = new HashMap<Integer, Integer>();

		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			String sql = "SELECT CodeVille,COUNT(*) FROM seller GROUP BY CodeVille ORDER BY CodeVille ASC";
			SQLQuery query = session.createSQLQuery(sql);
			tx.commit();
			List<Object[]> villes = (List<Object[]>) query.list();
			for (Object[] ville : villes) {
				int codeville = Integer.parseInt(ville[0].toString());
				int countville = Integer.parseInt(ville[1].toString());
				villeCounts.put(codeville, countville);
			}

		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}

		return villeCounts;
	}

	@SuppressWarnings("unchecked")
	public HashMap<Integer, Integer> CountProfession() {

		HashMap<Integer, Integer> professionCounts = new HashMap<Integer, Integer>();

		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			String sql = "SELECT CodeProfession,COUNT(*) FROM seller GROUP BY CodeProfession ORDER BY CodeProfession ASC";
			SQLQuery query = session.createSQLQuery(sql);
			tx.commit();
			List<Object[]> professions = (List<Object[]>) query.list();
			for (Object[] profession : professions) {
				int codeprofession = Integer.parseInt(profession[0].toString());
				int countprofession = Integer.parseInt(profession[1].toString());
				professionCounts.put(codeprofession, countprofession);
			}

		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}

		return professionCounts;
	}

	@SuppressWarnings("unchecked")
	public List<Integer> OffersCreatedByDate() {

		List<Integer> offrescount = new ArrayList<Integer>();

		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			String sql = "SELECT COUNT(*) FROM offreemploi where YEAR(DateCreation) = 2022 GROUP BY MONTH(DateCreation) ORDER BY MONTH(DateCreation) ASC";
			SQLQuery query = session.createSQLQuery(sql);
			tx.commit();
			offrescount = (List<Integer>) query.list();
//			for(Object[] offre: offres ) {
//				int count = Integer.parseInt(offre[0].toString());
//				offrescount.add(count);
//			}

		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}

		return offrescount;

	}

	@SuppressWarnings("unchecked")
	public List<Integer> UsersCreatedByDate() {

		List<Integer> userscount = new ArrayList<Integer>();

		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			String sql = "SELECT COUNT(*) FROM utilisateur where YEAR(DateInscrip) = 2022 GROUP BY MONTH(DateInscrip) ORDER BY MONTH(DateInscrip) ASC";
			SQLQuery query = session.createSQLQuery(sql);
			tx.commit();
			userscount = (List<Integer>) query.list();

		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}

		return userscount;

	}

}
