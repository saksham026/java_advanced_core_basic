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
<%!
String id;
%>
<%
try
{
	id=request.getQueryString();
String fname=request.getParameter("uname");
String gender=request.getParameter("gender");
String occup=request.getParameter("occup");
String status=request.getParameter("status");

Connection con=Database.dataConnection();
String str="update profile set uname='"+fname+"',gender='"+gender+"',ptype='"+occup+"',active='"+status+"' where id="+id;
PreparedStatement ps=con.prepareStatement(str);


int b=ps.executeUpdate();
if(b==1)
{
	response.sendRedirect("profile.jsp");
}

}
catch(Exception e) {
	out.println("error"+e);
	//response.sendRedirect("login.jsp");
}
%>	
</body>
</html>