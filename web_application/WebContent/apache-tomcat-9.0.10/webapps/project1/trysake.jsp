<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,model.Database"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
tr,td{
text-align:center;
}
</style>
<body>
<form method="post" action="addprofile.jsp" >
<table border="1" align="center" width="70%">
<th>id</th><th>name</th><th>gender</th><th>type</th><th>active</th><th>edit</th><th>delete</th>
<%
try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	String str="select * from profile";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{
		
	%>

<tr>
<td>
<%= rs.getInt(1)%>
</td>
<td>
<%= rs.getString(2)%>
</td>
<td>
<%= rs.getString(3)%>
</td>
<td>
<%= rs.getString(4)%>
</td>
<td>
<%= rs.getString(5)%>
</td>
<td>
<a href="">edit</a>
</td>
<td>
<a href="">delete</a>
</td>
<%	
}
}
catch(Exception e)
{
	out.println(e);
}
%>
 
</tr>


<tr>
<td>
</td>
<td>
<input type="text" name="uname"/>
</td>
<td>
<select name="gender">
<option value="male">male</option>
<option value="female">female</option>
</select>
</td>
<td>
<select name="occup">
<option value="friends">friends</option>
<option value="family">family</option>
<option value="business">business</option>
</select>
</td>
<td>
<select name="status">
<option value="true">true</option>
<option value="false">false</option>
</select>
</td>
<td>
<input type="submit" value="add"/>
</td>
</tr>
</table>
</form>


</body>
</html>
