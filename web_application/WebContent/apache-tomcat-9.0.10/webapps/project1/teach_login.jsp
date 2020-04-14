<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.*,model.Database,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%!
	Integer a=1;
	Integer b=1;
	String sub="sa";
	String year="sa";
%>
<%
try
{
 	sub=request.getParameter("sub");
	year=request.getParameter("year");
	
	ArrayList<String> tables = new ArrayList<String>();
	System.out.println(sub+year);
	System.out.println("checking");
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	
	String all="show tables";
	ResultSet rs1=stmt.executeQuery(all);
	while(rs1.next())
	{
		tables.add(rs1.getString(1));
		
	}
	
String ch=year+"_"+sub+"_copo";
int flag=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equalsIgnoreCase(ch))
	{
		flag=0;
	}
}

if(flag==0)
{
	response.sendRedirect("ut.jsp?sub="+sub+"&year="+year+"");
}
	
	String str="select ut,nq from "+year+"_"+sub+"_unit limit 1";	//change
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{
		a=rs.getInt(1);
		b=rs.getInt(2);
			
	}
	System.out.println(a+" "+b);
}
catch(Exception e)
{
	
}
%>
<script type="text/javascript">
function check()
{
	
	var su= "<%=sub%>";
	var ye= "<%=year%>";
	
	document.getElementById("sub1").value=su;
	document.getElementById("year1").value=<%=year%>;
	
	var ut=<%=a%>;
	var nq=<%=b%>;
	
	var n1=document.getElementById("co").value;
	var n2=document.getElementById("div1");

	n2.innerHTML="";
	var i=1;
	for(i=1;i<=n1;i++)
	{
		element=document.createElement("textarea");
		element.setAttribute("name","t1");
		n2.appendChild(element);
		//documnet.writeln();
		element1=document.createElement("br");
		n2.appendChild(element1);

		element2=document.createElement("br");
		n2.appendChild(element2);
		
	}

  var table = document.getElementById("map1");
  var row = table.insertRow(0);
  var i=1;
  row.insertCell(0).innerHTML = "&nbsp";
  for(i=0;i<12;i++)
  {
  	var j=i+1;
  	var ii="po"+j+" &nbsp&nbsp&nbsp&nbsp&nbsp ";
  	row.insertCell(i+1).innerHTML = ii;
  }

  for(m=1;m<=n1;m++)
  {
  	var row1 = table.insertRow(m);
  	row1.insertCell(0).innerHTML = "co"+m;
  		
  	for(n=1;n<=12;n++)
  	{
  		var chkbox = document.createElement("select");
  		chkbox.setAttribute("name","copo");
    	var option1 = document.createElement("option");
    	option1.innerHTML = "L";
    	option1.value = "L";
    	chkbox.add(option1, null);
    	
    	var option2 = document.createElement("option");
    	option2.innerHTML = "M";
    	option2.value = "M";
    	chkbox.add(option2, null);

    	var option3 = document.createElement("option");
    	option3.innerHTML = "H";
    	option3.value = "H";
    	chkbox.add(option3, null);
  		row1.insertCell(n).appendChild(chkbox);
  	}
  }

//naya wala
var table1 = document.getElementById("map2");
  var row = table1.insertRow(0);
  var i=1;
  row.insertCell(0).innerHTML = "&nbsp";
  for(i=0;i<ut;i++)
  {
  	var j=i+1;
  	var ii=" &nbsp&nbsp&nbsp&nbsp&nbsp"+"ut"+j;
  	row.insertCell(i+1).innerHTML = ii;
  }

  row = table1.insertRow(1);
  row.insertCell(0).innerHTML = "&nbsp";
  var i2=1,j2=0;
  
  for(i=0;i<(ut*nq);i++)
  {
	  
		
		if(j2<nq)
		{
			j2++;
		}
		else
		{
			j2=1;
			i2++;
		}
		
  	
  	ii="Q"+(i2)+""+(j2)+"&nbsp&nbsp&nbsp&nbsp";
  	row.insertCell(i+1).innerHTML = ii;
  }

  var n4=document.getElementById("co").value;
 	n4++;
  for(m=2;m<=n4;m++)
  {
  	var row1 = table1.insertRow(m);
  	row1.insertCell(0).innerHTML = "co"+(m-1);
  		
  	for(n=1;n<=(ut*nq);n++)
  	{
  		var chkbox = document.createElement("input");
  		chkbox.setAttribute("name","cout"+m+""+n);
    	chkbox.type="checkbox";
  		row1.insertCell(n).appendChild(chkbox);
  	}
  }

  //doosra wala dabba
  
  var table2 = document.getElementById("map3");
  n5=document.getElementById("prac").value;
  var row = table2.insertRow(0);
  var i=1;
  row.insertCell(0).innerHTML = "&nbsp";
  for(i=0;i<n5;i++)
  {
  	var j=i+1;
  	var ii="P"+j+"&nbsp&nbsp&nbsp&nbsp";
  	row.insertCell(i+1).innerHTML = ii;
  }

  var n4=document.getElementById("co").value;

  for(m=1;m<=n4;m++)
  {
  	var row1 = table2.insertRow(m);
  	row1.insertCell(0).innerHTML = "co"+(m);
  		
  	for(n=1;n<=n5;n++)
  	{
  		var chkbox = document.createElement("input");
  		chkbox.setAttribute("name","prac"+m+""+n);
    	chkbox.type="checkbox";
  		row1.insertCell(n).appendChild(chkbox);
  	}
  }

   //teesra wala dabba
  
  var table3 = document.getElementById("map4");
  n5=document.getElementById("asn").value;
  var row = table3.insertRow(0);
  var i=1;
  row.insertCell(0).innerHTML = "&nbsp";
  for(i=0;i<n5;i++)
  {
  	var j=i+1;
  	var ii="A"+j+"&nbsp&nbsp&nbsp&nbsp";
  	row.insertCell(i+1).innerHTML = ii;
  }

  var n4=document.getElementById("co").value;

  for(m=1;m<=n4;m++)
  {
  	var row1 = table3.insertRow(m);
  	row1.insertCell(0).innerHTML = "co"+(m);
  		
  	for(n=1;n<=n5;n++)
  	{
  		var chkbox = document.createElement("input");
  		chkbox.setAttribute("name","asn"+m+""+n);
    	chkbox.type="checkbox";
  		row1.insertCell(n).appendChild(chkbox);
  	}
  }


  ///*****exams
  var table4 = document.getElementById("map5");
  var row = table4.insertRow(0);
  var i=1;
  row.insertCell(0).innerHTML = "&nbsp";
  for(i=0;i<6;i++)
  {
  	var j=i+1;
  	var ii="E"+j+"&nbsp&nbsp&nbsp&nbsp";
  	row.insertCell(i+1).innerHTML = ii;
  }

  var n4=document.getElementById("co").value;

  for(m=1;m<=n4;m++)
  {
  	var row1 = table4.insertRow(m);
  	row1.insertCell(0).innerHTML = "co"+(m);
  		
  	for(n=1;n<=6;n++)
  	{
  		var chkbox = document.createElement("input");
  		chkbox.setAttribute("name","exa"+m+""+n);
    	chkbox.type="checkbox";
  		row1.insertCell(n).appendChild(chkbox);
  	}
  }

}
</script>
<%!
String gfm1="no";
%>
<%
gfm1=request.getParameter("gfm");
out.println(gfm1);
%>
<center><image src="Logo.png" width=1000 height=200></image></center>
<body>
<form method="POST" action="teach_jsp.jsp?gfm=<%=gfm1%>">

