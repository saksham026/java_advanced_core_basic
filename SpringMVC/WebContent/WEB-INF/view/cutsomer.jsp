<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.error{color:red}
</style>
</head>
<body>
<form:form method="post" action="customerData.html" modelAttribute="customer" >
<pre>
FirstName <form:input path="fname"/>

LastName(*)  <form:input path="lname"/>
<form:errors path="lname" cssClass="error"/>

Phone(*)  <form:input path="phone"/>
<form:errors path="phone" cssClass="error"/>

Age  <form:input path="age"/>
<form:errors path="age" cssClass="error"/>

Postal Code  <form:input path="postalCode"/>
<form:errors path="postalCode" cssClass="error"/>

<input type="submit" value="Submit"/>

</pre>
</form:form>
</body>
</html>