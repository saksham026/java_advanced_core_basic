package com.StateManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BookPickerServlet extends HttpServlet {	

	ArrayList list;
	public void init()
	{
		 list=new ArrayList();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out=response.getWriter();		
		//extract book purchased by user
		
		String bookname=request.getParameter("booklist");
		System.out.println(bookname);
		list.add(bookname);
		//getting data from existing session
		
		HttpSession session=request.getSession(false);
		String sessionId=session.getId();
		String username=(String)session.getAttribute("username");
		System.out.println("session information is:..."+sessionId+"/..."+username);
		
		//setting purchase information in session object
		session.setAttribute("bookinfo",list);
		
		RequestDispatcher dispatch=request.getRequestDispatcher("/calculate");
		dispatch.forward(request,response);
		
		
		
		
	}

}
