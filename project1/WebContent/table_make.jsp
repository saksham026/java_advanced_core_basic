<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<%@page import="java.sql.*,model.Database,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
{

	String year=request.getParameter("year");
	String sname=request.getParameter("subject");
	String cb1=request.getParameter("cb1");
	String cb2=request.getParameter("cb2");
	String cb3=request.getParameter("cb3");
	String cb4=request.getParameter("cb4");
	String task=request.getParameter("task");
	ArrayList<String> tables = new ArrayList<String>();
	
	String ut=request.getParameter("ut");
	String nq=request.getParameter("ques");
	String [] utm=request.getParameterValues("t2");
	
	String l=request.getParameter("l");
	String m=request.getParameter("m");
	String h=request.getParameter("h");
	//String mf=request.getParameter("mf");
	
	String mf="1";
	
	String task2=request.getParameter("atask");
	out.println("<h1>subject is registered</h1>");
	
	
	
	/*for(int i=0;i<utm.length;i++)
	{
		out.println(utm[i]);	
	} */
	
Connection con=Database.dataConnection();
Statement stmt=con.createStatement();

//*****************admin*****************

String all="show tables";
	ResultSet rs1=stmt.executeQuery(all);
	while(rs1.next())
	{
		tables.add(rs1.getString(1));
		
	}

	
String c=year+"_subject";
int flag=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equals(c))
	{
		flag=0;
	}
}

if(flag==1)
{
String abc="create table "+year+"_subject (name varchar(100),target integer,req integer);";	//change
stmt.executeUpdate(abc);

}

int flag9=1;


String sub="select * from "+year+"_subject where name='"+sname+"'";
System.out.println(sub);
ResultSet rs10=stmt.executeQuery(sub);
while(rs10.next())
{
	flag9=0;
}


if(flag9==1)
{
String str123="insert into "+year+"_subject(name) values(?);";
PreparedStatement ps123=con.prepareStatement(str123);
ps123.setString(1,sname);
boolean b123=ps123.execute();
ps123.close();

String abc1="create table "+year+"_"+sname+"_comix (co varchar(100),unit integer,exam integer,assessment integer,practical integer);";	//change
stmt.executeUpdate(abc1);

String abc2="create table "+year+"_"+sname+"_cosum (co varchar(100),unit integer,exam integer,assessment integer,practical integer);";	//change
stmt.executeUpdate(abc2);
}
	Double la=Double.parseDouble(l);
	Double ma=Double.parseDouble(m);
	Double ha=Double.parseDouble(h);
	Double mfa=Double.parseDouble(mf);
	Integer year1=Integer.parseInt(year);

	
if(task2.equals("add"))
{
/* String str7="create table admin_cred(l decimal(2,2),m decimal(2,2),h decimal(2,2),mf decimal(2,2),year integer,primary key(year));";
	stmt.executeUpdate(str7);	
	 */
	 	int f=1;
	 	String q="select * from admin_cred where year="+year1;
		ResultSet rs2=stmt.executeQuery(q);
		while(rs2.next())
		{
			f=0;
		}
		
	if(f==1)
	{
	String str6="insert into admin_cred(l,m,h,mf,year) values(?,?,?,?,?);";
	PreparedStatement ps=con.prepareStatement(str6);
	
	ps.setDouble(1,la);
	ps.setDouble(2,ma);
	ps.setDouble(3,ha);
	ps.setDouble(4,mfa);
	ps.setInt(5,year1);
	
	boolean b=ps.execute();
	ps.close();
	}
}

