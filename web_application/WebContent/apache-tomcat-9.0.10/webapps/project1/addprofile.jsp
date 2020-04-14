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
	Integer a=1;
	Integer b=1;
	String sub="sa";
	String year="sa";
%>
<%
try
{
	
String prn=request.getParameter("uname");
String ut=request.getParameter("gender");
String nq=request.getParameter("occup");

/* String str1="insert into "+year+"_"+sname+"_unit values(?,?,?)";
PreparedStatement ps=con.prepareStatement(str1);
ps.setString(1, prn);
ps.setString(2, ut);
ps.setString(3, nq);


boolean b=ps.execute();
if(b=true)
{
	response.sendRedirect("profile.jsp");
}
ps.close();

 */
}
catch(Exception e) {
	out.println("error"+e);
	//response.sendRedirect("login.jsp");
}
%>	
</body>
</html>