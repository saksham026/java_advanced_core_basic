<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,model.Database,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
String gfm="no";
%>
<%
try
{
	//have to add percentage and required/attempted student in database but where??
	gfm=request.getParameter("gfm");
	
	String year=request.getParameter("year");
	System.out.println("year is:"+year);
	String c []=request.getParameterValues("t1");

	String sname=request.getParameter("sub");
	String co=request.getParameter("co");
	System.out.println("co is:"+co);
	int co1=Integer.parseInt(co);
	//int co1=4;
	
	String assign=request.getParameter("assign");
	String prac=request.getParameter("prac");
	
	String req=request.getParameter("req");
	String tar=request.getParameter("tar");
	
	String copo []=request.getParameterValues("copo");
	
	Integer cos=Integer.parseInt(co);
	Integer prac1=Integer.parseInt(prac);
	Integer assign1=Integer.parseInt(assign);
	ArrayList<String> tables = new ArrayList<String>();
	
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	
	
	//***********************
	String str431="update "+year+"_subject set target='"+tar+"', req='"+req+"' where name='"+sname+"'";
	stmt.executeUpdate(str431);
	//***********************
	
	//change
	String str441="delete from "+year+"_"+sname+"_co";
		PreparedStatement ps12=con.prepareStatement(str441);
		boolean b12=ps12.execute();
		
		String str442="delete from "+year+"_"+sname+"_comix";
		PreparedStatement ps13=con.prepareStatement(str442);
		boolean b13=ps13.execute();		
		
		String str443="delete from "+year+"_"+sname+"_cosum";
		PreparedStatement ps14=con.prepareStatement(str443);
		boolean b14=ps14.execute();
		
	//for(int i=0;i<(c.length);i++)
	for(int i=0;i<co1;i++)
	{
		
		String str44="insert into "+year+"_"+sname+"_co values(?);";
		PreparedStatement ps=con.prepareStatement(str44);
		ps.setString(1,c[i]);
		boolean b=ps.execute();
	}
	
	for(int i=0;i<co1;i++)
	{
		
		String str44="insert into "+year+"_"+sname+"_comix(co) values(?);";
		PreparedStatement ps=con.prepareStatement(str44);
		ps.setString(1,"co"+(i+1));
		boolean b=ps.execute();
		
	}
	
	for(int i=0;i<co1;i++)
	{
		
		String str44="insert into "+year+"_"+sname+"_cosum(co) values(?);";
		PreparedStatement ps=con.prepareStatement(str44);
		ps.setString(1,"co"+(i+1));
		boolean b=ps.execute();
	
	}
	
	String all="show tables";
	ResultSet rs1=stmt.executeQuery(all);
	while(rs1.next())
	{
		tables.add(rs1.getString(1));
		
	}
	
String ch=year+"_"+sname+"_copo";
int flag=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equalsIgnoreCase(ch))
	{
		flag=0;
	}
}

String ch1=year+"_"+sname+"_practical";
int flag1=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equalsIgnoreCase(ch1))
	{
		flag1=0;
	}
}
	
String ch2=year+"_"+sname+"_assessment";
int flag2=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equalsIgnoreCase(ch2))
	{
		flag2=0;
	}
}
	
String ch3=year+"_"+sname+"_co";
int flag3=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equalsIgnoreCase(ch3))
	{
		flag3=0;
	}
}

String ch4=year+"_"+sname+"_exam";
int flag4=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equalsIgnoreCase(ch4))
	{
		flag4=0;
	}
}
	
String ch5=year+"_"+sname+"_unit";
int flag5=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equalsIgnoreCase(ch5))
	{
		flag5=0;
	}
}

