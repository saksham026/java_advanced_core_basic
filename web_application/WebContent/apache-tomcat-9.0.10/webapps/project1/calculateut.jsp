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
<style>
tr,td{
text-align:center;
}
</style>
<center><image src="Logo.png" width=1000 height=200></image></center>
<h1><%=sub %> Unit Test attainment</h1>

<body>
<%!
	String sub="dmkd";
	String year="2017";
	int sum=0,sum1=0;
	float per=0f;
	int ut1[][]=new int[200][200];
	int t=0,q=0,m=0,p=0;
	int max[]=new int[200];
	int nco=0,tar=60,req=60;
	int totalcoy[]=new int[200];
	int totalcon[]=new int[200];
	int totalc[]=new int[200];
	float totalavg[]=new float[200];
	int entries=0;

%>
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
	
	String c5=year+"_"+sub+"_cout";

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
			response.sendRedirect("calculateassign.jsp?sub="+sub+"&year="+year);
	}
	
	
	String str1="select ut,nq from "+year+"_"+sub+"_unit limit 1";
	ResultSet rs1=stmt.executeQuery(str1);
	while(rs1.next())
	{
		ut=rs1.getInt(1);
		nq=rs1.getInt(2);
		
	}
	
	
    String str12="select count(*) from "+year+"_"+sub+"_cout";
    ResultSet rs5=stmt.executeQuery(str12);
    while(rs5.next())
    {
    	nco=rs5.getInt(1);
    	
    }
	
    
	String str3="select * from "+year+"_"+sub+"_unit limit 1";
	ResultSet rs3=stmt.executeQuery(str3);
	while(rs3.next())
	{
		for(int k1=4;k1<(ut*nq+4);k1++)
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
	String str2="select * from "+year+"_"+sub+"_cout";
	ResultSet rs2=stmt.executeQuery(str2);
	while(rs2.next())
	{
		sum=0;
		
		for(int k=4;k<(ut*nq+4);k++)
		{
			
			//by default value deni hain
			//sum+=(rs2.getInt(k-2)*no);
			ut1[t][p]=rs2.getInt(k-2);
			p++;
		}
		t++;
		p=0;
	}
	
	//System.out.println(ut1[1][1]);
	//sub=request.getParameter("sname");
	//year=request.getParameter("year");
%>
<tr>
<th>
Prn
</th>
<%
	int i=1,j=0;
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
		
%>
<th>
q<%=i+""+j%>
</th>
<%
		}

for(int k=0;k<(nco);k++)
	{
		totalc[k]=0;
		totalcoy[k]=0;
		totalavg[k]=0;
		entries=0;
%>
<th>
co<%=k %>
</th>
<%
	
	}
