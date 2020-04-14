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
String sub="fcg";
String year="2052";
String prn="";
int ut=1;
int nq=1;
%>
<%
try
{
	prn=request.getParameter("prn");	
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	sub=request.getParameter("sub");
	year=request.getParameter("year");

	int no=2;

	//String str1="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_ut'";
	String str1="select ut,nq from "+year+"_"+sub+"_unit where prn=1";
	ResultSet rs1=stmt.executeQuery(str1);
	while(rs1.next())
	{
		ut=rs1.getInt(1);
		nq=rs1.getInt(2);
		
	}
	
	System.out.println(prn);

	String str="update "+year+"_"+sub+"_unit set "; 
	System.out.println(str);

String ut1[]=request.getParameterValues("assign");

System.out.println("a"+ut1[0]);
System.out.println("b"+ut1[2]);

int i=0,j=0;
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
	
	int utm;
	if(ut1[k]=="")
	{
		utm=-1;
				
	}
	else
	{
	utm=Integer.parseInt(ut1[k]);
	}
	str+="qm"+i+""+j+"=";
	str+=utm+" ";
	
		if(k!=((ut*nq)-1))
		{
			str+=",";
		}
	}

str+=" where prn="+prn+"";
System.out.println(str);
PreparedStatement ps=con.prepareStatement(str);

int b=ps.executeUpdate();
if(b==1)
{
	response.sendRedirect("ut.jsp");
}


}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>