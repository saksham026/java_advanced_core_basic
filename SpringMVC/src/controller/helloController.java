package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller	//it contains only classes and only one servlet that is inbuilt and gets request from dispatcherservlet
public class helloController {


	//it contains our business code
	//and handles request by below annotation
	@RequestMapping("welcome")	//welcome is page's name and get fit into /.html
	public String hello()
	{
		//read/write the data from database
		return "mainPage";		//here mainpage is our view name
	}
	
	@RequestMapping("next")
	public String abc()
	{
		
		return "secondPage";
	}
}
//model takes data that is going to be write/read and class is called inside method
//controller retreives data from database and place in model which actually get pass to view fro that spring should know view address
//for this view template is created and view