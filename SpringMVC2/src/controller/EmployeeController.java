package controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.sql.*;

import model.Database;
import model.EmployeeModel;
import bean.Employee;

@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try
		{
			String id = request.getParameter("id");
			String fname = request.getParameter("fname");
			String salary = request.getParameter("salary");
			
			int idi=0;
			float sal = 0.0f;
			try
			{
				idi = Integer.valueOf(id);
				sal = Float.valueOf(salary);
			}catch(NumberFormatException e)
			{
			}
			Employee ee = new Employee();
			ee.setId(idi);
			ee.setFname(fname);
			ee.setSalary(sal);
			
			EmployeeModel em = new EmployeeModel();
			em.saveEmp(ee);
			out.println("value inserted");
		}catch(Exception e)
		{
			
		}
	}

}
