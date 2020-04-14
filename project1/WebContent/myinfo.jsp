<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="myinfo.jsp">
<pre>
id<input type="text" name="id" value=""></input>

item:
pizza<input type="checkbox" name="item" value="pizza"/>
burger<input type="checkbox" name="item" value="burger"/>
pasta<input type="checkbox" name="item" value="pasta"/>
coffee<input type="checkbox" name="item" value="coffee"/>

<input type="submit" value="submit"></input>
</pre>

</form>
</body>
</html>

<pre>
id ${(param.id)}
item ${(paramValues.item[0])}${(paramValues.item[1])}${(paramValues.item[2])}

</pre>