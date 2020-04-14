package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.books;

public class bookServlet extends HttpServlet {


	PreparedStatement pst;
	Connection con;
	Statement stmt;
	ResultSet rs;
	ArrayList a;
	
	
	public void init() throws ServletException {
		// TODO Auto-generated method stub

		con=(Connection) getServletContext().getAttribute("dbcon");
		a=new ArrayList();
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String bookName=request.getParameter("bookName");
		a.add(bookName);
	
		HttpSession session=request.getSession(false);
		String sessionId=session.getId();
		
		String uName=(String)session.getAttribute("userName");
		
		session.setAttribute("bookinfo", a);
		
		RequestDispatcher r=request.getRequestDispatcher("/calculate");
		r.forward(request, response);
	}

}
