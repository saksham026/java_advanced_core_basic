package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.Employee;

import dao.CategoryDAO;

public class CategoryProduct {

	public static void main(String[] args)
	{
		ApplicationContext ctx=new ClassPathXmlApplicationContext("com/applicationContext.xml");
		CategoryDAO c=ctx.getBean("category",CategoryDAO.class);	//deafult object is passed 
		c.add();
	}

}
