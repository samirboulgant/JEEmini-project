package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.beans.Profession;

public class ManageProfession {

	private static SessionFactory factory = HibernateUtil.getSessionFactory();

	@SuppressWarnings("unchecked")
	public List<Profession> getProfessions() {

		List<Profession> profs = new ArrayList<Profession>();

		Session session = factory.openSession();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();

			String sql = "SELECT * FROM profession";
			SQLQuery query = session.createSQLQuery(sql);
			query.addEntity(Profession.class);

			profs = query.list();

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

		return profs;
	}

	@SuppressWarnings("unchecked")
	public Profession getProfession(int codeprofession) {

		List<Profession> profession = new ArrayList<Profession>();

		Session session = factory.openSession();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();

			String sql = "SELECT * FROM profession where CodeProfession = :codeprofession";
			SQLQuery query = session.createSQLQuery(sql);
			query.addEntity(Profession.class);
			query.setParameter("codeprofession", codeprofession);

			profession = query.list();

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

		return profession.get(0);

	}
}
