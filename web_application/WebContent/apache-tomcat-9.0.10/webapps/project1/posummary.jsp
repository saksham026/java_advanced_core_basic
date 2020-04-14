<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,model.Database,java.util.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script src="canvasjs.min.js"> </script>
<style>
tr,td{
text-align:center;
}
</style>
<center><image src="Logo.png" width=1000 height=200></image></center>
<body>
<%!
	String temp;
	int er=0;
	String sub="dmkd";
	String year="2017";
	int sum=0,sum1=0;
	float per=0f;
	int ut1[][]=new int[250][40];
	String pos[][]=new String[250][40];
	int t=0,q=0,m=0,p=0;
	float posv[][]=new float[250][40];
	int max[]=new int[250];
	int nco=0,tar=60,req=60;
	int num=0;
	int totalcoy[]=new int[200];
	int totalcon[]=new int[200];
	int totalc[]=new int[200];
	float totalavg[]=new float[200];
	int entries=0;
	float tot[]=new float[12];
	String cos []=new String[20];
	int count=0;
	ArrayList<String> cose = new ArrayList<String>();
%>
<%
sub=request.getParameter("sub");
System.out.println("sub is:"+sub);
year=request.getParameter("year");
%>
<h1><%=sub %> Program attainment</h1>
<form method="post" action="allposummary.jsp?sub=<%=sub%>&year=<%=year%>">
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
	
	String c5=year+"_"+sub+"_co";

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
			response.sendRedirect("allposummary.jsp?sub="+sub+"&year="+year);
	}
	
	String str323="select * from po";
	ResultSet rs323=stmt.executeQuery(str323);
	while(rs323.next())
	{
		cose.add(rs323.getString(1));
	}
	

	String str31="select * from "+year+"_subject where name='"+sub+"' limit 1";
	ResultSet rs31=stmt.executeQuery(str31);
	while(rs31.next())
	{
		
			tar=rs31.getInt(2);
			req=rs31.getInt(3);
	}
	
	t=0;
	p=0;
	String str2="select * from "+year+"_"+sub+"_copo";
	ResultSet rs2=stmt.executeQuery(str2);
	while(rs2.next())
	{
		sum=0;
		
		for(int k=0;k<12;k++)		//check...
		{
			
			//by default value deni hain
			//sum+=(rs2.getInt(k-2)*no);
			pos[t][k]=rs2.getString(k+2);
			if(pos[t][k].equalsIgnoreCase("L"))
			{
				posv[t][k]=0.3f;
			}
			if(pos[t][k].equalsIgnoreCase("M"))
			{
				posv[t][k]=0.5f;
			}
			if(pos[t][k].equalsIgnoreCase("H"))
			{
				posv[t][k]=0.7f;
			}
			
			p++;
		}
		t++;
	}
	
	
	System.out.println("checking"+ut1[0][0]);
	System.out.println("pos"+pos[0][0]);
	System.out.println("posv"+posv[0][0]);
	
	//sub=request.getParameter("sname");
	//year=request.getParameter("year");
%>
<tr>
<th>
CO
</th>
<th>
PO1
</th>
<th>
PO2
</th>
<th>
PO3
</th>
<th>
PO4
</th>
<th>
PO5
</th>
<th>
PO6
</th>
<th>
PO7
</th>
<th>
PO8
</th>
<th>
PO9
</th>
<th>
PO10
</th>
<th>
PO11
</th>
<th>
PO12
</th>

</tr>
<%
	int i=0;
	
	String str="select * from "+year+"_"+sub+"_co";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{
		count++;
		cos[i]=rs.getString(1);
		i++;
	}
	
	String str123="select * from "+year+"_"+sub+"_comix";
	ResultSet rs123=stmt.executeQuery(str123);
	double to[]=new double[10];
	
	int j=0;
	while(rs123.next())
	{
		
		to[j]=rs123.getInt(2)+rs123.getInt(3)+rs123.getInt(4)+rs123.getInt(5);
		for(int y=0;y<12;y++)
		{
			tot[y]+=to[j]*posv[j][y];
		}
		System.out.println(to[j]);
%>	
<tr>
<td>
co<%=j+1%>
</td>
<td>
<%=to[j]*posv[j][0]%>
</td>
<td>
<%=to[j]*posv[j][1]%>
</td>
<td>
<%=to[j]*posv[j][2]%>
</td>
<td>
<%=to[j]*posv[j][3]%>
</td>
<td>
<%=to[j]*posv[j][4]%>
</td>
<td>
<%=to[j]*posv[j][5]%>
</td>
<td>
<%=to[j]*posv[j][6]%>
</td>
<td>
<%=to[j]*posv[j][7]%>
</td>
<td>
<%=to[j]*posv[j][8]%>
</td>
<td>
<%=to[j]*posv[j][9]%>
</td>
<td>
<%=to[j]*posv[j][10]%>
</td>
<td>
<%=to[j]*posv[j][11]%>
</td>

<%
j++;
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</table>
</form>
<div style="height: 370px; width: 100%;">
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
</div>
<script type="text/javascript">
var dps=[];
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light1", // "light2", "dark1", "dark2"
	animationEnabled: true, // change to true	
	axisY:
		{
		maximum:100,
		},
		
	title:{
		text: "Chart"
	},
	
	data: [
	{
		// Change type to "bar", "area", "spline", "pie",etc.
		type: "column",
		dataPoints: dps
	}
	]
});

chart.render();

var updateChart = function () {
	//yVal = yVal +  Math.round(5 + Math.random() *(-5-5));
		var a= new Array();
		var b1= new Array();
		
	<%
	for (int j=0; j < 12; j++) {
	%>
	a[<%= j %>] = <%=tot[j] %>;
	b1[<%= j %>] = "<%=cose.get(j) %>";
	
	var newdps={label: "po<%= j %>", y: a[<%= j %>]}
	dps.push(newdps);
	<%}%>
	
	//alert(arr);
	
	delete this.a;

chart.render();

};
//setInterval(function(){updateChart()}, 1000); 
updateChart();

chart.render();
chart.getCredits().setEnabled(false);
}
</script>
<!-- <a href="allposummary.jsp?sub=<%=sub%>&year=<%=year%>">submit</a> -->
<h3>LEGEND</h3>
<table  border="5" align="center" width="70%">
<tr>
<td>
PO no.
</td>
<td>
PO name
</td>
</tr>
<%
	for(int f=0;f<12;f++)
	{
%>
<tr align="left">
<td>
<%=f%>
</td>
<td>
<%=cose.get(f)%>
</td>
</tr>
<%
	}
%>
</table>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</body>
</html>