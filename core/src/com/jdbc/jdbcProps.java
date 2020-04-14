package com.jdbc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.provider.ConnectionProvider;

import java.sql.Connection;

public class jdbcProps
{
	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	
      public void connect()
      {
      try
      {
    	  con=ConnectionProvider.getConnection();

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
     		 pst.setInt(1,203);
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
    		 pst.setInt(1,1003);
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
    	  jdbcProps jd=new jdbcProps();
    	  jd.connect();
    	  int a=Integer.parseInt(args[0]);
    	  jd.executeSelect(a);
    	  jd.executeUpdate();
    	 
      }
}
