package onetoone;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import onetoone.Student;

public class OneToOneMain {
	public OneToOneMain() {
		AnnotationConfiguration cfg = (AnnotationConfiguration) new AnnotationConfiguration().configure("com/hibernatefile.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Student st = new Student();
		//st.setRollno(103);
		st.setSname("Mike");
		
		Student_Detail sd = new Student_Detail();
		sd.setSmobile("99999999");
		sd.setStudent(st);
		Serializable ser = session.save(sd);
		if(ser!=null) {
			System.out.println("Inserted");	
		}
		System.out.println("value is inserted");
		
		tx.commit();
		session.close();
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new OneToOneMain();
	}

}
