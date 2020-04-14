package com;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ValidateLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String userName=request.getParameter("uname");
		String pass=request.getParameter("psw");
		
		if(userName.equals("saksham") && pass.equals("sa"))
		{
		out.println("logged in");	
		}
		else
		{
			out.print("try again");
		}
		
	}

}
