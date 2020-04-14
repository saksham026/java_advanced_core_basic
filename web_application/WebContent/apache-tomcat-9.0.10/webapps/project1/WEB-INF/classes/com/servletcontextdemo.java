package com;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servletcontextdemo
 */
@WebServlet("/servletcontextdemo")
public class servletcontextdemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletcontextdemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		ServletContext application=getServletContext();
		String season=application.getInitParameter("season");
		FileReader f=new FileReader(season);
	 
			
		FileInputStream file=new FileInputStream(season);
		BufferedInputStream buf=new BufferedInputStream(file,1);
		int x;
		
		while((x=buf.read())!=-1)
			out.print((char)x);
		
		out.println(season);
		String user="saksn";
		application.setAttribute("us", user);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

//http is a statleesss protocola and it treats every request as new request
//session is use to track information of aprticukar user
//cookie and url-rewritten both send data at url
//cookie is automatically implemented without writing code by browser

//httpsession session =requets.getsession(true);
//it is a interface of javax.servlet.http;
