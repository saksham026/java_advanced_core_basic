package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.Coach;
import model.Restaurant;

public class CoachTest {

	public static void main(String args[])
	{
		ApplicationContext ctx=new ClassPathXmlApplicationContext("com/applicationContext.xml");
		Coach r=ctx.getBean("thatSillyCoach",Coach.class);	//if thatSillyCoach bean id was not there then it would be name of class object by default with first letter in small
		r.getWorkOut();	
		System.out.println(r);
		
		Coach r1=ctx.getBean("thatSillyCoach",Coach.class);
		r1.getWorkOut(); //reference is same as above if scope singleton and different if prototype
		System.out.println(r1);
	
	}
}
 	