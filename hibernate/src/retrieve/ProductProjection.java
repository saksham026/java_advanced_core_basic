package retrieve;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import onetomany.product;

public class ProductProjection {

	Session session;
	Transaction tx;
	
	public ProductProjection()
	{
	AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
	SessionFactory sf = cfg.buildSessionFactory();
	session = sf.openSession();
	tx = session.beginTransaction();
	
	Criteria ct=session.createCriteria(onetomany.product.class);
	Projection p1=Projections.rowCount();
	Projection p3=Projections.avg("pid");
	Projection p2=Projections.property("pname");	//projection include group by,min,max,etc
	ProjectionList pl=Projections.projectionList();
	pl.add(p1);
	pl.add(p2);
	pl.add(p3);
	ct.setProjection(pl);
	
	//ct.setProjection(Projections.property("pid"));
	
	List li=ct.list();
	for(Iterator<Object[]> it=li.iterator();it.hasNext();)
	{
		Object[] obj=it.next();		//as object is top level class therefore it will accept anything() 
		System.out.println(obj[0]);
		System.out.println(obj[1]);
									//try restriction and projection
	}
	
	}
	//projections are used to read partial data therefore can not use it.next()
	//for multiple projection use projection list
	public static void main(String args[])
	{
		new ProductProjection();
	}
}