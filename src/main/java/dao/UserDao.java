package dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;


import pojo.UserPojo;
import util.hibernateutil;

public class UserDao {
	
	public void InsertUser(UserPojo w) {

		Transaction tx = null;
		try {
			
			Session session = hibernateutil.getsessionfactory().openSession();
			tx = session.beginTransaction();
			session.save(w);
			tx.commit();
			session.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("user not inserted");
		}
		
	}
	
	public void DeleteUser(int id) {
		Transaction tx = null;
		
		try {
			Session session = hibernateutil.getsessionfactory().openSession();
			tx = session.beginTransaction();
			UserPojo p = session.get(UserPojo.class, id);
			session.delete(p);
			session.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("data not deleted");
		}
	}
	
	public void UpdateUser(UserPojo w) {
		
		Transaction tx = null;
		
		try {
			Session session = hibernateutil.getsessionfactory().openSession();
			tx = session.beginTransaction();
			session.update(w);
			tx.commit();
			session.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("User not updated");
		}
		
	}
	
	public UserPojo FetchUserbyId(int id) {
		UserPojo u = null;
		try {
			Session session = hibernateutil.getsessionfactory().openSession();
			u = session.get(UserPojo.class, id);
			session.close();
			
		} catch (Exception e) {
			System.out.println("User cannot be fetched");
		}
		
		return u;
	}
	
	public List<UserPojo> FetchUser(){
		
		List<UserPojo> user = null;
		try {
			Session session = hibernateutil.getsessionfactory().openSession();
			user = session.createQuery("FROM UserPojo", UserPojo.class).list();
			
			
		} catch (Exception e) {
			System.out.println("users cannot be fetched");
			// TODO: handle exception
		}
		return user;
		
	}
	
}
																																																																																														