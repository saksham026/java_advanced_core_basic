package com;

import model.Database;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

/**
 * SERVLET implementation class registration
 */

@MultipartConfig(maxFileSize=1024*1024*9)
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
		String fname=request.getParameter("fname");
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		String contact=request.getParameter("contact");
		
		Part pImage=request.getPart("photo");        //this is for every documents doc image,etc part auuto picks the location
		InputStream is=null;                 //'is' is the object of inputstream
		if(pImage!=null)
		{
			System.out.println("content type"+pImage.getContentType());
			is=pImage.getInputStream();
		}
		
		
		Connection con=Database.dataConnection();
		String str="insert into register(fname,username,password,contact,photo)values(?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(str);
		ps.setString(1, fname);
		ps.setString(2, user);
		ps.setString(3, pass);
		ps.setString(4, contact);
		
		if(pImage!=null)
		{
		
			ps.setBinaryStream(5,is);
		}
		boolean b=ps.execute();
		if(b=true)              //for boolean it is checking
		{
			out.println("you are registered as a new user");
			//response.sendRedirect("crypt.jsp");
			
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			//forward gives url of directed page while include gives url of same page
		}
		ps.close();
		}
		catch(Exception e) {
			out.println("error"+e);
			//response.sendRedirect("login.jsp");
		}
		
		out.println("data is stored in database");
		
	}

}


//first servlet is converted into byte code and servlet class is coded into class loader

//class c=class.forName("package.servletname")

//servlet instance is created
//Object obj=c.newInsatnce();       //it is done automatically internally

//then it invokes init(),service(),display()

//servletconfig is an interface present inside javax.servet

//its object is created by web container for each servlet when servlet is initialised and differnt data can be accessed by each

//its object is used to get/retrieve information from web.xml so for accessing text file its path is stored in web.xml

//ServletConfig c=getServletConfig();

//methods to access file after specifying its path

//1-public string getInitParameter(string filename)
//2-public enumeration getInitParameterNames()
//3-public string getServletName()
//4-public ServletContext getServletContext()


