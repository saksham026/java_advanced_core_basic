package cache;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import onetomany.product;

public class SecondLevelCache {

	Session session;
	Transaction tx;
	Session session1;
	Transaction tx1;
	public SecondLevelCache() {
		// TODO Auto-generated constructor stub
		AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		session = sf.openSession();
		tx = session.beginTransaction();	
		//hql- hibernate query language
		
		Query q1=session.createQuery("from onetomany.product where pid=1");
		q1.setCacheable(true);
		product p1= (product) q1.uniqueResult();
		System.out.println(p1.getPid());
		tx.commit();
		session.close();
		
		session1 = sf.openSession();
		tx1 = session1.beginTransaction();
		Query q2=session1.createQuery("from onetomany.product where pid=1");
		q2.setCacheable(true);
		product p2= (product) q2.uniqueResult();
		System.out.println(p2.getPid());
		session1.close();
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new SecondLevelCache();
	}

}
