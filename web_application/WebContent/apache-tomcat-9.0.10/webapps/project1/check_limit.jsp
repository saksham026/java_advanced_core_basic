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
<%
try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	String uname=request.getParameter("user");
	String pass=request.getParameter("pass");
	int countAttempt;
	 
	Integer hitsCount = 
            (Integer)application.getAttribute("hitCounter");
	
	session=request.getSession();
	//out.println("<br>id"+session.getId());
	//out.println("<br>Time"+session.getCreationTime());

	
	//session.setAttribute("username" , uname);     //maybe
	if(hitsCount==null||hitsCount==0)
	{
		hitsCount=1;
		//out.println(hitsCount);
		 application.setAttribute("hitCounter",hitsCount);
	}
    else
    {
        
    	hitsCount+=1;
    	//out.println(hitsCount);
    	 application.setAttribute("hitCounter",hitsCount);
    }
	//application.setAttribute("hitCounter",0);
	session.setAttribute("count",hitsCount);
	
    countAttempt = ((Integer)session.getAttribute("count")).intValue();
   
    //out.println("sak"+countAttempt);
	
	
    int k=1;
    
	String str="select * from login_session where user_name='"+uname+"'";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{
		
		if(rs.getString(2).equals(pass)&&countAttempt<3)
		{
			
			out.println("<h2>welcome "+rs.getString(1)+"<h2>");
			 k=0;
			application.setAttribute("hitCounter",0);
			break;
		}
		else
		{
			k=1;
			if(countAttempt <3){
			   // session.setAttribute("count",++countAttempt);
			         
			    response.sendRedirect("login_session.jsp");
			    } else if(countAttempt == 3){
			    //This will ban users to log in for 10mins...
			    
			    }
			//response.sendRedirect("login_session.jsp");
		}
	}
	if(k==1)
	{
	if(countAttempt<3)
    {
		 response.sendRedirect("login_session.jsp");
    }
    else if(countAttempt<23)
    {
    	int t=23-countAttempt;
    	out.println("blocked for "+"<strike>"+t+" sec<strike>");
    	response.setHeader("Refresh", "1");
    }
    else
    {
    	application.setAttribute("hitCounter",0);
    	response.sendRedirect("login_session.jsp");
    }
	}
}
	catch(Exception e)
	{
		out.println(e);
	}

%>
</body>
</html>