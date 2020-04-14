package com;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.Database;

/**
 * Servlet implementation class addprofile
 */
@WebServlet("/addprofile")
public class addprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addprofile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		try
		{
		String fname=request.getParameter("uname");
		String gender=request.getParameter("gender");
		String occup=request.getParameter("occup");
		String status=request.getParameter("status");
		
		Connection con=Database.dataConnection();
		String str="insert into profile(uname,gender,ptype,active)values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(str);
		ps.setString(1, fname);
		ps.setString(2, gender);
		ps.setString(3, occup);
		ps.setString(4, status);
		
		
		boolean b=ps.execute();
		if(b=true)
		{
			response.sendRedirect("trysake.jsp");
		}
	
		}
		catch(Exception e) {
			out.println("error"+e);
			//response.sendRedirect("login.jsp");
		}
		
	}

}
