<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="model.Employee" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//Employee e=new Employee();
//e.setId(101);
//e.setEname("saksham");

//out.println("id"+e.getId());      //now as making object introduces dependency and coupling between class and object and if constructor changes to parametrised then this object will not be vlaid due to impresence of default constructor
//it is dom method of represting java
%>											
<jsp:useBean id="emp" class="model.Employee">	<!-- //bean is java object and makes object automatically and is example of lightweight application -->
<jsp:setProperty name="emp" property="id" value="${(param.id)}"/>
id <jsp:getProperty name="emp" property="id"/>

<jsp:setProperty name="emp" property="ename" value="${ (param.ename)}"/>
name <jsp:getProperty name="emp" property="ename"/>

</jsp:useBean>
</body>
</html>