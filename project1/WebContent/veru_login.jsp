<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,model.Database"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
		{
			 String user=request.getParameter("email");
			 String pass=request.getParameter("pass");
			 String year1=request.getParameter("year");
			 String gfm=request.getParameter("gfm");
				if(gfm==null)
				{
					gfm="no";
				
				}
				System.out.println(gfm);
			 
			System.out.println(user+pass+year1);
			String uname="";
			String upass="";
			
			Connection con=Database.dataConnection();
			Statement stm=con.createStatement();
			String str="SELECT * FROM teach_login WHERE id ='"+user+"' AND passwd='"+pass+"' and year='"+year1+"'";
			ResultSet rs=stm.executeQuery(str);
			if(rs.next())
			{
				String sub=rs.getString(4);
				String year=rs.getString(5);
				
				//out.println("<h2>welcome what would you like to do</h2>");
				//just put subject and year in url
				
				response.sendRedirect("teach_login.jsp?sub="+sub+"&year="+year+"&gfm="+gfm+"");
			}
			//if(user.equals(uname)&&(pass.equals(upass)))
			//{
				//out.println("valid user");
			//}
			else
			{
				out.println("<h3>you are not admin</h3>");
				response.sendRedirect("index2.jsp");
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}
%>
</body>
</html>