package retrieve;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import manytomany.author;
import manytomany.book;
import manytomany.insertbook;
import onetomany.product;

public class ProductRetrieve {
	
	Session session;
	Transaction tx;
	
	
	public ProductRetrieve()
	{
	AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
	SessionFactory sf = cfg.buildSessionFactory();
	session = sf.openSession();
	tx = session.beginTransaction();
	
	Criteria ct=session.createCriteria(onetomany.product.class);
	List li=ct.list();
	for(Iterator<product> it=li.iterator();it.hasNext();)
	{
		product m=it.next();
		System.out.println("--------------");
		System.out.println("id"+m.getPid());
		System.out.println("price"+m.getPrice());
		System.out.println("category id"+m.getCategory().getCid()); //drawback
		System.out.println("category name "+m.getCategory().getCname());
		
	}
	
	product m=(product) session.load(product.class,1); //we can use get instead of load which returns null and load returns objectfoundexception

	System.out.println("id"+m.getPid());
	System.out.println("price"+m.getPrice());
	System.out.println("category id"+m.getCategory().getCid()); //drawback
	System.out.println("category name "+m.getCategory().getCname());
	
	System.out.println("isnerted");	
	
	
	tx.commit();
	session.close();
	System.out.println("done");
}
	public static void main(String args[])
	{
		new ProductRetrieve();
	}
}

