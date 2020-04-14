<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,model.Database"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="center" width="70%">
<th>b_id</th><th>b_name</th><th>desc</th><th>rank</th>
<%
try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	String fname=request.getParameter("bname");
	String str="select * from books where b_name='"+fname+"'";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{
		
	int b_id=rs.getInt(1);
	String b_desc=rs.getString(3);
	
	
	int id1=0;
	try
	{
	String str2="select * from rank_store where b_name='"+fname+"'";
	ResultSet rs1=stmt.executeQuery(str2);
	
	while(rs1.next())
	{
	id1=rs1.getInt(4)+1;
	//out.println("sak"+rs1.getInt(4));
	}
	}
	catch(Exception e)
	{
		out.println(e+"sak");
	}
	
	
	finally
	{
		if(id1<1)
		{
	out.println("check");
	String str1="insert into rank_store(b_id,b_name,b_desc,rank) values(?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(str1);
	ps.setInt(1, b_id);
	ps.setString(2, fname);
	ps.setString(3, b_desc);
	ps.setInt(4,id1);
	
	boolean b=ps.execute();
	if(b=true)
	{
		out.println("updated");
	}
	ps.close();
		}
		else
		{
			String str3="update rank_store set rank="+id1+" where b_name='"+fname+"'";
			PreparedStatement ps1=con.prepareStatement(str3);


			int b=ps1.executeUpdate();
			if(b==1)
			{
				//response.sendRedirect("profile.jsp");
			}	
		
		}
}
}
}
catch(Exception e)
{
	//out.println(e+"gup");
}


%>
<%
try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
String str="select * from rank_store";
ResultSet rs=stmt.executeQuery(str);
while(rs.next())
{
	
%>
<tr>
<td><%=rs.getInt(1) %></td>
<td>
<%= rs.getString(2)%>
</td>
<td>
<%= rs.getString(3)%>
</td>
<td>
<%= rs.getInt(4)%>
</td>
</tr>
<%
}
}catch(Exception e)
{
	
}
%>
	
</table>
</body>
</html>