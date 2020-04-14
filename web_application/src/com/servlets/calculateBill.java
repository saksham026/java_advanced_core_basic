package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.beans.books;
import com.serviceProvider.BookServices;
import com.services.BookInterface;


public class calculateBill extends HttpServlet {
	
	
	books b;
	BookInterface bs;
	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	HashMap<String,Integer> mapav=new HashMap<>();
	
	public void init()
	{
		con=(Connection) getServletContext().getAttribute("dbcon");
		bs=new BookServices(con);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		HttpSession session=request.getSession(false);
		String uName=(String) session.getAttribute("userName");
		int price=0;
		mapav.put("DBMS",0);
		mapav.put("PYTHON",0);
		mapav.put("JAVA",0);
		
		
		Set<String> items = new HashSet<String>();
		
		ArrayList bookName=(ArrayList) session.getAttribute("bookinfo");
		for(int i=0;i<bookName.size();i++)
		{
			
			String book=(String) bookName.get(i);
			b=bs.givedetails(book);
			price+=b.getPrice();
			items.add(b.getBookName());
			mapav.put(b.getBookName(),mapav.get(b.getBookName())+1);
			
			
		}
		
		int flag=0;
		
		for(int i=0;i<bookName.size();i++)
		{
		String book=(String) bookName.get(i);
		int c=bs.checkAvailability(book);
		if(c<mapav.get(book))
		{
			flag=1;
			bookName.remove(bookName.size()-1);
			session.setAttribute("bookinfo",bookName);
		}
		}
		
		if(flag==1)
		{
			RequestDispatcher r=request.getRequestDispatcher("/shopbook.html");
			r.include(request, response);
			out.print("last book selected not availble");
		}
		else
		{
		//printing code
		out.println("hello"+uName+"<br>");
		out.println("purchased items are"+items+"<br>");
		out.println("total bill is"+price+"<br>");

		session.setAttribute("bookall",mapav);
		out.println("<a href='pay'>make payment</a>");
		}
		
		
	}

}
