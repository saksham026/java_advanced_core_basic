package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.beans.books;
import com.serviceProvider.BookServices;
import com.services.BookInterface;


public class payment extends HttpServlet {


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
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		HttpSession session=request.getSession(false);
		HashMap<String,Integer> mapav=(HashMap<String, Integer>) session.getAttribute("bookall");
		
		Iterator i=mapav.entrySet().iterator();
		while(i.hasNext())
		{
			Map.Entry ma=(Map.Entry)i.next();
			int c=bs.checkAvailability(ma.getKey().toString());
			b=new books(ma.getKey().toString(),0,c-(int)ma.getValue());
			bs.buybooks(b);
		}
	
		out.print("payment done");
		
		out.println("<a href='terminate'>logout</a>");
	}

}
