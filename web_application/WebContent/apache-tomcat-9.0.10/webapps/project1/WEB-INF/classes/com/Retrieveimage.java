package com;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Database;

import java.sql.*;
/**
 * Servlet implementation class Retrieveimage
 */
@WebServlet("/Retrieveimage")
public class Retrieveimage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Retrieveimage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse respon	se)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String user=request.getParameter("user");
		try
		{
			Connection con=Database.dataConnection();       //Database is name of class in model package 
			Statement stmt=con.createStatement();
			String str="select * from register";// where username ='"+user+"'";
			ResultSet rs=stmt.executeQuery(str);
			String len="";
			if(rs.next())
			{
				len=rs.getString(6);       //6 is column entry
			}
			rs=stmt.executeQuery(str);
			if(rs.next())
			{
				int size=len.length();
				byte[] b=new byte[size];
				InputStream is=rs.getBinaryStream(6);
				int rlen=is.read(b,0,size);
				response.reset();
				response.getOutputStream().write(b,0,rlen);
				response.getOutputStream().flush();
				response.getOutputStream().close();
				
			}
		}catch(Exception e)
		{
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
