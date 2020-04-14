<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="datejsp.jsp"%>                   <!-- only include and runs auto -->
    <%!
    int n1=0,n2=0,n3;
    %>
    <%
String no1=request.getParameter("no1");
String no2=request.getParameter("no1");


try
{
	n1=Integer.valueOf(no1);
	n2=Integer.valueOf(no2);
	
}
catch(Exception e)
{
	
}
n3=n1+n2;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="calculator.jsp">  <!-- action at the same page -->
<pre>
number 1<input type="text" name="no1" value=""/>
number 2<input type="text" name="no2" value=""/>
result <input type="text" name="res" value="<%=n3 %>" readonly="true"/>
<input type="submit" value="calculate"/>
</pre>
</form>
</body>
</html>

