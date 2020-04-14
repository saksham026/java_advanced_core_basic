package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.CallFortune;
import dao.CategoryDAO;

public class MainFortuneClass {

	public MainFortuneClass() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ctx=new ClassPathXmlApplicationContext("com/applicationContext.xml");
		CallFortune c=ctx.getBean("callFortune",CallFortune.class);	//deafult object is passed 
		c.getWorkOut();
	}

}
