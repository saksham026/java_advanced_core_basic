package com.jdbc;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public class jdbcDirect
{
	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	
      public void connect()
      {
      try
      {
    	  Class.forName("com.mysql.jdbc.Driver");
    	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","saksham026");
    	  stmt = con.createStatement();
    	  
      }
      catch(Exception e)
      {
    	  e.printStackTrace();
      }
      }
      public void executeSelect()
      {
    	  try
    	  {
    	  rs=stmt.executeQuery("select * from food where ticket_no=1");
    	  
    	  while(rs.next())
    	  {
    		  int t_no=rs.getInt(1);
    		  int item=rs.getInt(2);
    		  int total=rs.getInt(3);
    		  
    		  System.out.println("ticket_no is..."+t_no);
    		  System.out.println("count of items is..."+item);
    		  System.out.println("total is..."+total);
    	  }
          }
    	  catch(Exception e)
    	  {
    		  e.printStackTrace();
    	  }
}
      public void executeUpdate()
      {
    	  int updatecount=0;
    	  try {
    		  updatecount=stmt.executeUpdate("insert into food values(13,12,750)");
    		  System.out.println(updatecount+"Number of records updated");
    		  updatecount=stmt.executeUpdate("update food set items=12 where ticket_no=1");
    		  System.out.println(updatecount+"Number of records updated");
    		  updatecount=stmt.executeUpdate("delete from food where ticket_no=2");
    		  System.out.println(updatecount+"Number of records updated");
    	  }
    	  catch(Exception e)
    	  {
    		  e.printStackTrace();
    	  }  
      }
      public static void main(String args[])
      {
    	  jdbcDirect jd=new jdbcDirect();
    	  jd.connect();
    	  jd.executeSelect();
    	  jd.executeUpdate();
    	 
      }
}
