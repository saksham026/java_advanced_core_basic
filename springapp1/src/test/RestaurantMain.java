package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.Employee;

import model.Restaurant;

public class RestaurantMain
{

	public RestaurantMain() {
		// TODO Auto-generated constructor stub
	}
	
	public static void main(String args[])
	{
		ApplicationContext ctx=new ClassPathXmlApplicationContext("com/spring-config.xml");
		Restaurant r=ctx.getBean("rest",Restaurant.class);
		r.order();
	}
	
}