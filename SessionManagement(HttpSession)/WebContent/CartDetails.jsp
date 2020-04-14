<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String Name=(String)session.getAttribute("username") ;%>
<%ArrayList books=(ArrayList)session.getAttribute("bookinfo"); %>
<%out.println("Name of Customer is:"+Name);%>
<%out.println("Books in cart :"+books);%>

<a href='terminate'>Log out</a>


</body>
</html>