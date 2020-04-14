 package com;

import java.io.*;

import javax.servlet.*;

public class myservlet implements Servlet 
{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("servlet is destroyed");
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("servlet is initialized");
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		res.setContentType("text/html");           //text/html means write text or html on browser
		PrintWriter out=res.getWriter();         //system.out.pr prints at console for browser we have to create object of printwriter which have object out
		out.println("my first servlet program");
	}

	
	
}
