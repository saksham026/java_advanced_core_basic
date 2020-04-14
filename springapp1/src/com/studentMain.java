package com;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class studentMain {

	public static void main(String args[])
	{
		// TODO Auto-generated constructor stub
		ApplicationContext ctx=new ClassPathXmlApplicationContext("com/spring-config.xml");
		student s=ctx.getBean("stud",student.class);
		s.showDetails();
	}

}
