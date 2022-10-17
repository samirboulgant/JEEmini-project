package com.Dao;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateConf {
	
	public static SessionFactory sessionFactory() {
		SessionFactory factory = null;
		try {
			factory = new Configuration().configure().buildSessionFactory();
		} catch (Throwable ex) {
			System.out.println("Factory error");
		}
		return factory;
	}
	
	public static SessionFactory sessionFactory(SessionFactory fact) {
		if(fact == null) {
			try {
				fact = new Configuration().configure().buildSessionFactory();
			} catch (Throwable ex) {
				System.out.println("Factory error");
			}
		}
		return fact;
	}
}
