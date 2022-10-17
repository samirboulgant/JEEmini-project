package com.Dao;

import java.util.List;

import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

import com.beans.User;

public class ManageUser {

	private static SessionFactory factory = HibernateUtil.getSessionFactory();

	public User getUser(int CodeUtilisateur) {

		User user = new User();

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			user = (User) session.get(User.class, CodeUtilisateur);
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
	public User verifyUser(String email, String password) {

		List<User> users = new ArrayList<User>();

		Session session = factory.openSession();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();

			String sql = "SELECT * FROM utilisateur WHERE Email = :Email AND MotDePasse = :Password";
			SQLQuery query = session.createSQLQuery(sql);
			query.addEntity(User.class);
			query.setParameter("Email", email);
			query.setParameter("Password", password);

			users = query.list();

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

		if (users.size() != 0)
			return users.get(0);
		else
			return null;
	}

	public void addUser(User user) {

		Session session = factory.openSession();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();

			session.save(user);

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
	public List<User> GetUsers() {
		Session session = factory.openSession();
		Transaction tx = null;
		List<User> userList = new ArrayList<User>();
		try {
			tx = session.beginTransaction();
			String sql = "SELECT * FROM utilisateur where StatusAdmin != 2";
			SQLQuery users = session.createSQLQuery(sql);
			users.addEntity(User.class);
			tx.commit();

			userList = users.list();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		} finally {
			session.close();
		}
		return userList;

	}
	public void StatusSeller(int codeutilisateur, int status) {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			String sql = "UPDATE utilisateur SET StatusAdmin = :Status WHERE CodeUtilisateur = :Code";
			SQLQuery updater = session.createSQLQuery(sql);
			updater.setParameter("Code", codeutilisateur);
			updater.setParameter("Status", status);
			updater.executeUpdate();
			tx.commit();
		}
		catch (HibernateException e) {
			if(tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
			System.out.println(e);
		}
		finally {
			session.close();
		}
	}
}
