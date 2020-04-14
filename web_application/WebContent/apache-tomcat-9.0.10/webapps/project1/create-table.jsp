<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,model.Database" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
try
{
	String a="awedqrw";
Connection con=Database.dataConnection();
Statement stmt=con.createStatement();
String str="create table "+a+" (id integer);";
stmt.executeUpdate(str);
}
catch(Exception e)
{
	System.out.println(e);
	
}
%>

</body>
</html>