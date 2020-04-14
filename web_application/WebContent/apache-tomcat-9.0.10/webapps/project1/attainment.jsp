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
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"> </script>
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
	String sub="DMKD";
	String year="2025";
	int sum=0,sum1=0;
	float per=0f;
	int ut1[][]=new int[250][40];
	int t=0,q=0,m=0,p=0;
	int max[]=new int[250];
	int nco=0,tar=60,req=60;
	int num=0;
	int totalcoy[]=new int[200];
	int totalcon[]=new int[200];
	int totalc[]=new int[200];
	float totalavg[]=new float[200];
	int entries=0;
	String cos []=new String[20];
	double to[]=new double[100];
	int count=0;
	ArrayList<String> cose = new ArrayList<String>();
%>
<h1><%=sub %> Course attainment</h1>
<form method="post" action="attainment.jsp?sub=<%=sub%>&year=<%=year%>">
<table border="5" align="center" width="70%">
<%
try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	sub=request.getParameter("sub");
	year=request.getParameter("year");

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
			response.sendRedirect("summaryut.jsp?sub="+sub+"&year="+year);
	}
	
	int flag=0;
	c5=year+"_"+sub+"_unit";
	for(int p=0;p<tables.size();p++)
	{
		if(tables.get(p).equalsIgnoreCase(c5))
		{
			flag=1;
		}
	}int flag1=0;
	
	c5=year+"_"+sub+"_practical";
	for(int p=0;p<tables.size();p++)
	{
		if(tables.get(p).equalsIgnoreCase(c5))
		{
			flag1=2;
		}
	}int flag2=0;
	c5=year+"_"+sub+"_assessment";
	for(int p=0;p<tables.size();p++)
	{
		if(tables.get(p).equalsIgnoreCase(c5))
		{
			flag2=3;
		}
	}int flag3=0;
	c5=year+"_"+sub+"_exam";
	for(int p=0;p<tables.size();p++)
	{
		if(tables.get(p).equalsIgnoreCase(c5))
		{
			flag3=4;
		}
	}
	
	int tc=flag+flag1+flag2+flag3;
	System.out.println(tc);
	
	float unt=0,as=0,pr=0,ex=0;
	if(tc==10)	//all
	{
		unt=0.17f;
		ex=0.52f;
		as=0.087f;
		pr=0.21f;
	}
	else if(tc==8)	//all except practical
	{
		unt=0.22f;
		ex=0.667f;
		as=0.11f;
		
	}
	else if(tc==2)	//only practical
	{
		pr=1f;
	}
	else
	{
		unt=0.36f;
		as=0.18f;
		pr=0.45f;
	}

	String str1="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_exam'";
	ResultSet rs1=stmt.executeQuery(str1);
	while(rs1.next())
	{
		num=rs1.getInt(1);
		
	}
	
    String str323="select * from "+year+"_"+sub+"_co";
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

	//sub=request.getParameter("sname");
	//year=request.getParameter("year");
%>
<tr>
<th>
Course Outcomes
</th>
<th>
Unit tests
</th>
<th>
Exam
</th>
<th>
Assessment
</th>
<th>
Practical
</th>
<th>
Unit tests
</th>
<th>
Exam
</th>
<th>
Assessment
</th>
<th>
Practical
</th>
<th>
Total
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
	
	
	int j=0;
	while(rs123.next())
	{
		to[j]=(rs123.getInt(2)*unt+rs123.getInt(3)*ex+rs123.getInt(4)*as+rs123.getInt(5)*pr);
%>	
<tr>
<td>
<%=cos[j]%>
</td>
<td>
<%=rs123.getInt(2)%>
</td>
<td>
<%=rs123.getInt(3)%>
</td>
<td>
<%=rs123.getInt(4)%>
</td>
<td>
<%=rs123.getInt(5)%>
</td>
<td>
<%=rs123.getInt(2)*unt%>
</td>
<td>
<%=rs123.getInt(3)*ex%>
</td>
<td>
<%=rs123.getInt(4)*as%>
</td>
<td>
<%=rs123.getInt(5)*pr%>
</td>
<td>
<%=to[j]%>
</td>
</tr>
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
<div id="chartContainer" style="height: 370px; width: 100%;"></div>

<script type="text/javascript">
var dps=[];
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light1", // "light2", "dark1", "dark2"
	animationEnabled: true, // change to true		
	title:{
		text: "Chart"
	},
	axisY:
	{
	maximum:100,
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
	var b= new Array();
	
	<%
	for (int j=0; j < count; j++) {
		System.out.println("a"+cose.get(j));
	    
	%>
	a[<%= j %>] = <%=to[j] %>;
	b[<%= j %>] = "<%=cose.get(j) %>";

	var newdps={label: b[<%= j %>], y: a[<%= j %>]}
	dps.push(newdps);
	<%}%>
	
	//alert(arr);
	
	delete this.a;

};
//setInterval(function(){updateChart()}, 1000); 
updateChart();
chart.render();

}
</script>
<button><a href="summaryut.jsp?sub=<%=sub%>&year=<%=year%>" style="text-decoration:none">move to next page</a></button>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</body>
</html>