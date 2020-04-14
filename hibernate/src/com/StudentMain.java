package com;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class StudentMain {

	public static void main(String args[])
	{
	
		AnnotationConfiguration cfg=(AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session session =sf.openSession();
		
		Transaction tx=session.beginTransaction();
		
		student s=new student();
		s.setSname("saksham");
		s.setDob(new Date());
		
		session.save(s);
		System.out.println("hdhtd");
		
		tx.commit();
		session.close();
			
		
	}
}
