package Eager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import onetomany.product;

public class ProductEagerLazy {

	Session session;
	Transaction tx;
	public ProductEagerLazy() {	//change category and product mapping
		// TODO Auto-generated constructor stub
		AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		session = sf.openSession();
		tx = session.beginTransaction();	
		
		//for not showing dependency i.e product and category remove dependency by lazy
		//and eager for showing dependency
		product p=(product)session.get(product.class, 1);
		System.out.println(p.getPid());
		System.out.println(p.getCategory().getCname());  
		System.out.println("individual query is fired for both instaed of single joined course");  
		
		
	}

	public static void main(String args[])
	{
		
		new ProductEagerLazy();
	}
}