for(int k=0;k<(nco);k++)
{
	%>
	<th>
	co<%=k %>
	</th>
	<%
	
}
for(int k=0;k<(nco);k++)
{

%>
<th>
co<%=k %>
</th>
<%

}
for(int k=0;k<(nco);k++)
{
	%>
	<th>
	co<%=k %>
	</th>
	<%
}
for(int k=0;k<(nco);k++)
{%>
<th>
co<%=k %>
</th>
<%
	
}

	String str="select * from "+year+"_"+sub+"_unit";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{

		if(rs.getInt(1)==1)
		{
%>
<tr>
<td>

</td>

<%
		}
		else
		{
%>
		
<tr>
<td>
<%= rs.getInt(1)%>
</td>
<%
	}
		for(int k=4;k<(ut*nq+4);k++)
		{
	
			int no=rs.getInt(k);
			//by default value deni hain
			
			String n=Integer.toString(no);
			
			if(no==-1||n==null)
			{
				
%>
<td>

</td>
<%
			}
			else
			{
%>
<td>
<%= rs.getInt(k)%>
</td>
<%

			}
		}
	

	for(int y=0;y<t;y++)
	{
		sum=0;
	
		for(int k=4;k<(ut*nq+4);k++)
		{
			
			int no=rs.getInt(k);
			if(no==-1)
			{
				no=0;
			}
			//by default value deni hain
			sum+=ut1[y][k-4]*no;
			
		}
%>
<td>
<%= sum%>
</td>
<%
	}
	for(int y=0;y<t;y++)
	{
		sum=0;
		int z=0;
		for(int k=4;k<(ut*nq+4);k++)
		{
	
			int no=rs.getInt(k);
			if(no==-1)
			{
				
			}
			//by default value deni hain
			else
				{
				sum+=ut1[y][k-4]*max[z];		
				}
		z++;
		}

%>
<td>
<%= sum%>
</td>
<%	
	}
	for(int y=0;y<t;y++)
	{
		sum=0;
		sum1=0;
		per=0;
		int z=0;
		for(int k=4;k<(ut*nq+4);k++)
		{
			int no=rs.getInt(k);
			if(no==-1)
			{
				no=0;
			}
		//by default value deni hain
			sum1+=ut1[y][k-4]*no;
	
			if(no==-1)
			{
				
			}
			//by default value deni hain
			else
				{
				sum+=ut1[y][k-4]*max[z];		
				}
		z++;
		if(sum==0)
		{
			per=0;	//can be changed
		}
		else
		per=((float)sum1/sum)*100;
		}

%>
<td>
<%= per%>
</td>
<%	
	}
	for(int y=0;y<t;y++)
	{
		sum=0;
		sum1=0;
		per=0;
		int z=0;
		for(int k=4;k<(ut*nq+4);k++)
		{
			int no=rs.getInt(k);
			if(no==-1)
			{
				no=0;
			}
		//by default value deni hain
			sum1+=ut1[y][k-4]*no;
	
			if(no==-1)
			{
				
			}
			//by default value deni hain
			else
				{
				sum+=ut1[y][k-4]*max[z];		
				}
		z++;
		if(sum==0)
		{
			per=0;	//can be changed
		}
		else
		per=((float)sum1/sum)*100;
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
		else if(per>40)
		{
			ta=1;
		}
%>
<td>
<%= ta%>
</td>
<%	
	}
	for(int y=0;y<t;y++)
	{
		String pass="n";
		
		sum=0;
		sum1=0;
		per=0;
		int z=0;
		for(int k=4;k<(ut*nq+4);k++)
		{
			int no=rs.getInt(k);
			if(no==-1)
			{
				no=0;
			}
		//by default value deni hain
			sum1+=ut1[y][k-4]*no;
			
			if(no==-1)
			{
				
			}
			//by default value deni hain
			else
				{
				sum+=ut1[y][k-4]*max[z];		
				}
		z++;
		if(sum==0)
		{
			per=0;	//can be changed
		}
		else
		per=((float)sum1/sum)*100;
		
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
		else if(per>40)
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
		


%>
<td>
<%=pass%>
</td>
<%	
	}
	//rs2.beforeFirst();
		
%>
</tr>
<%
	entries+=1;
	}
	for(int y=0;y<t;y++)
	{
	totalavg[y]=(float)totalc[y]/entries;
	System.out.println("totalavg"+totalc[y]);
	}
%>
<tr>

<% 
		for(int k=4;k<(ut*nq+4);k++)
		{
%>
<td>
</td>
<%
		}

for(int y=0;y<t;y++)
{
	%>
	<td>
	</td>
	<td>
	</td>
	
	<%		
}

for(int y=0;y<=t;y++)
{
	%>
	<td>
	</td>
	<%		
}
%>
<%
	for(int y=0;y<t;y++)
	{
		%>
		<td>
		<%=totalavg[y]%>
		</td>
		<%		
	}
	for(int y=0;y<t;y++)
	{
		%>
		<td>
		y
		</td>
		<%		
	}
%>
</tr>
<tr>
<td>
</td>
<%
for(int y=0;y<t;y++)
{
%>
	<td>
	</td>
	<td>
	</td>
	<td>
	</td>
	<td>
	</td>
	
<%		
}
for(int y=0;y<t;y++)
{
%>
	<td>
	<%=totalc[y]%>
	</td>
	
<%		
}
for(int y=0;y<t;y++)
{
	String str123="update "+year+"_"+sub+"_comix set unit="+totalcoy[y]+" where co='co"+(y+1)+"'"; 
	System.out.println(str123);
	PreparedStatement ps=con.prepareStatement(str123);

	int b=ps.executeUpdate();
	
	System.out.println(str123);
	
	%>
	<td>
	<%=totalcoy[y]%>
	</td>

<%		
}
%>
<td>
<input type="submit" value="add"/>
</td>
</tr>
<%

}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
<input type="text" name="filetoupload">
</form>
<button><a href="calculateassign.jsp?sub=<%=sub%>&year=<%=year%> " style="text-decoration:none">move too next page</a></button>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</body>
</html>