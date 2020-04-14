package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.Movies;
import dao.Coach;

public class moviemain {

	public static void main(String args[])
	{
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext(bean.Movies.class);
		Movies r=ctx.getBean("movies",Movies.class);	//if thatSillyCoach bean id was not there then it would be name of class object by default with first letter in small
			
		System.out.println(r.getMovieName());
		
	
	}

}
