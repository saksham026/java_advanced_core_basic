package com.provider;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class connectionProvider {

	public static Connection getConnection()
	{
		Connection con=null;
		try 
    	{
    		FileInputStream fis=new FileInputStream("Dbinfo.properties");//read method from a file
    		Properties p=new Properties();
    		p.load(fis);
    		
    		String driver=p.getProperty("DriverName");
    		String url=p.getProperty("Connection");
    		String user=p.getProperty("UserName");
    		String pass=p.getProperty("Password");
    		
    		
    		Class.forName(driver);
    		con=DriverManager.getConnection(url,user,pass);
  	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
		return con;
	}
}
