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
<%!
String sub="daa";
String year="2025";
%>
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
String prn=request.getParameter("prn");
System.out.println(prn);

String str="update "+year+"_"+sub+"_practical set "; 
System.out.println(str);

String ut[]=request.getParameterValues("assign");

System.out.println("a"+ut[0]);
System.out.println("b"+ut[2]);

int i=1,j=0;
for(int k=1;k<(no);k++)
	{
		int utm;
		if(ut[k-1]=="")
		{
			utm=-1;
		}
		else
		{
		utm=Integer.parseInt(ut[k-1]);
		}
		str+="p"+k+"="+utm+" ";
		if(k!=(no-1))
		{
			str+=",";
		}
	}
str+="where prn="+prn+"";
System.out.println(str);
PreparedStatement ps=con.prepareStatement(str);


int b=ps.executeUpdate();
if(b==1)
{
	response.sendRedirect("prac.jsp");
}


}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>