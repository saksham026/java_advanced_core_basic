package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class sessiondemo
 */
@WebServlet("/sessiondemo")
public class sessiondemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sessiondemo() {
    	
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
		        //for just refreshing 
		
		HttpSession session=request.getSession();
		out.println("session welcome");
		
		out.println("<br>id"+session.getId());
		out.println("<br>Time"+session.getCreationTime());
		out.println("<br>Time"+session.getLastAccessedTime());
		
		response.setHeader("Refresh", "6");                     //time is linked 
		int time=4;
		session.setMaxInactiveInterval(time);           //for creating a new session //make it comment for accesing user
		
		
		String name="saksham";
		session.setAttribute("user", name);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

//sessionid is also a browser dependent
//thus sessionid is saved in server
//browser memory is pragma  which can be cleared
