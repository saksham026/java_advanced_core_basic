<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,model.Database"%>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>

</head>
<body style="background-color:black">
<h1><center><font face="algerian" size=70 color="white">BOOK RECOMMENDATION SYSTEM</font></center></h1>
<h2><center><font face"algerian" size="50" color="red">search</font></center></h2>

<div align="center">

<form method="post" action="retrievebook.jsp">
<input type="text" name="bname"></input>
<input type="submit" value="search" class="btn btn-primary"></input>

</form>

</div>
</body>
</html>