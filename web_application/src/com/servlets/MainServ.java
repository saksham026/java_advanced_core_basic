package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.User;
import com.serviceProvider.UserServices;
import com.services.UserInterface;

public class MainServ extends HttpServlet {
	
	User u;
	UserInterface us;
	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	public void init()
	{
		try
	      {
			  String driverclass=getServletConfig().getServletContext().getInitParameter("DriverName");
			  String url=getServletConfig().getServletContext().getInitParameter("Connection");
			  String user=getServletConfig().getServletContext().getInitParameter("UserName");
			  String pass=getServletConfig().getServletContext().getInitParameter("Password");
			  
			  Class.forName(driverclass);
	    	  con = DriverManager.getConnection(url,user,pass);
	    	 
	    	  us=new UserServices(con);
	      }
	      catch(Exception e)
	      {
	    	  e.printStackTrace();
	      }
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		//out.println(request.getRequestURL());
		
		if((request.getRequestURI().toString()).equals("/webInternship1/logdirect"))
		{
			String name=request.getParameter("uname");
			String password=request.getParameter("psw");
			u=us.signIn(name);
			if(password.equals(u.getPassword()))
			{
				RequestDispatcher r=request.getRequestDispatcher("/register.html");
  				r.forward(request, response);
			}
			else
			{
				RequestDispatcher r=request.getRequestDispatcher("/login.html");
  				r.include(request, response);
  				out.println("incorrect password");
			}
		}
		else if((request.getRequestURI().toString()).equals("/webInternship1/signdirect"))
		{
			int c=0;
			String name=request.getParameter("uname");
			String password=request.getParameter("psw");
			u=new User(name,password);
			c=us.signUp(u);
			if(c>0)
			{
				RequestDispatcher r=request.getRequestDispatcher("/login.html");
  				r.forward(request, response);
			}
			else
			{
				RequestDispatcher r=request.getRequestDispatcher("/signup.html");
				r.include(request, response);
  				out.println("not able to sign-up try again");
			}
		}
		else
		{
			out.println("something wrong happens");
		}
		
	}

}
