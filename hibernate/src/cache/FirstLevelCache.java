package cache;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import onetomany.product;

public class FirstLevelCache {
	
	Session session;
	Transaction tx;
	Session session1;
	Transaction tx1;
	
	public FirstLevelCache()
	{
		AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		session = sf.openSession();
		tx = session.beginTransaction();
		
		product p1= (product) session.load(product.class, 1);
		System.out.println(p1.getPid());
		session.close();
		
		session1 = sf.openSession();
		tx1 = session1.beginTransaction();
		product p2= (product) session1.load(product.class, 1);
		System.out.println(p2.getPid());
		
		product p3= (product) session1.load(product.class, 1);
		System.out.println(p3.getPid());
		
	}

	public static void main(String args[])
	{
		new FirstLevelCache();
	}
}
