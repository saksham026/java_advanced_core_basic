package com.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.beans.User;
import com.dao.daoInterface;
import com.provider.ConnectionProvider;

import java.sql.Connection;

public class userDatabase implements daoInterface
{
	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	
      public userDatabase()
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
      
      public User check(String user)
      {
    	  User u=null;
    	  try
    	  {
    		   
    		 pst=con.prepareStatement("select * from users where userName=?");
    	
    		 pst.setString(1,user);
    		
    		 rs=pst.executeQuery();
    		  
    	  while(rs.next())
    	  {
    		  String name=rs.getString(1);
    		  String pass=rs.getString(2);
    		  
    		  u=new User(name,pass,"");
    		
    	  }
          }
    	  catch(Exception e)
    	  {
    		  e.printStackTrace();
    	  }
    	  return u;
      }
      public int register(User us)
      {
    	  int uc=0;
    	  try 
    	  {
    		 
    		  //inserting -----
    		 pst=con.prepareStatement("insert into users values(?,?,?)");
    		 pst.setString(1,us.getUserName());
    		 pst.setString(2,us.getPassword());
    		 pst.setString(3,us.getSecurityQn());
    		 
    		 
     		 uc=pst.executeUpdate();
     		 System.out.println("you have been registered");

    		 
    	  }
    	  catch(Exception e)
    	  {
    		  e.printStackTrace();
    	  }  
    	  return uc;
      }


	public int update(User u) {
		
		int uc=0;
  	  try 
  	  {
  		 
  		  //inserting -----
  		 pst=con.prepareStatement("update users set pass=? where userName=?");
  		 pst.setString(2,u.getUserName());
  		 pst.setString(1,u.getPassword());
  		 
   		 uc=pst.executeUpdate();
   		 System.out.println("password updated");

  		 
  	  }
  	  catch(Exception e)
  	  {
  		  e.printStackTrace();
  	  }  
  	  return uc;
	}
    
}
