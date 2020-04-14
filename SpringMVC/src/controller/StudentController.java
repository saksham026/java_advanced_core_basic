package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.Student;

@Controller
public class StudentController {

	@RequestMapping("/displayStudent")
	public String displayStudent(Model model)
	{
		Student student = new Student();
		model.addAttribute("student",student);
		return "student";
		
	}
	@RequestMapping("/myData.html")
	public String processData(@ModelAttribute("student1") Student st)
	{
		System.out.println(st.getFname());
		System.out.println(st.getLname());
		System.out.println(st.getCountryoption());
		
		return "displayStudent";
	}
}
