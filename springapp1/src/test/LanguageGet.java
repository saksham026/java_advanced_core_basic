package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.CountryLanguage;
import model.Restaurant;

public class LanguageGet {

	
public static void main(String args[]) {
	
	ApplicationContext ctx=new ClassPathXmlApplicationContext("com/spring-config.xml");
	CountryLanguage c=ctx.getBean("lang",CountryLanguage.class);
	System.out.println(c.toString());
}
}
