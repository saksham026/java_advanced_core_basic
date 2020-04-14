<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,model.Database"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	String id=request.getQueryString();
	String str="delete from profile where id="+id+"";
	int del=stmt.executeUpdate(str);
	if(del>0)
	{
		response.sendRedirect("profile.jsp");
	}
	
}
catch(Exception e)
{
	
}
%>
</body>
</html>