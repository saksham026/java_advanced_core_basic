package onetomany;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import java.util.*;

public class InsertCategory {

	Session session;
	Transaction tx;
	
	public InsertCategory() {
		AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		session = sf.openSession();
		tx = session.beginTransaction();
		
		category cat=new category();
		cat.setCname("Mobile");
		
		product p1=new product("asus zmpm1","brilliant",12000f,cat);
		product p2=new product("spksp","28 gb ram",122000f,cat);
		product p3=new product("sjvj","4 tb memory",132000f,cat);
		
		p1.setCategory(cat);
		p2.setCategory(cat);
		p3.setCategory(cat);
		
		Set<product> s=new HashSet<product>();
		s.add(p1);
		s.add(p2);
		s.add(p3);
		
		cat.setProduct(s);
		session.save(cat);
		System.out.println("isnerted");	
		
		tx.commit();
		session.close();
		
	}
	public static void main(String args[])
	{
		new InsertCategory();
	}
}
