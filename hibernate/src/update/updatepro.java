package update;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import onetomany.product;

public class updatepro {

	Session session;
	Transaction tx;
	
	updatepro()
	{
		AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		session = sf.openSession();
		tx = session.beginTransaction();
		
		product m=(product) session.load(product.class,1); //we can use get instead of load which returns null and load returns objectfoundexception

		
		m.setPname("abcdefghi");
		session.update(m);

		product m1=(product) session.load(product.class,3); //we can use get instead of load which returns null and load returns objectfoundexception

		
		//m.setPname("abcdefghi");
		session.delete(m1);
		
		tx.commit();
		session.close();
		System.out.println("done");
	}
	
	public static void main(String args[]){
		// TODO Auto-generated method stub
		new updatepro();
	}
}
