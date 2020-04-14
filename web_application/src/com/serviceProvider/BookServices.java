package com.serviceProvider;

import java.awt.print.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.beans.User;
import com.beans.books;
import com.services.BookInterface;

public class BookServices implements BookInterface
{

	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	public BookServices(Connection con)
	{
		this.con=con;
	}
	
	@Override
	public int checkAvailability(String BookName) {
		// TODO Auto-generated method stub
		int avail=0;
	  	  try
	  	  {
	  		   
	  		 pst=con.prepareStatement("select * from books where name=?");
	  	
	  		 pst.setString(1,BookName);
	  		
	  		 rs=pst.executeQuery();
	  		  
	  	  while(rs.next())
	  	  {
	  		  String name=rs.getString(1);
	  		  int price=rs.getInt(2);
	  		  int quantity=rs.getInt(3);
	  		  
	  		  avail=quantity;
	  		
	  	  }
	        }
	  	  catch(Exception e)
	  	  {
	  		  e.printStackTrace();
	  	  }
	  	  return avail;	
	
	}
	
	@Override
	public books givedetails(String BookName) {
		// TODO Auto-generated method stub
		books b=null;
	  	  try
	  	  {
	  		   
	  		 pst=con.prepareStatement("select * from books where name=?");
	  	
	  		 pst.setString(1,BookName);
	  		
	  		 rs=pst.executeQuery();
	  		  
	  	  while(rs.next())
	  	  {
	  		  String name=rs.getString(1);
	  		  int price=rs.getInt(2);
	  		  int quantity=rs.getInt(3);
	  		  
	  		  b=new books(name,price,quantity);
	  		
	  	  }
	        }
	  	  catch(Exception e)
	  	  {
	  		  e.printStackTrace();
	  	  }
	  	  return b;	
	  	  }

	@Override
	public void buybooks(books b) {
		// TODO Auto-generated method stub
		int uc=0;
	  	  try
	  	  {
	  		   
	  		 pst=con.prepareStatement("update books set quantity=? where name=?");
	  	
	  		 pst.setString(2,b.getBookName());
	  		 pst.setInt(1,b.getQuantity());
		  		
	  		 uc=pst.executeUpdate();
	  		  
	  	  if(uc>0)
	  	  {
	  		  
	  		System.out.println("updated");
	  	  }
	        }
	  	  catch(Exception e)
	  	  {
	  		  e.printStackTrace();
	  	  }
	
	}
	
}


