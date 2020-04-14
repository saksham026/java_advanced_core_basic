package com.StateManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class CalculatorServlet extends HttpServlet
{	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession(false);
		String sessionId=session.getId();
		
		String username=(String)session.getAttribute("username");
		ArrayList bookname=(ArrayList)session.getAttribute("bookinfo");
		
		for(int i=0;i<bookname.size();i++)
		{
			String book=(String)bookname.get(i);
		}
		
		out.println("Hello..." + username);
		out.println("session id is...:"+sessionId);
		out.println("Your purchase details are:..."+bookname);
		out.println("Total bill amount is:"+bookname.size()*3000);
		out.println("</br></br>");
		
		out.println("<a href='terminate'>Log out</a>");
		
	}

}
