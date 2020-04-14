package com;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Employeemain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Configuration cfg=new Configuration().configure("com/hibernatefile.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session session =sf.openSession();
		
		Transaction tx=session.beginTransaction();
		employee e=new employee();
		e.setId(2);
		e.setEname("saksham");
		e.setSalary(10000f);
		session.save(e);
		System.out.println("vlaue inserted");
		
		
		
		tx.commit();
		session.close();
		
		
	}

}
