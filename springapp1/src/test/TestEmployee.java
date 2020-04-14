package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.Employee;

public class TestEmployee {

	
	public static void main(String args[])
	{
		ApplicationContext ctx=new ClassPathXmlApplicationContext("com/spring-config.xml");
		Employee e=ctx.getBean("emp",Employee.class);
		e.show();
				//application context represents the container;
	}
}
