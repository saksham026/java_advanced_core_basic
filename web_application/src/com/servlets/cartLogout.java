package com.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.books;
import com.serviceProvider.BookServices;
import com.services.BookInterface;


public class cartLogout extends HttpServlet {
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session=request.getSession(false);
		
		ArrayList bookName=(ArrayList) session.getAttribute("bookinfo");
		bookName.clear();
		HashMap<String,Integer> mapav=(HashMap<String, Integer>) session.getAttribute("bookall");
		mapav.clear();
		
		session.invalidate();
		System.out.println(bookName+"checking"+mapav);
		//RequestDispatcher r=request.getRequestDispatcher("/login.html");
		//r.forward(request, response);
		
		response.sendRedirect("login.html");
		
		
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		
	}
	
	

}
