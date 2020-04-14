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
	String sub="was";
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
	ArrayList<String> cose = new ArrayList<String>();
%>
<%
sub=request.getParameter("sub");
System.out.println("sub is:"+sub);
year=request.getParameter("year");
	
%>
<h1><%=sub %> Assignment attainment</h1> 
<form method="post" action="allsummary.jsp?sub=<%=sub%>&year=<%=year%>">
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
	
	String c5=year+"_"+sub+"_assessment";

	String str323="select * from "+year+"_"+sub+"_co";
	ResultSet rs323=stmt.executeQuery(str323);
	while(rs323.next())
	{
		cose.add(rs323.getString(1));
	}
	
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
			response.sendRedirect("posummary.jsp?sub="+sub+"&year="+year);
	}
	

	String str21="select ut,nq from "+year+"_"+sub+"_unit limit 1";
	ResultSet rs21=stmt.executeQuery(str21);
	while(rs21.next())
	{
		ut=rs21.getInt(1);
		nq=rs21.getInt(2);
		
	}
	
	String str1="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_assessment'";
	ResultSet rs1=stmt.executeQuery(str1);
	while(rs1.next())
	{
		num=rs1.getInt(1);
		
	}
	
	
    String str12="select count(*) from "+year+"_"+sub+"_coas";
    ResultSet rs5=stmt.executeQuery(str12);
    while(rs5.next())
    {
    	nco=rs5.getInt(1);
    	
    }
	
    String str3="select * from "+year+"_"+sub+"_assessment limit 1";
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
	String str2="select * from "+year+"_"+sub+"_coas";
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
		p=0;
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
Average grading
</th>
<th>
Successful Students
</th>
<th>
Attainment
</th>
<th>
Attained
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
	
	String str123="select * from "+year+"_"+sub+"_assessment";
	ResultSet rs123=stmt.executeQuery(str123);
	int to[]=new int[10];
	
	int j=0;
	for(int y=0;y<t;y++)
	{
	
		totalcoy[y]=0;
		totalc[y]=0;
	}
	entries=0;
	while(rs123.next())
	{
		for(int y=0;y<t;y++)
		{
			String pass="n";
			
			sum=0;
			sum1=0;
			per=0;
			int z=0;
			for(int k=2;k<=(num);k++)
			{
				int no=rs123.getInt(k);
				if(no==-1)
				{
					no=0;
				}
			//by default value deni hain
				
			sum1+=ut1[y][k-2]*no;
				
				if(no==-1)
				{
					
				}
				//by default value deni hain
				else
					{
					sum+=ut1[y][k-2]*10;		
					}
			z++;
			if(sum==0)
			{
				per=0;	//can be changed
			}
			else
			per=((float)sum1/sum)*100;
			if(y==0)
			{
				System.out.println("per is"+per);
					
			}
			
			}
			int ta=0;
			if(per>tar)
			{
				ta=3;
			}
			else if(per>((tar+40)/2))
			{
				ta=2;
			}
			else if(per>=40)
			{
				ta=1;
			}
			
			totalc[y]+=ta;
			System.out.println(totalc[0]);
			if(ta>=2)
			{
				pass="y";
			}
			
			if(pass=="y")
			{
				totalcoy[y]+=1;
			}
			else if(pass=="n") 
			{
				totalcon[y]+=1;
			}
		}
		entries+=1;
	}
	
	for(int y=0;y<t;y++)
	{
	totalavg[y]=(float)totalc[y]/entries;
	System.out.println("totalavg"+totalc[y]);
	}
	String str34="select * from "+year+"_"+sub+"_co";
	ResultSet rs34=stmt.executeQuery(str34);
	while(rs34.next())
	{		
%>	
<tr>
<td>
<%=cos[j]%>
</td>
<td>
<%=totalavg[j]%>
</td>
<td>
<%=totalcoy[j]%>
</td>
<td>
<%=(float)totalcoy[j]/entries*100%>
</td>
<%
String att="y";
if(((float)totalcoy[j]/entries)*100>50)
{
	att="y";
}
else
{
	att="n";
}
%>
<td>
<%=att%>
</td>
</tr>
<%
j++;
	}
	for(int y=0;y<t;y++)
	{
		String str1234="update "+year+"_"+sub+"_cosum set assessment="+(float)totalcoy[y]/entries*100+" where co='co"+(y+1)+"'"; 
		System.out.println(str1234);
		PreparedStatement ps=con.prepareStatement(str1234);

		int b=ps.executeUpdate();
		
		
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
	a[<%= j %>] = <%=(float)totalcoy[j]/entries*100%>;
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
<button><a href="posummary.jsp?sub=<%=sub%>&year=<%=year%>" style="text-decoration:none">move to next page</a></button>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</body>
</html>