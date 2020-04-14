package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.Sports;
import model.Restaurant;

public class ListSport {

	public ListSport() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String args[])
	{
		ApplicationContext ctx=new ClassPathXmlApplicationContext("com/spring-config.xml");
		Sports s=ctx.getBean("sport",Sports.class);
		System.out.println(s.getSname());
	}
}
