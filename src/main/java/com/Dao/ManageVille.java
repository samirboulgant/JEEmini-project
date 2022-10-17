package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.beans.Ville;

public class ManageVille {

	private static SessionFactory factory = HibernateUtil.getSessionFactory();

	@SuppressWarnings("unchecked")
	public List<Ville> getVilles() {

		List<Ville> villes = new ArrayList<Ville>();

		Session session = factory.openSession();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();

			String sql = "SELECT * FROM ville";
			SQLQuery query = session.createSQLQuery(sql);
			query.addEntity(Ville.class);

			villes = query.list();

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

		return villes;
	}

	@SuppressWarnings("unchecked")
	public Ville getVille(int codeville) {

		List<Ville> ville = new ArrayList<Ville>();

		Session session = factory.openSession();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();

			String sql = "SELECT * FROM ville where CodeVille = :codeville";
			SQLQuery query = session.createSQLQuery(sql);
			query.addEntity(Ville.class);
			query.setParameter("codeville", codeville);

			ville = query.list();

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

		return ville.get(0);

	}

}
