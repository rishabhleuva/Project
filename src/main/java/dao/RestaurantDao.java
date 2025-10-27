package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.RestaurantPojo;
import util.hibernateutil;

public class RestaurantDao {
	
	public static void RestaurantRegister(RestaurantPojo p) {
		Transaction tx = null;
		Session session = null;
		
		try {
			session = hibernateutil.getsessionfactory().openSession();
			tx = session.beginTransaction();
			session.save(p);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Owner data not inserted");
		}
		
		
		
	}

}
