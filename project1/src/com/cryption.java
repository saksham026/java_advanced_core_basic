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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.login.*;

import model.Database;

/**
 * Servlet implementation class cryption
 */
@MultipartConfig(maxFileSize=1024*1024*1024*9)
@WebServlet("/cryption")
public class cryption extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cryption() {
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
		//String user=request.getParameter("user");
		try
		{
			Part pImage=request.getPart("photo1");   					//this is for every documents doc image,etc part auuto picks the location
			InputStream is=null;                 //'is' is the object of inputstream
			if(pImage!=null)
			{
				System.out.println("content type"+pImage.getContentType());
				is=pImage.getInputStream();
			}
			
			
			Connection con=Database.dataConnection();
			String str="update register set photo = ? where username='"+login.user1()+"' and password='"+login.pass1()+"'";
			//String str="select * from register where username='"+login.user1()+"' and password='"+login.pass1()+"'";
			PreparedStatement ps=con.prepareStatement(str);
			
			if(pImage!=null)
			{
				ps.setBinaryStream(1,is);
			}
			ps.executeUpdate();
		
			ps.close();
			out.println(login.user1());
			
			con=Database.dataConnection();       //Database is name of class in model package 
			Statement stmt=con.createStatement();
			str="select * from register where username ='"+login.user1()+"'";
			ResultSet rs=stmt.executeQuery(str);
			String len="";
			if(rs.next())
			{
				out.println("done1");
				len=rs.getString(6);       //6 is column entry
			}
			//out.println(len);
			rs=stmt.executeQuery(str);
			if(rs.next())
			{
				int size=len.length();
				byte[] b1=new byte[size];
				is=rs.getBinaryStream(6);
				int rlen=is.read(b1,0,size);
				for(int i=0;i<size;i++){
					if(i%2==0)
					{
						b1[i]-=2;                        //if '-' then file is creating if '+' then normal op is done
						out.println((char)b1[i]);
					}
						
					
						
				}
				//int rlen=is.read(b1,0,size);
				FileOutputStream file=new FileOutputStream("d:/sak.txt");
				file.write(b1);
				response.reset();
				response.getOutputStream().write(b1,0,rlen);
				
				response.getOutputStream().flush();
				response.getOutputStream().close();
				
				pImage=request.getPart("d:/sak.txt");   					//this is for every documents doc image,etc part auuto picks the location
				is=null;                 //'is' is the object of inputstream
				if(pImage!=null)
				{
					System.out.println("content type"+pImage.getContentType());
					is=pImage.getInputStream();
				}
				
				
				con=Database.dataConnection();
				 str="update register set photo = ? where username='"+login.user1()+"' and password='"+login.pass1()+"'";
				//String str="select * from register where username='"+login.user1()+"' and password='"+login.pass1()+"'";
				 ps=con.prepareStatement(str);
				
				if(pImage!=null)
				{
					ps.setBinaryStream(1,is);
				}
				ps.executeUpdate();
			
				ps.close();
				
			}
		}catch(Exception e)
		{
			out.println(e);
		}

	}

}
