package com;

import java.io.IOException;
import java.io.PrintWriter;

import model.Database;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	static String user;
	static String pass;
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		try
		{
			 user=request.getParameter("user");
			 pass=request.getParameter("pass");
			
			
			String uname="";
			String upass="";
			
			Connection con=Database.dataConnection();
			Statement stm=con.createStatement();
			String str="SELECT * FROM register WHERE username ='"+user+"' AND password='"+pass+"'";
			ResultSet rs=stm.executeQuery(str);
			if(rs.next())
			{
				uname=rs.getString(3);                //while retreiving coloumn name is starting from 1
				upass=rs.getString(4);
				out.println("<h2>welcome what would you like to do</h2>"); 
				response.sendRedirect("work.jsp");
			}
			//if(user.equals(uname)&&(pass.equals(upass)))
			//{
				//out.println("valid user");
			//}
			else
			{
				out.println("<h3>please register first</h3>");
				response.sendRedirect("login.jsp");
			}
		}catch(Exception e)
		{
			out.println(e);
		}
		
		
	}

	static String user1()
	{
		return user;
	}
	
	static String pass1() {
	
		return pass;
	}
}
