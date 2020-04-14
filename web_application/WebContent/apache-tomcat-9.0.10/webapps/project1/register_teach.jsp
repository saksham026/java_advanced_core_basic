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
		String email=request.getParameter("id");
		String pass=request.getParameter("pass");
		String name=request.getParameter("name");
		String subject=request.getParameter("subject");
		String year=request.getParameter("year");
		
		
		Connection con=Database.dataConnection();
		String str="insert into teach_login(id,passwd,name,subject,year) values(?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(str);
		ps.setString(1, email);
		ps.setString(2, pass);
		ps.setString(3, name);
		ps.setString(4, subject);
		ps.setString(5, year);
		
		
		boolean b=ps.execute();
		{
		if(b=true)             
%>//for boolean it is checking
<script type="text/javascript">
alert("you are registered, welcome!")
</script>
<%
			out.println("you are registered as a new user");
			//response.sendRedirect("crypt.jsp");
			response.sendRedirect("index2.jsp");
			//RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			//rd.forward(request, response);
			//forward gives url of directed page while include gives url of same page
		}
		ps.close();
		}
		catch(Exception e) {
			out.println("error"+e);
			//response.sendRedirect("login.jsp");
		}
%>
</body>
</html>