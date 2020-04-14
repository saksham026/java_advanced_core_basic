package com.serviceProvider;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.beans.User;
import com.services.UserInterface;

public class UserServices implements UserInterface{

	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	public UserServices(Connection con)
	{
		this.con=con;
	}
	
	@Override
	
	public int signUp(User u) {
		int uc=0;
  	  try 
  	  {
  		 
  		  //inserting -----
  		 pst=con.prepareStatement("insert into users(userName,pass) values(?,?)");
  		 pst.setString(1,u.getUserName());
  		 pst.setString(2,u.getPassword());
  		 
   		 uc=pst.executeUpdate();
   		 System.out.println("you have been registered");

  		 
  	  }
  	  catch(Exception e)
  	  {
  		  e.printStackTrace();
  	  }  
  	  return uc;
	}

	@Override
	public User signIn(String userName) {
		User u=null;
  	  try
  	  {
  		   
  		 pst=con.prepareStatement("select * from users where userName=?");
  	
  		 pst.setString(1,userName);
  		
  		 rs=pst.executeQuery();
  		  
  	  while(rs.next())
  	  {
  		  String name=rs.getString(1);
  		  String pass=rs.getString(2);
  		  
  		  u=new User(name,pass);
  		
  	  }
        }
  	  catch(Exception e)
  	  {
  		  e.printStackTrace();
  	  }
  	  return u;	
  	  }

	
}
