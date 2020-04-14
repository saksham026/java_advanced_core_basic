<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,model.Database,java.util.*"%>
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
<center><image src="Logo.png" width=1000 height=200></image></center>
<%!
	String sub="DMKD";
	String year="2017";
%>
<%
sub=request.getParameter("sub");
year=request.getParameter("year");

%>
<h1><%=sub %> unit test marks</h1>
<form method="post" action="addut.jsp?sub=<%=sub%>&year=<%=year%>">
<table border="5" align="center" width="70%">
<%
try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	
	ArrayList<String> tables = new ArrayList<String>();


	String all="show tables";
	ResultSet rs12=stmt.executeQuery(all);
	while(rs12.next())
	{
		tables.add(rs12.getString(1));
		
	}
	
	String c5=year+"_"+sub+"_unit";

	int flag5=1;
	for(int p=0;p<tables.size();p++)
	{
		if(tables.get(p).equalsIgnoreCase(c5))
		{
			flag5=0;
		}
	}
	
	int ut=1,nq=1;
	
	if(flag5==1)
	{
			response.sendRedirect("assign.jsp?sub="+sub+"&year="+year);
	}
	
	String str1="select ut,nq from "+year+"_"+sub+"_unit limit 1";
	ResultSet rs1=stmt.executeQuery(str1);
	while(rs1.next())
	{
		ut=rs1.getInt(1);
		nq=rs1.getInt(2);
		
	}
	
%>
<tr>
<th>
Prn
</th>
<%
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
<th>
q<%=i+""+j%>
</th>
<%
		}
	String str="select * from "+year+"_"+sub+"_unit";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{

%>
		
<tr>
<td>
<%= rs.getInt(1)%>
</td>
<%
		for(int k=4;k<(ut*nq+4);k++)
		{
	
			int no=rs.getInt(k);
			//by default value deni hain
			
			String n=Integer.toString(no);
			if(no==-1||n==null)
			{
				
%>
<td>

</td>
<%
			}
			else
			{
%>
<td>
<%= rs.getInt(k)%>
</td>
<%

			}
		}
%>
<td>
<a href="editut.jsp?&prn=<%=rs.getInt(1)%>&ut=<%=ut%>&nq=<%=nq%>">edit</a>
</td>
</tr>
<%
	}
%>
<tr>
<td>
<input type="text" name="prn"/>
</td>
<% 
		for(int k=4;k<(ut*nq+4);k++)
		{
%>
<td>
<input type="text" name="ut"/>
</td>
<%
		}
%>
<td>
<input type="submit" value="add"/>
</td>
</tr>
<%

}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
<input type="text" name="filetoupload">
</form>
<button><a href="assign.jsp?sub=<%=sub%>&year=<%=year%>" style="text-decoration:none">move to next page</a></button>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</body>
</html>