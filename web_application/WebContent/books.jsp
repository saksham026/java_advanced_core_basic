<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="WEB-INF/hello.tld" prefix="example" %>

<jsp:useBean id="b1" class="com.beans.books" scope="session"/>
<jsp:setProperty name="b1" property="*"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3><jsp:getProperty name="b1" property="bookName"/></h3>
<p><jsp:getProperty name="b1" property="price"/></p>
<p><jsp:getProperty name="b1" property="quantity"/></p>


<example:hello>welcome</example:hello>
<example:hello/>
</body>
</html>