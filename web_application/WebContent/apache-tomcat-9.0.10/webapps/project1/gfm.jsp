<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,model.Database,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<center><image src="Logo.png" width=1000 height=200></image></center>
<body>
<%
String sub="DMKD";
String year="2017";
%>
<%
sub=request.getParameter("sub");
year=request.getParameter("year");
%>
<center><h1>PRN list</h1></center>
<form method="post" action="addprn.jsp?&sub=<%=sub%>&year=<%=year%>">
<table border="1" align="center" width="70%">
<tr>
<th>
Prn
</th>
</tr>
<% 
try
{
	
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	
	String str="select * from "+year+"_prn";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{

%>
<tr>
<td>
<%= rs.getInt(1)%>
</td>
<td>
<input type="button" value="edit"/>
</td>
</tr>
<%
	}
%>
<tr>
<td>
<input type="text" name="prn"/>
</td>
<td>
<input type="submit" value="add"/>
</td>
</tr>
<%

}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
<input type="text" name="filetoupload">
</form>
<button><a href="ut.jsp?sub=<%=sub%>&year=<%=year%>" style="text-decoration:none">submit</a></button>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</body>
</html>