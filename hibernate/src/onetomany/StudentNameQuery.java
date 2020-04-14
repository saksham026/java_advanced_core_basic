package onetomany;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import onetoone.Student;

public class StudentNameQuery {

	Session session;
	Transaction tx;
	
	public StudentNameQuery()
	{
		AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		session = sf.openSession();
		tx = session.beginTransaction();
		
		//Query query =session.getNamedQuery("ByRollNo");
		//query.setInteger(0,1);		//here o means column no and 1 means rollno. 
		Query query =session.getNamedQuery("byname");
		query.setString(0,"saksham");		//here o means column no(i.e searching()and next is name to search. 
		List<Student> li=query.list();
		
		for(Iterator<Student> i=li.iterator();i.hasNext();)
		{
			Student s=(Student)i.next();
			System.out.println(s.getId());
			System.out.println();
			
		}
	}
	public static void main(String args[])
	{
		new StudentNameQuery();
	}
}