String ch6=year+"_prn";
int flag6=1;
for(int p=0;p<tables.size();p++)
{
	if(tables.get(p).equalsIgnoreCase(ch6))
	{
		flag6=0;
	}
}
	
	if(flag==1)
	{
	if(flag1==0)
	{
	for(int i=0;i<(prac1);i++)
	{
		String str43="alter table "+year+"_"+sname+"_practical add p"+(i+1)+" integer;";
		stmt.executeUpdate(str43);
	
	}
	}
	
	
	///
	
	if(flag2==0)
	{
	for(int i=0;i<(assign1);i++)
	{
		String str43="alter table "+year+"_"+sname+"_assessment add a"+(i+1)+" integer;";
		stmt.executeUpdate(str43);
	
	}
	}
	}
	
	if(flag==1)
	{
	String str="create table "+year+"_"+sname+"_copo (cos varchar(4),po1 varchar(2),po2 varchar(2),po3 varchar(2),po4 varchar(2),po5 varchar(2),po6 varchar(2),po7 varchar(2),po8 varchar(2),po9 varchar(2),po10 varchar(2),po11 varchar(2),po12 varchar(2));";
	stmt.executeUpdate(str);
	}
	Integer ut=1;
	Integer nq=1;
	if(flag5==0)
	{
	String str2="SELECT * FROM "+year+"_"+sname+"_unit limit 1";	//change
	ResultSet rs=stmt.executeQuery(str2);
	
	
	if(rs.next())
	{
		 ut=rs.getInt(2);
		 nq=rs.getInt(3);
		
	}
	System.out.println(ut+""+nq);
	}
	
	ArrayList<Integer> cout = new ArrayList<Integer>();
	
	//System.out.println("a");
		int h=0;
		for(int m=2;m<=cos+1;m++)
		  {
		//	System.out.println("b");
		  	for(int n=1;n<=(ut*nq);n++)
		  	{
		  //		System.out.println("b1");
		  		String a=request.getParameter("cout"+m+""+n);
		  		out.println(a);
		  		if(a!=null)
		  		{
		  		//	System.out.println("b3");
		  			cout.add(1);
		  		}
		  		else
		  			cout.add(0);
		  		h++;
		  	//	System.out.println("b2");
		  	}
		  }
		System.out.println("c");
		Object[] cout1=cout.toArray();
		Integer[] cout2 = new Integer[cout1.length];

		// copy elements from object array to integer array
		for (int i = 0; i < cout1.length; i++)
			cout2[i] = (Integer)cout1[i];
		
		System.out.println("d");
		for(int i=0;i<copo.length;i++)
			{
				out.println(copo[i]);	
			} 
			
	 
	int i,j=0;
	if(flag==1)
	{
	for(i=0;i<cos;i++)
	{
		String str6="insert into "+year+"_"+sname+"_copo values(?,?,?,?,?,?,?,?,?,?,?,?,?);";
		PreparedStatement ps=con.prepareStatement(str6);
		
		String v="co"+i;
		ps.setString(1,v);
		
		int k=2;
		for(j=j;j<12*(i+1);j++)
		{

			ps.setString(k,copo[j]);
			k++;
		}
		
		boolean b=ps.execute();
		ps.close();
	}
	
	
	if(flag5==0)
	{
	String str1="create table "+year+"_"+sname+"_cout ( cos varchar(4)";
	String str6="insert into "+year+"_"+sname+"_cout values (? ";
	for(i=1;i<=(ut*nq);i++)
	{
		str1+=", q"+i+" integer";
		str6+=", ?";
		
	}
	str1+=" );";
	str6+=");";
	
	stmt.executeUpdate(str1);
	
	
	j=0;
	for(i=0;i<cos;i++)
	{
		PreparedStatement ps=con.prepareStatement(str6);
		
		String v="co"+i;
		ps.setString(1,v);
		
		int k=2;
		for(j=j;j<(ut*nq)*(i+1);j++)
		{
			
			ps.setInt(k,cout2[j]);
			k++;
		}
		
		boolean b=ps.execute();
		ps.close();
	}
	}
	
	
	//************************** continous assignment
	ArrayList<Integer> practi = new ArrayList<Integer>();
	
	System.out.println("a");
		int h1=0;
		for(int m=1;m<=cos;m++)
		  {
			System.out.println("b");
		  	for(int n=1;n<=(prac1);n++)
		  	{
		  		System.out.println("b1");
		  		String a=request.getParameter("prac"+m+""+n);
		  		out.println(a);
		  		if(a!=null)
		  		{
		  			System.out.println("b3");
		  			practi.add(1);
		  		}
		  		else
		  			practi.add(0);
		  		h1++;
		  		System.out.println("b2");
		  	}
		  }
		System.out.println("c");
		Object[] practi1=practi.toArray();
		Integer[] practi2 = new Integer[practi1.length];

		// copy elements from object array to integer array
		for (int e = 0; e < practi1.length; e++)
			practi2[e] = (Integer)practi1[e];
		
		System.out.println("d");
		for(int q=0;q<practi2.length;q++)
			{
				System.out.println("pcaticals");
				System.out.println(practi2[q]);	
			} 
			
	 if(flag1==0)
	 {
	String str7="create table "+year+"_"+sname+"_cop ( cos varchar(4)";
	String str8="insert into "+year+"_"+sname+"_cop values (? ";
	for(i=1;i<=(prac1);i++)
	{
		str7+=", P"+i+" integer";
		str8+=", ?";
		
	}
	str7+=");";
	str8+=");";
	stmt.executeUpdate(str7);
	
	j=0;
	for(i=0;i<cos;i++)
	{
		PreparedStatement ps=con.prepareStatement(str8);
		
		String v="co"+(i+1);
		ps.setString(1,v);
		
		int k=2;
		for(j=j;j<(prac1)*(i+1);j++)
		{
			out.println("gfh");
			ps.setInt(k,practi2[j]);
			k++;
		}
		
		boolean b=ps.execute();
		ps.close();
	}
	 }
	
	//******************assignments
	ArrayList<Integer> asn = new ArrayList<Integer>();
	
	System.out.println("a");
		h1=0;
		for(int m=1;m<=cos;m++)
		  {
			System.out.println("b");
		  	for(int n=1;n<=(assign1);n++)
		  	{
		  		System.out.println("b1");
		  		String a=request.getParameter("asn"+m+""+n);
		  		out.println(a);
		  		if(a!=null)
		  		{
		  			System.out.println("b3");
		  			asn.add(1);
		  		}
		  		else
		  			asn.add(0);
		  		h1++;
		  		System.out.println("b2");
		  	}
		  }
		System.out.println("c");
		Object[] asn1=asn.toArray();
		Integer[] asn2 = new Integer[asn1.length];

		// copy elements from object array to integer array
		for (int e = 0; e < asn1.length; e++)
			asn2[e] = (Integer)asn1[e];
		
		System.out.println("d");
		for(int q=0;q<asn2.length;q++)
			{
				System.out.println("pcaticals");
				System.out.println(asn2[q]);	
			} 
			
	 if(flag2==0)
	 {
	String str9="create table "+year+"_"+sname+"_coas ( cos varchar(4)";
	String str10="insert into "+year+"_"+sname+"_coas values (? ";
	for(i=1;i<=(assign1);i++)
	{
		str9+=", A"+i+" integer";
		str10+=", ?";
		
	}
	str9+=");";
	str10+=");";
	stmt.executeUpdate(str9);
	
	j=0;
	for(i=0;i<cos;i++)
	{
		PreparedStatement ps=con.prepareStatement(str10);
		
		String v="co"+(i+1);
		ps.setString(1,v);
		
		int k=2;
		for(j=j;j<(assign1)*(i+1);j++)
		{
			out.println("gfh");
			ps.setInt(k,asn2[j]);
			k++;
		}
		
		boolean b=ps.execute();
		ps.close();
	}
	 }
	
	//*************Exam semester
	ArrayList<Integer> exa = new ArrayList<Integer>();
	
	System.out.println("a");
		h1=0;
		for(int m=1;m<=cos;m++)
		  {
			System.out.println("b");
		  	for(int n=1;n<=(6);n++)
		  	{
		  		System.out.println("b1");
		  		String a=request.getParameter("exa"+m+""+n);
		  		out.println(a);
		  		if(a!=null)
		  		{
		  			System.out.println("b3");
		  			exa.add(1);
		  		}
		  		else
		  			exa.add(0);
		  		h1++;
		  		System.out.println("b2");
		  	}
		  }
		System.out.println("c");
		Object[] exa1=exa.toArray();
		Integer[] exa2 = new Integer[exa1.length];

		// copy elements from object array to integer array
		for (int e = 0; e < exa1.length; e++)
			exa2[e] = (Integer)exa1[e];
		
		System.out.println("d");
		for(int q=0;q<exa2.length;q++)
			{
				System.out.println("exams");
				System.out.println(exa2[q]);	
			} 
			
	 if(flag4==0)
	 {
	String str11="create table "+year+"_"+sname+"_coex ( cos varchar(4)";
	String str12="insert into "+year+"_"+sname+"_coex values (? ";
	for(i=1;i<=(6);i++)
	{
		str11+=", A"+i+" integer";
		str12+=", ?";
		
	}
	str11+=");";
	str12+=");";
	stmt.executeUpdate(str11);
	
	j=0;
	for(i=0;i<cos;i++)
	{
		PreparedStatement ps=con.prepareStatement(str12);
		
		String v="co"+(i+1);
		ps.setString(1,v);
		
		int k=2;
		for(j=j;j<(6)*(i+1);j++)
		{
			out.println("gfh");
			ps.setInt(k,exa2[j]);
			k++;
		}
		
		boolean b=ps.execute();
		ps.close();
	}
	 }
	 
	}
	//change
	if(gfm.equalsIgnoreCase("no"))
	response.sendRedirect("ut.jsp?sub="+sname+"&year="+year+"");
	else
		if(gfm.equals("on"))
		{
			if(flag6==1)
			{
			String str19="create table "+year+"_prn (prn bigint,primary key(prn));";
			stmt.executeUpdate(str19);
			}
			response.sendRedirect("gfm.jsp?sub="+sname+"&year="+year+"");	
			
		}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>