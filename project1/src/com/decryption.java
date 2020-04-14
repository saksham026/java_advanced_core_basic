package com;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.Database;
import com.login.*;
/**
 * Servlet implementation class decryption
 */
@WebServlet("/decryption")
public class decryption extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public decryption() {
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
				byte[] b1=new byte[size];
				InputStream is=rs.getBinaryStream(6);
				int rlen=is.read(b1,0,size);
				for(int i=0;i<size;i++){
					if(i%2==0)
					{
						b1[i]-=2;
						//out.println((char)b1[i]);
					}//System.out.print((char)b1[i]);
				}
				FileOutputStream file=new FileOutputStream("d:/sak.txt");
				file.write(b1);
			
			
				
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