if(task2.equals("modify"))
{
	try
	{
		int f=1;
	 	String q="select * from admin_cred where year="+year1;
		ResultSet rs2=stmt.executeQuery(q);
		while(rs2.next())
		{
			f=0;
		}
	
		if(f==1)
		{
	String str9="delete from admin_cred where year="+year+";";
	PreparedStatement ps1=con.prepareStatement(str9);
	boolean b1=ps1.execute();
	ps1.close();
		}
	}
	catch(Exception e)
	{
		
	}
	finally
	{
		int f=1;
	 	String q="select * from admin_cred where year="+year1;
		ResultSet rs2=stmt.executeQuery(q);
		while(rs2.next())
		{
			f=0;
		}
	
		if(f==1)
		{
	String str6="insert into admin_cred(l,m,h,mf,year) values(?,?,?,?,?);";
	PreparedStatement ps=con.prepareStatement(str6);
	
	ps.setDouble(1,la);
	ps.setDouble(2,ma);
	ps.setDouble(3,ha);
	ps.setDouble(4,mfa);
	ps.setInt(5,year1);
	
	boolean b=ps.execute();
	ps.close();
	}
	}
}

//*******create table******
if(task.equals("add"))
{
	
String c1=year+"_"+sname+"_co";
String c2=year+"_"+sname+"_exam";
String c3=year+"_"+sname+"_assessment";
String c4=year+"_"+sname+"_practical";
String c5=year+"_"+sname+"_unit";

int flag1=1;
int flag2=1;
int flag3=1;
int flag4=1;
int flag5=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equals(c1))
	{
		flag1=0;
	}
	if(tables.get(p).equals(c2))
	{
		flag2=0;
	}if(tables.get(p).equals(c3))
	{
		flag3=0;
	}if(tables.get(p).equals(c4))
	{
		flag4=0;
	}if(tables.get(p).equals(c5))
	{
		flag5=0;
	}
}


if(flag1==1)
{
String str="create table "+year+"_"+sname+"_co (co_name varchar(300));";
stmt.executeUpdate(str);
}

if(cb1!=null)
{
	//change
	if(flag2==1){
	String str1="create table "+year+"_"+sname+"_Exam (prn bigint,e1 integer,e2 integer,e3 integer,e4 integer,e5 integer,e6 integer,primary key(prn));";
	stmt.executeUpdate(str1);
	}
}

if(cb3!=null)
{
	if(flag3==1){
	String str2="create table "+year+"_"+sname+"_Assessment (prn bigint,primary key(prn));";
	stmt.executeUpdate(str2);
	}
}

