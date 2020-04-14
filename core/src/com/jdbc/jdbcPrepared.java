package com.jdbc;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public class jdbcPrepared
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
      public void executeSelect(int no)
      {
    	  try
    	  {
    		  
    		 pst=con.prepareStatement("select * from food where ticket_no=?");
    		 pst.setInt(1,no);
    		 rs=pst.executeQuery();
    		  
    	  while(rs.next())
    	  {
    		  int t_no=rs.getInt(1);
    		  int item=rs.getInt(2);
    		  int total=rs.getInt(3);
    		  
    		  System.out.println("ticket_no is "+t_no);
    		  System.out.println("count of items is "+item);
    		  System.out.println("total is "+total);
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
    		 
    		  //inserting -----
    		 pst=con.prepareStatement("insert into food values(?,?,?)");
     		 pst.setInt(1,1003);
     		 pst.setInt(2,11);
     		 pst.setInt(3,1010);
     		 updatecount=pst.executeUpdate();
     		 System.out.println(updatecount+"Number of records inserted");
     		 
     		 //updating -------
     		 pst=con.prepareStatement("update food set items=12 where ticket_no=?");
    		 pst.setInt(1,100);
    		 updatecount=pst.executeUpdate();
    		 System.out.println(updatecount+"Number of records updated");
    		 
    		 //deleting ------
    		 pst=con.prepareStatement("delete from food where ticket_no=?");
    		 pst.setInt(1,100);
    		 updatecount=pst.executeUpdate();
    		 System.out.println(updatecount+"Number of records deleted");
    		 
    	  }
    	  catch(Exception e)
    	  {
    		  e.printStackTrace();
    	  }  
      }
      public static void main(String args[])
      {
    	  jdbcPrepared jd=new jdbcPrepared();
    	  jd.connect();
    	  jd.executeSelect(1);
    	  jd.executeUpdate();
    	 
      }
}
