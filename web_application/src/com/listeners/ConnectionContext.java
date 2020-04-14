package com.listeners;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


public class ConnectionContext implements ServletContextListener {

	Connection con;
	 public void contextInitialized(ServletContextEvent ctx)  { 
         // TODO Auto-generated method stub
		 ServletContext context=ctx.getServletContext();
		 String driverclass=context.getInitParameter("DriverName");
		 String url=context.getInitParameter("Connection");
		 String user=context.getInitParameter("UserName");
		 String pass=context.getInitParameter("Password");
		 
		 try
		 {
			 Class.forName(driverclass);
	    	 con = DriverManager.getConnection(url,user,pass);
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 context.setAttribute("dbcon", con);
    }

    public void contextDestroyed(ServletContextEvent ctx)  { 
         // TODO Auto-generated method stub
    	try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }


}
