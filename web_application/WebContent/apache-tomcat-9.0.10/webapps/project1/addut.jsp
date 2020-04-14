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
	String file1=null;
	
%>

<%
try
{

Connection con=Database.dataConnection();
String prn=request.getParameter("prn");
String ut[]=request.getParameterValues("ut");
sub=request.getParameter("sub");
year=request.getParameter("year");


for(int z=0;z<ut.length;z++)
{
	System.out.println(ut[z]);
}
file1=request.getParameter("filetoupload");
//System.out.println(file1);

%>

<%=file1%>

<%
if(file1!="")
{
	//request.setAttribute("temp", file1);
	//RequestDispatcher dispatcher = request.getRequestDispatcher("utexcel.jsp");
	//dispatcher.forward( request, response );
	response.sendRedirect("utexcel.jsp?a="+file1+"&sub="+sub+"&year="+year);

}

String str1="insert into "+year+"_"+sub+"_unit values(?,?,?";
for(int i=0;i<ut.length;i++)
{
	str1+=",?";
}
str1+=")";

PreparedStatement ps=con.prepareStatement(str1);
int prn1=Integer.parseInt(prn);

ps.setInt(1, prn1);
ps.setInt(2, 0);
ps.setInt(3, 0);

int k=4;
for(int i=0;i<ut.length;i++)
{
	int utm=0;
	if(ut[i].equals(""))
	{
		utm=-1;
	}
	else
	{
	utm=Integer.parseInt(ut[i]);
	}
	ps.setInt(k, utm);
	k++;
}

boolean b=ps.execute();
if(b=true)
{
	response.sendRedirect("ut.jsp?a="+file1+"&sub="+sub+"&year="+year);
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