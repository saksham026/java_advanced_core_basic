package manytomany;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.*;
import org.hibernate.cfg.*;


public class insertbook {
	Session session;
	Transaction tx;
	
	public insertbook() {
		AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		session = sf.openSession();
		tx = session.beginTransaction();
		
		author au=new author();
		au.setAname("abcd");
		author au1=new author();
		au1.setAname("sde");
		
		Set<author> aset=new HashSet<>();
		aset.add(au);
		aset.add(au1);
		
		//book b2=new book();
		book b=new book("java","ss",500,aset);
		book b1=new book("c","ss",500,aset);
					
		Set<book> s=new HashSet<book>();
		s.add(b);
		s.add(b1);
		//s.add(p3);
		
		au.setBok(s);
		au1.setBok(s);
		
		//p2.setBooks(cat);
		//p3.setBooks(cat);
		//retrieve
		
		
		session.save(au);  //it is serializable as state is saved
		session.save(au1);
		session.save(b);
		session.save(b1);
		
		Query query=session.createQuery("from manytomany.book");
		List li=query.list();
		for(Iterator<book> it=li.iterator();it.hasNext();)
		{
			book m=it.next();
			System.out.println("name"+m.getBid());
			System.out.println("price"+m.getPrice());
			
		}
		System.out.println("isnerted");	
		
		tx.commit();
		session.close();
		System.out.println("done");
}
	public static void main(String args[])
	{
		new insertbook();
	}
}