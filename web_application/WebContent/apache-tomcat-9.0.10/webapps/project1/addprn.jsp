<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,model.Database,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
String file1=null;
%>
<%
try
{

file1=request.getParameter("filetoupload");
System.out.println("file is"+file1);
String year=request.getParameter("year");
String sub=request.getParameter("sub");

if(file1!="")
{
	System.out.println("file is"+file1);
	//request.setAttribute("temp", file1);
	//RequestDispatcher dispatcher = request.getRequestDispatcher("utexcel.jsp");
	//dispatcher.forward( request, response );
	response.sendRedirect("fileprn.jsp?a="+file1+"&sub="+sub+"&year="+year);

}

Connection con=Database.dataConnection();
Statement stmt=con.createStatement();
String file=request.getParameter("filetoupload");

System.out.println(file);
String prn=request.getParameter("prn");
String str1="insert into "+year+"_prn values(?)";

PreparedStatement ps=con.prepareStatement(str1);
int prn1=Integer.parseInt(prn);
ps.setInt(1, prn1);
ArrayList<String> tables = new ArrayList<String>();


String all="show tables";
ResultSet rs12=stmt.executeQuery(all);
while(rs12.next())
{
	tables.add(rs12.getString(1));
	
}

String str21="select * from "+year+"_subject";
//System.out.println(str21);

ResultSet rs1=stmt.executeQuery(str21);

while(rs1.next())
{
	String sub1=rs1.getString(1);
	System.out.println("sub is:"+sub1);
	String c1=year+"_"+sub1+"_co";
	String c2=year+"_"+sub1+"_exam";
	String c3=year+"_"+sub1+"_assessment";
	String c4=year+"_"+sub1+"_practical";
	String c5=year+"_"+sub1+"_unit";

	int flag1=1;
	int flag2=1;
	int flag3=1;
	int flag4=1;
	int flag5=1;
	for(int p=0;p<tables.size();p++)
	{
		if(tables.get(p).equalsIgnoreCase(c1))
		{
			flag1=0;
		}
		if(tables.get(p).equalsIgnoreCase(c2))
		{
			flag2=0;
		}if(tables.get(p).equalsIgnoreCase(c3))
		{
			flag3=0;
		}if(tables.get(p).equalsIgnoreCase(c4))
		{
			flag4=0;
		}if(tables.get(p).equalsIgnoreCase(c5))
		{
			flag5=0;
		}
	}
	
if(flag5==0)
{
String str2="insert into "+year+"_"+sub1+"_unit(prn) values(?)";
PreparedStatement ps1=con.prepareStatement(str2);
ps1.setInt(1, prn1);
boolean b1=ps1.execute();

}

if(flag2==0)
{
String str3="insert into "+year+"_"+sub1+"_exam(prn) values(?)";
PreparedStatement ps2=con.prepareStatement(str3);
ps2.setInt(1, prn1);
boolean b1=ps2.execute();

}

if(flag4==0)
{
String str4="insert into "+year+"_"+sub1+"_practical(prn) values(?)";
PreparedStatement ps3=con.prepareStatement(str4);
ps3.setInt(1, prn1);
boolean b1=ps3.execute();

}

if(flag3==0)
{
String str5="insert into "+year+"_"+sub1+"_assessment(prn) values(?)";
PreparedStatement ps4=con.prepareStatement(str5);
ps4.setInt(1, prn1);
boolean b1=ps4.execute();

}


}
boolean b=ps.execute();

if(b=true)
{
	response.sendRedirect("gfm.jsp?sub="+sub+"&year="+year+"");
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