<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,model.Database"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
	String sub="os";
	String year="2025";
%>
<%
try
{

Connection con=Database.dataConnection();
String prn=request.getParameter("prn");
String ut[]=request.getParameterValues("ut");
sub=request.getParameter("sub");
year=request.getParameter("year");
System.out.println("sub is:"+sub);
String file1=request.getParameter("filetoupload");


System.out.println(file1);
%>
<%=file1%>

<%
if(file1!=null)
{
	//request.setAttribute("temp", file1);
	//RequestDispatcher dispatcher = request.getRequestDispatcher("utexcel.jsp");
	//dispatcher.forward( request, response );
	response.sendRedirect("pracexcel.jsp?a="+file1+"&sub="+sub+"&year="+year);

}

Statement stmt=con.createStatement();

int no=1;
String str2="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_practical'";
ResultSet rs1=stmt.executeQuery(str2);
while(rs1.next())
{
	no=rs1.getInt(1);
	
}
System.out.println("hello");

String str1="insert into "+year+"_"+sub+"_practical values(?";
for(int i=0;i<no-1;i++)
{
	str1+=",?";
}
str1+=")";

PreparedStatement ps=con.prepareStatement(str1);
int prn1=Integer.parseInt(prn);

ps.setInt(1, prn1);

int k=2;
for(int i=0;i<no-1;i++)
{
	System.out.println(ut[i]);
	int utm=0;
	if(ut[i].equals(""))
	{
		System.out.println("a");
		utm=-1;
	}
	else
	{
	utm=Integer.parseInt(ut[i]);
	}
	ps.setInt(k, utm);
	k++;
	/* int utm=Integer.parseInt(ut[i]);
	ps.setInt(k, utm);
	k++; */
}

boolean b=ps.execute();
if(b=true)
{
	response.sendRedirect("prac.jsp?a="+file1+"&sub="+sub+"&year="+year);
}
ps.close();
}

catch(Exception e) {
	out.println("error"+e);
	//response.sendRedirect("login.jsp");
}
%>	
</body>
</html>