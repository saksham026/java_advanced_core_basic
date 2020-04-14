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
	alert(document.getElementById("file").value);
	
}
</script>
<style>
tr,td{
text-align:center;
}
</style>
<center><image src="Logo.png" width=1000 height=200></image></center>
<body>
<%!
	String sub="os";
	String year="2025";
%>

<%
	sub=request.getParameter("sub");
	year=request.getParameter("year");
%>

<h1><%=sub %> class assignment marks</h1>
<form method="post" action="addassign.jsp?sub=<%=sub%>&year=<%=year%>" >
<table border="5" align="center" width="70%">
<%
try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	ArrayList<String> tables = new ArrayList<String>();
	sub=request.getParameter("sub");
	year=request.getParameter("year");

	String all="show tables";
	ResultSet rs12=stmt.executeQuery(all);
	while(rs12.next())
	{
		tables.add(rs12.getString(1));
		
	}
	
	String c5=year+"_"+sub+"_assessment";

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
			response.sendRedirect("exam.jsp?sub="+sub+"&year="+year);
	}
	int no=2;
	
	String str1="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_assessment'";
	ResultSet rs1=stmt.executeQuery(str1);
	while(rs1.next())
	{
		no=rs1.getInt(1);
		
	}
	System.out.println(no);
	//sub=request.getParameter("sname");
	//year=request.getParameter("year");
%>
<tr>
<th>
Prn
</th>
<%
	int i=1,j=0;
	for(int k=1;k<(no);k++)
		{
		
		
%>
<th>
a<%=k%>
</th>
<%
		}
	String str="select * from "+year+"_"+sub+"_assessment";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{

%>
		
<tr>
<td>
<%= rs.getInt(1)%>
</td>
<%
		for(int k=1;k<(no);k++)
		{
			int no1=rs.getInt(k+1);
			//by default value deni hain
			
			String n=Integer.toString(no1);
			if(no1==-1||n==null)
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
<%= rs.getInt(k+1)%>
</td>
<%		
			}
		}
%>
<td>
<a href="editassign.jsp?&prn=<%=rs.getInt(1)%>">edit</a>
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
		for(int k=1;k<(no);k++)
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
<button><a href="exam.jsp?sub=<%=sub%>&year=<%=year%>" style="text-decoration:none">move to next page</a></button>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</body>
</html>