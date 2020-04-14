<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,model.Database"%>
    <%!
    String id;
    %>
    <%
try
{
	id=request.getQueryString();
	
}
catch(Exception e)
{
	
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="editprofile.jsp?<%=id%>">
<%
try
{
Connection con=Database.dataConnection();
Statement stmt=con.createStatement();

String str="select * from profile where id="+id+"";
ResultSet rs=stmt.executeQuery(str);
while(rs.next())
{
%>
<pre>
enter name:
<input type="text" name="uname" value="<%=rs.getString(2)%>"/>

choose gender:
<select name="gender" value="<%= rs.getString(3)%>">
<option value="male">male</option>
<option value="female">female</option>
</select>

choose occupation:
<select name="occup" value="<%=rs.getString(4)%>">
<option value="friends">friends</option>
<option value="family">family</option>
<option value="business">business</option>
</select>

choose status:
<select name="status" value="<%=rs.getString(5)%>">
<option value="true">true</option>
<option value="false">false</option>
</select>

<input type="submit" value="update"/>
</pre>

<%
}
}catch(Exception e)
{
out.println(e);	
}

%>
</form>

</body>
</html>