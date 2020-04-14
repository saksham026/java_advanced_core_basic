package retrieve;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.criterion.Restrictions;
import onetomany.product;


public class ProductRestriction {

	Session session;
	Transaction tx;
	
	public ProductRestriction()
	{
	AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
	SessionFactory sf = cfg.buildSessionFactory();
	session = sf.openSession();
	tx = session.beginTransaction();
	
	Criteria ct=session.createCriteria(onetomany.product.class);
	//restriction is a class;
	ct.add(Restrictions.eq("price",122000f));
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
	}
	//projections are used to read partial data therefore can not use it.next()
	//for multiple projection use projection list
	
	
	public static void main(String args[])
	{
		ProductRestriction p=new ProductRestriction();
	}
}