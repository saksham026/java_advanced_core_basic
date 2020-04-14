<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
          body { background: black; }
          .container { background: white;
          				width:400px;
          				heigth:200px auto;
          				margin: 100px auto;
          				}
        </style>
</head>
<body>
<div class="container  mx-auto" >
<h2>LOGIN PAGE</h2>
<form method="post" action="check_limit.jsp">
<div class="input-group">
 <span class="input-group-addon glyphicon glyphicon-user"></span>
<input type="text" name="user" placeholder="username"/> 
</div>
<div class="input-group">
<span class="input-group-addon glyphicon glyphicon-lock"></span>
<input type="password" name="pass" placeholder="password"/>
</div>

<input type="submit" class="btn btn-primary"/>
</form>
</div>
</body>
</html>