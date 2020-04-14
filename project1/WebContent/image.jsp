<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,model.Database,java.io.IOException,java.io.InputStream,java.io.PrintWriter"%>

<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- <%
response.setContentType("text/html");
String user=request.getParameter("user");
try
{
	Connection con=Database.dataConnection();       //Database is name of class in model package 
	Statement stmt=con.createStatement();
	String str="select * from register";// where username ='"+user+"'";
	ResultSet rs=stmt.executeQuery(str);
	String len="";
	
	if(rs.next())
	{
		len=rs.getString(6); 
		int size=len.length();
		byte[] b=new byte[size];
		InputStream is=rs.getBinaryStream(6);
		int rlen=is.read(b,0,size);
		response.reset();
		%>
		
		<img src=<%response.getOutputStream().write(b,0,rlen);%> width="200" height="200"/> 
		
		<%
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
	}
}catch(Exception e)
{
	
}
%> --%>

<%
Blob show_office_profile_image=null;
byte[ ] imgData = null;

try {
	
	Connection con=Database.dataConnection();       //Database is name of class in model package 
	ResultSet rs; 
	PreparedStatement pst;
	
	String str="select photo from register";// where username ='"+user+"'";
	pst=con.prepareStatement(str);
	rs=pst.executeQuery();
	
	
	while(rs.next())  
	{
	
		show_office_profile_image = rs.getBlob(1);
		imgData = show_office_profile_image.getBytes(1,(int)show_office_profile_image.length());
			 
	}
	response.setContentType("image/gif");
	OutputStream o = response.getOutputStream();

	o.write(imgData);
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>

		

</body>
</html>