if(cb2!=null)
{
	//String str3="create table "+year+"_"+sname+"_Practical (prn bigint,oral integer,practical integer,primary key(prn));";
	if(flag4==1){
	String str3="create table "+year+"_"+sname+"_Practical (prn bigint,primary key(prn));";
	stmt.executeUpdate(str3);
	}
}
if(cb4!=null)
{
	if(flag5==1){
	String str4="create table "+year+"_"+sname+"_unit (prn bigint,ut integer,nq integer,primary key(prn));";
	stmt.executeUpdate(str4);
	
	
	Integer ut1=Integer.parseInt(ut);
	Integer nq1=Integer.parseInt(nq);
	
	String str6="insert into "+year+"_"+sname+"_unit (prn,ut,nq) values(?,?,?);";
	PreparedStatement ps=con.prepareStatement(str6);
	
	ps.setInt(1,1);
	ps.setInt(2,ut1);
	ps.setInt(3,nq1);
	
	boolean b=ps.execute();
	ps.close();	
	
	int k=0;
	int j=0;
	for(int i=0;i<(ut1*utm.length);i++)
	{
		
		if(j<utm.length)
		{
			j++;
		}
		else
		{
			j=1;
			k++;
		}
		
		
		String str43="alter table "+year+"_"+sname+"_unit add qm"+k+""+j+" integer;";
		stmt.executeUpdate(str43);
	
		String str7="update "+year+"_"+sname+"_unit set qm"+k+""+j+"="+utm[j-1]+";";
		PreparedStatement ps1=con.prepareStatement(str7);
		
		boolean b1=ps1.execute();
		ps1.close();	
		
	} 
	}
	

	
}

}
//*******deletion******
if(task.equals("delete"))
{
	String c1=year+"_"+sname+"_co";
	String c2=year+"_"+sname+"_exam";
	String c3=year+"_"+sname+"_assessment";
	String c4=year+"_"+sname+"_practical";
	String c5=year+"_"+sname+"_unit";

	int flag1=1;
	int flag2=1;
	int flag3=1;
	int flag4=1;
	int flag5=1;
	for(int p=0;p<tables.size();p++)
	{
		if(tables.get(p).equals(c1))
		{
			flag1=0;
		}
		if(tables.get(p).equals(c2))
		{
			flag2=0;
		}if(tables.get(p).equals(c3))
		{
			flag3=0;
		}if(tables.get(p).equals(c4))
		{
			flag4=0;
		}if(tables.get(p).equals(c5))
		{
			flag5=0;
		}
	}

		///no validation done
	if(cb1!=null)
	{
try
{		if(flag2==1)
{
		String str1="drop table "+year+"_"+sname+"_Exam";
		stmt.executeUpdate(str1);
}
}
catch(Exception e1){
	out.println("exam for this subject does not exist");
}
	}

	if(cb3!=null)
	{

		try
		{
			if(flag3==1){
				
		String str2="drop table "+year+"_"+sname+"_Assessment";
		stmt.executeUpdate(str2);
			}
		}
		catch(Exception e1){
			out.println("assessment for this subject does not exist");
		}
	}

	if(cb2!=null)
	{
		try
		{
			if(flag4==1){
		String str3="drop table "+year+"_"+sname+"_Practical";
		stmt.executeUpdate(str3);
		}
		}
		catch(Exception e1){
			out.println("practical for this table does not exist");
		}
	}
	if(cb4!=null)
	{
		try
		{
			if(flag5==1){
		String str4="drop table "+year+"_"+sname+"_unit";
		stmt.executeUpdate(str4);
		}
		}
		catch(Exception e1){
			out.println("unit tests for this subject does not exist");
		}
	}

	if((cb1!=null)&&(cb2!=null)&&(cb3!=null)&&(cb4!=null))
	{
		if(flag1==0)
		{
	String str="drop table "+year+"_"+sname+"_co;";
	stmt.executeUpdate(str);
	}
	}
}


//*******modify table******
if(task.equals("modify"))
{
	
	String c5=year+"_"+sname+"_unit";

	int flag5=1;
	for(int p=0;p<tables.size();p++)
	{
		
		if(tables.get(p).equals(c5))
		{
			flag5=0;
		}
	}
	if(cb4!=null)
	{
		
		try
		{
			if(flag5==0)
			{
		String str4="drop table "+year+"_"+sname+"_unit";
		stmt.executeUpdate(str4);
		}
		}
		catch(Exception e1)
		{
			//out.println("unit tests for this table does not exist");
		}
		finally
		{
			
			String str4="create table "+year+"_"+sname+"_unit (prn bigint,ut integer,nq integer,primary key(prn));";
			stmt.executeUpdate(str4);
			
			Integer ut1=Integer.parseInt(ut);
			Integer nq1=Integer.parseInt(nq);
			
			String str6="insert into "+year+"_"+sname+"_unit (prn,ut,nq) values(?,?,?);";
			PreparedStatement ps=con.prepareStatement(str6);
			
			ps.setInt(1,1);
			ps.setInt(2,ut1);
			ps.setInt(3,nq1);
			
			boolean b=ps.execute();
			ps.close();	
			
			int k=0;
			int j=0;
			for(int i=0;i<(ut1*utm.length);i++)
			{
				
				if(j<utm.length)
				{
					j++;
				}
				else
				{
					j=1;
					k++;
				}
				
				
				String str43="alter table "+year+"_"+sname+"_unit add qm"+k+""+j+" integer;";
				stmt.executeUpdate(str43);
			
				String str7="update "+year+"_"+sname+"_unit set qm"+k+""+j+"="+utm[j-1]+";";
				PreparedStatement ps1=con.prepareStatement(str7);
				
				boolean b1=ps1.execute();
				ps1.close();	
				
			} 
			
		
		}
		
	}
}	

//response.sendRedirect("assigning.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>