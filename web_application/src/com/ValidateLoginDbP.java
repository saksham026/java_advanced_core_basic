package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.provider.connectionProvider;

public class ValidateLoginDbP extends HttpServlet {
	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	public void init(){
		// TODO Auto-generated method stub
		 try
	      {
			 con=connectionProvider.getConnection();
	    	  
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
		String userName=request.getParameter("uname");
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
    			  out.println("welcome"+name);	
    			}
    			else
    			{
    				out.print("enter correct password");
    			}
    		
    	  }
    	  if(flag==0)
    	  {
    		  out.println("user does not exist");
    	  }
          }
		  
    	  catch(Exception e)
    	  {
    		  e.printStackTrace();
    	  }
		
	}

}
