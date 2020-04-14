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
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<style>
tr,td{
text-align:center;
}
</style>
<image src="Logo.png" width=1330 height=300></image>
<body>
<%!
	String temp;
	int er=0;
	String sub="flat";
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
	int count=0;
%>
<form method="post" action="attainment.jsp?sub=<%=sub%>&year=<%=year%>">
<table border="1" align="center" width="70%">
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
	
	String c5=year+"_"+sub+"_exam";

	int flag5=1;
	for(int p=0;p<tables.size();p++)
	{
		if(tables.get(p).equals(c5))
		{
			flag5=0;
		}
	}
	
	int ut=1,nq=1;
	
	if(flag5==1)
	{
			response.sendRedirect("attainment.jsp?sub="+sub+"&year="+year);
	}
	
	

	String str1="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_exam'";
	ResultSet rs1=stmt.executeQuery(str1);
	while(rs1.next())
	{
		num=rs1.getInt(1);
		
	}
	
	
    String str12="select count(*) from "+year+"_"+sub+"_coex";
    ResultSet rs5=stmt.executeQuery(str12);
    while(rs5.next())
    {
    	nco=rs5.getInt(1);
    	
    }
	
	String str3="select * from "+year+"_"+sub+"_exam limit 1";
	ResultSet rs3=stmt.executeQuery(str3);
	while(rs3.next())
	{
		for(int k1=2;k1<=num;k1++)
		{
			max[q]=rs3.getInt(k1);
			q++;
		}
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
	String str2="select * from "+year+"_"+sub+"_coex";
	ResultSet rs2=stmt.executeQuery(str2);
	while(rs2.next())
	{
		sum=0;
		
		for(int k=2;k<=(num);k++)		//check...
		{
			
			//by default value deni hain
			//sum+=(rs2.getInt(k-2)*no);
			ut1[t][p]=rs2.getInt(k);
			p++;
		}
		t++;
	}
	
	System.out.println("checking"+ut1[0][0]);
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
	
	String str123="select * from "+year+"_"+sub+"_cosum";
	ResultSet rs123=stmt.executeQuery(str123);
	double to[]=new double[10];
	
	int j=0;
	while(rs123.next())
	{
		to[j]=(rs123.getInt(2)+rs123.getInt(3)+rs123.getInt(4)+rs123.getInt(5))*0.36;
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
<%=rs123.getInt(2)*0.36%>
</td>
<td>
<%=rs123.getInt(3)*0.36%>
</td>
<td>
<%=rs123.getInt(4)*0.36%>
</td>
<td>
<%=rs123.getInt(5)*0.36%>
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
		text: "Basic Column Chart"
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
	var a="<%=cos[er++]%>";
	var newdps={label: a, y: 30}
dps.push(newdps);
chart.render();

};
//setInterval(function(){updateChart()}, 1000); 
chart.render();

}
</script>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</body>
</html>