<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <c:set var="a">saksham page</c:set>
    <c:set var="in">10000</c:set>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${a }</title>
</head>
<body>
<c:forEach var="i" begin="0" end="30" step="2">
<c:out value="${i }"></c:out>
</c:forEach>

<c:if test="${ in>1000}">
<p><c:out value="${in }"/></p>
</c:if>

<c:if test="${ in<100}">
<c:redirect url="profile.jsp"></c:redirect>
</c:if>

<c:remove var="a"/>

<c:catch>
<p><c:out value="value is ${a}"></c:out></p>
</c:catch>


</body>
</html>