subject name:
<input type="textbox" placeholder="Enter subject name" name="sub" id="sub1" disabled>
<br>
<br>

academic year:
<input type="textbox" placeholder="Enter year" name="year" id="year1" disabled>
<br>
<br>

Enter the number of Assignments:
<input type="text" placeholder="Enter number" id="asn" name="assign">
<br>
<br>

Enter the number of COs:
<input type="textbox" placeholder="Enter number" id="co" name="co">

<br>
<br>

<div id="div1">
</div>

Enter the number of Continuous Assessments:
<input type="textbox" placeholder="Enter number" id="prac" name="prac">

<br>

<input type="button" value="generate mapping" onclick="check()">

<br>
<br>

Enter the total number of registered/attempted students:
<input type="textbox" name="req" placeholder="Enter number">
<br>
<br>

What is your target percentage(%) :
<input type="textbox" name="tar" placeholder="Enter percentage">
<br>
<br>

</p>

<table id="map1" border="0">
</table>
<br>
<br>

<table id="map2" border="0">
</table>
<br>
<br>

<table id="map3" border="0">
</table>
<br>
<br>

<table id="map4" border="0">
</table>
<br>
<br>

<table id="map5" border="0">
</table>
<br>
<br>

<p id="s"></p>

<input type="submit" value="submit"/>

</form>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</body>
</html>