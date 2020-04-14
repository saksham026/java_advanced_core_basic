<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="post" action="myData.html" modelAttribute="student" >
<pre>
FirstName <form:input path="fname"/>
LastName  <form:input path="lname"/>


<!-- USE BY JAVA CLASS -->
<form:select path="country">
<form:options items="${student.countryoption}"/>

</form:select>

<%-- java<form:radiobutton path="language" value="java"/>
c<form:radiobutton path="language" value="c"/>
 --%>
<input type="submit" value="Submit"/>
</pre>
</form:form>
</body>
</html>