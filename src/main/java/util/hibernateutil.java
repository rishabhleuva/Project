package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class hibernateutil {


	private static SessionFactory sessionfactory;
	
	static {
			
		sessionfactory = new Configuration().configure("cfg.xml").buildSessionFactory();
		
		
	}
	
	public static SessionFactory getsessionfactory() {
		return sessionfactory;
	}
	
}
		