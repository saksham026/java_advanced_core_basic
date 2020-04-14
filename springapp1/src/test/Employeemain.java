package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.Employee;
import bean.EmployeeDao;

public class Employeemain {

	public static void main(String[] args) {  
	    ApplicationContext ctx=new ClassPathXmlApplicationContext("com/jdbccontext.xml");  
	      
	    EmployeeDao dao=(EmployeeDao)ctx.getBean("edao");  
	    
	    Employee e=new Employee(); 
	    e.setId(102); 
	    e.setName("saksham");
	    e.setSalary(100f);
	    int status=dao.saveEmployee(e);  
	    System.out.println(status);
	    
	    /*int status=dao.saveEmployee(new Employee(102,"Amit",35000));  
	    System.out.println(status);  */
	    
	    /*int status=dao.updateEmployee(new Employee(102,"Sonoo",15000)); 
	    System.out.println(status); 
	    */  
	          
	      
	}

}
