package com;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Database;
 
/**
 * Servlet implementation class guru_download
 */
public class guru_download extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
			//o.write(imgData);
			response.setContentType("image/gif");
			String gurufile = "image.jpg";
			//String gurupath = "e:/down/";
			response.setContentType("APPLICATION/OCTET-STREAM");
			response.setHeader("Content-Disposition", "attachment; filename=\""
					+ gurufile + "\"");

			//FileInputStream fileInputStream = new FileInputStream(gurupath
				//	+ gurufile);

			BufferedInputStream is=//call function here
			int i;
			while ((i = is.read()) != -1) {
				out.write(i);
			}
			
			//fileInputStream.close();
			is.close();
			out.close();	
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

			
	}
 
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
 
}