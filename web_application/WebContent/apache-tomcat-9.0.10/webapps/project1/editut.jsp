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
	int ut=1;
	int nq=1;
	
%>
<%
prn=request.getParameter("prn");	
Connection con=Database.dataConnection();
Statement stmt=con.createStatement();
sub=request.getParameter("sub");
year=request.getParameter("year");
System.out.println("prn"+prn);
int no=2;

//String str1="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_ut'";
String str1="select ut,nq from "+year+"_"+sub+"_unit where prn=1";
ResultSet rs1=stmt.executeQuery(str1);
while(rs1.next())
{
	ut=rs1.getInt(1);
	nq=rs1.getInt(2);
	
}
%>
<form method="post" action="uput.jsp?&prn=<%=prn%>&ut=<%=ut%>&nq=<%=nq%>" >
<%
try
{
	
	System.out.println(ut+nq);
	int i=1,j=0;
	for(int k=0;k<(ut*nq);k++)
		{
		
		if(j<nq)
		{
			j++;
		}
		else
		{
			j=1;
			i++;
		}
		
%>		
ut<%=i%><%=j%>
<input type="text" name="assign"/>
<br>
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