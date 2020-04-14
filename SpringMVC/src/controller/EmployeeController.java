package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bean.Employee;
import model.EmployeeDao;

@Controller
//@RequestMapping("hello") folder creation (http://localhost:8080/SpringMVC/hello/showForm.html)
public class EmployeeController
{
	@Autowired
	EmployeeDao dao;
	@RequestMapping("/showForm")
	public String showForm(Model model)
	{
		model.addAttribute("employee",new Employee());
		return "employee";
	}
	
   @RequestMapping("/processForm")
   public String processEmp(@ModelAttribute("employee") Employee employee)
   {
	   employee.setId(employee.getId());
	   employee.setFname(employee.getFname());
	   dao.save(employee);
	   return "employeeSave";
	   
   }
   
   //public String processForm(HttpServletRequest request,Model model)
   /*public String processForm(@RequestParam("id") int id,@RequestParam("uname") String uname,Model model)
   {
	   int id = Integer.parseInt(request.getParameter("id"));
	   String uname = request.getParameter("uname");
	   uname =  uname.toUpperCase();
	   String result = "Welcome ," +uname;
	   model.addAttribute("msg",result);
	   model.addAttribute("id",id);
	   return "displayEmployee";
   }*/
   
   
}
