package com.StateManagement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginValidator extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		if(request.getParameter("username").equals("java")&&request.getParameter("password").equals("java"))
		{
			HttpSession session=request.getSession(true);
			String SessionId=session.getId();
			System.out.println("Session information on logging is:"+SessionId);
			session.setAttribute("username",
					request.getParameter("username"));
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/ShopBooks.html");
			rd.forward(request,response);
		}
		else
		{
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/LoginPage1.html");
			rd.include(request,response);
			out.println("<br/><br/>");
			out.print("Please Try Again");
		}
	}

}
