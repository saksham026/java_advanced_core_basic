package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {

	PreparedStatement pst;
	Connection con;
	
	public void init(ServletConfig config) throws ServletException {
	       super.init(config);
	       
		 try
	      {
			  String driverclass=getServletConfig().getServletContext().getInitParameter("DriverName");
			  String url=getServletConfig().getServletContext().getInitParameter("Connection");
			  String user=getServletConfig().getServletContext().getInitParameter("UserName");
			  String pass=getServletConfig().getServletContext().getInitParameter("Password");
			  
			  Class.forName(driverclass);
	    	  con = DriverManager.getConnection(url,user,pass);
	    	  
	      }
	      catch(Exception e)
	      {
	    	  e.printStackTrace();
	      }
	}


	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.service(arg0, arg1);
		
	}

	
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		con=null;
		pst=null;
	}

	
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}

	public boolean checkNull(String c)
	{
		if(c!="")
		{
			return true;
		}
		return false;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String name=request.getParameter("name");
		String bal=request.getParameter("bal");
		int balance=Integer.parseInt(bal);
		String accType=request.getParameter("accType");
		
		String category=request.getParameter("acc");
		
		String services[]=request.getParameterValues("service");
		int updateCount=0;
		
		
		//out.println(name+balance+accType+category);
 		
		
		if(checkNull(name)&&checkNull(accType)&&checkNull(category)&&services!=null&&balance>0&&category!=null)
		{
			try
	    	  {
	    		   
	    		 pst=con.prepareStatement("insert into users_data values(?,?,?,?,?,?,?)");
	    	
	    		 pst.setString(1,name);
	    		 pst.setInt(2, balance);
	    		 pst.setString(3, accType);
	    		 pst.setString(4, category);
	    		 int k=5,flag1=0,flag2=0,flag3=0;
	    		 
	    		 for(int i=0;i<services.length;i++)
	    		 {
	    			if(services[i].equals("Net Banking"))
	    			{
	    				k=5;
	    				flag1=1;
	    				
	    			}
	    			else if(services[i].equals("Mobile Banking"))
	    			{
	    				k=6;
	    				flag2=1;
	    			}
	    			else if(services[i].equals("Sms Alert"))
	    			{
	    				k=7;
	    				flag3=1;
	    			}
	    			pst.setString(k, services[i]);
	    		 }
	    		 
	    		 if(flag1==0)
	    		 {
	    			 pst.setString(5, "not chosen");
	    		  
	    		 }
	    		 if(flag2==0)
	    		 {
	    			 pst.setString(6, "not chosen");
	    		  
	    		 }
	    		 if(flag3==0)
	    		 {
	    			 pst.setString(7, "not  chosen");
	    		  
	    		 }
	    		
	    		 updateCount=pst.executeUpdate();
	    		 if(updateCount>0)
	    		 {
	    		 out.println("you are now registered");
	    		 response.sendRedirect("www.google.com");
	    		 }
	    	  }
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		else
		{
			out.println("please enter proper values");
		}
		
	}

}
