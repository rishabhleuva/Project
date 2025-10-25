package dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.UserPojo;
import util.hibernateutil;

public class UserDao {

	public void InsertUser(UserPojo w) {
	    Transaction tx = null;
	    Session session = null;
	    try {
	        session = hibernateutil.getsessionfactory().openSession();
	        tx = session.beginTransaction();
	        session.save(w);
	        tx.commit();
	    } catch (Exception e) {
	        if (tx != null && tx.isActive()) {
	            tx.rollback();
	        }
	        System.out.println("user not inserted: " + e.getMessage());
	        e.printStackTrace();
	    } finally {
	        if (session != null && session.isOpen()) {
	            session.close();
	        }
	    }
	}
	
	public static UserPojo fetchUserbyEmail(String email) {
		UserPojo w = null;
		
		try (Session session = hibernateutil.getsessionfactory().openSession()) {
            w = session.createQuery("FROM UserPojo WHERE email = :email", UserPojo.class)
                    .setParameter("email", email)
                    .uniqueResult();
        } catch (Exception e) {
            System.out.println("User cannot be fetched: " + e.getMessage());
        }
		
		return w;
	}


    public boolean deleteUser(int id) {
        Transaction tx = null;
        boolean result = false;
        try (Session session = hibernateutil.getsessionfactory().openSession()) {
            tx = session.beginTransaction();
            UserPojo u = session.get(UserPojo.class, id);
            if (u != null) {
                session.delete(u);
                result = true;
            }
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            System.out.println("data not deleted: " + e.getMessage());
        }
        return result;
    }

    public boolean updateUser(UserPojo u) {
        Transaction tx = null;
        boolean result = false;
        try (Session session = hibernateutil.getsessionfactory().openSession()) {
            tx = session.beginTransaction();
            session.update(u);
            tx.commit();
            result = true;
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            System.out.println("User not updated: " + e.getMessage());
        }
        return result;
    }

    public UserPojo fetchUserById(int id) {
        UserPojo u = null;
        try (Session session = hibernateutil.getsessionfactory().openSession()) {
            u = session.get(UserPojo.class, id);
        } catch (Exception e) {
            System.out.println("User cannot be fetched: " + e.getMessage());
        }
        return u;
    }

    public List<UserPojo> fetchUsers() {
        List<UserPojo> userList = null;
        try (Session session = hibernateutil.getsessionfactory().openSession()) {
            userList = session.createQuery("FROM UserPojo", UserPojo.class).list();
        } catch (Exception e) {
            System.out.println("Users cannot be fetched: " + e.getMessage());
        }
        return userList;
    }
}
