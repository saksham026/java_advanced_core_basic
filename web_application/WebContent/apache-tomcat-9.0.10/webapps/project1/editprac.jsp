<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,model.Database"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
function pth()
{
	alert(document.getElementById("file").files[0].path);
	
}
</script>
<style>
tr,td{
text-align:center;
}
</style>
<body>
<%!
	String sub="os";
	String prn;
	String year="2025";
%>
<%

prn=request.getParameter("prn");	
%>
<form method="post" action="upprac.jsp?&prn=<%=prn%>" >
<%
try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	sub=request.getParameter("sub");
	year=request.getParameter("year");


	
	int no=2;
	
	String str1="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_practical'";
	ResultSet rs1=stmt.executeQuery(str1);
	while(rs1.next())
	{
		no=rs1.getInt(1);
		
	}
	System.out.println(no);
	
	int i=1,j=0;
	for(int k=1;k<(no);k++)
		{
				
%>
p<%=k%><input type="text" name="assign"/>
<%
		}
}
catch(Exception e)
{
	out.println(e);
}
%>
<input type="submit" value="update"/>
</form>
</body>
</html>