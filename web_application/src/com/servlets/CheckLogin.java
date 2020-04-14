package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckLogin extends HttpServlet {

	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	public void init() throws ServletException {
		// TODO Auto-generated method stub

		con=(Connection) getServletContext().getAttribute("dbcon");
		
	}
	
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String userName=(String) request.getAttribute("uname");
		String pass=request.getParameter("psw");
		
		  try
    	  {
    		   
    		 pst=con.prepareStatement("select * from users where userName=?");
    	
    		 pst.setString(1,userName);
    		
    		 rs=pst.executeQuery();
    		  
    	  int flag=0; 
    	  while(rs.next())
    	  {
    		  flag=1;
    		  String name=rs.getString(1);
    		  String pass1=rs.getString(2);
    		  System.out.println(name+pass);
    		  if(pass1.equals(pass))
    		  {
    			
    			HttpSession session=request.getSession(true);
    			String sessionId=session.getId();
    			
    			System.out.println("id is"+sessionId);
    			
    			session.setAttribute("userName", name);
    			
  				RequestDispatcher r=request.getRequestDispatcher("/shopbook.html");
  				r.forward(request, response);
    			out.println("welcome"+name);	
    		}
    			else
    			{
    				RequestDispatcher r=request.getRequestDispatcher("/login.html");
    				r.include(request, response);
    				out.print("enter correct password");
    			}
    		
    	  }
    	  if(flag==0)
    	  {
    		  RequestDispatcher r=request.getRequestDispatcher("/login.html");
    		  r.include(request, response);
    		  out.println("<blink>user does not exist</blink>");
    	  }
          }
		  
    	  catch(Exception e)
    	  {
    		  e.printStackTrace();
    	  }
		
	}
		
}

