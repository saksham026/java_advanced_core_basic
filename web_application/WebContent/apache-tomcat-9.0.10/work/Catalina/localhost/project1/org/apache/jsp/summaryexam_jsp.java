/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.10
 * Generated at: 2019-04-17 09:01:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import model.Database;
import java.util.*;

public final class summaryexam_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


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

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("model.Database");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<script>\r\n");
      out.write("function pth()\r\n");
      out.write("{\r\n");
      out.write("\talert(document.getElementById(\"file\").files[0].path);\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<script src=\"https://canvasjs.com/assets/script/canvasjs.min.js\"> </script>\r\n");
      out.write("<style>\r\n");
      out.write("tr,td{\r\n");
      out.write("text-align:center;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<center><image src=\"Logo.png\" width=1000 height=200></image></center>\r\n");
      out.write("<body>\r\n");
      out.write('\r');
      out.write('\n');

sub=request.getParameter("sub");
System.out.println("sub is:"+sub);
year=request.getParameter("year");
	

      out.write("\r\n");
      out.write("<h1>");
      out.print(sub );
      out.write(" Exam attainment</h1>\r\n");
      out.write("<form method=\"post\" action=\"allsummary.jsp?sub=");
      out.print(sub);
      out.write("&year=");
      out.print(year);
      out.write("\">\r\n");
      out.write("<table border=\"5\" align=\"center\" width=\"70%\">\r\n");

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
		if(tables.get(p).equalsIgnoreCase(c5))
		{
			flag5=0;
		}
	}
	
	String str323="select * from "+year+"_"+sub+"_co";
	ResultSet rs323=stmt.executeQuery(str323);
	while(rs323.next())
	{
		cose.add(rs323.getString(1));
	}
	int ut=1,nq=1;
	
	if(flag5==1)
	{
			response.sendRedirect("summaryassign.jsp?sub="+sub+"&year="+year);
	}
	

	String str21="select ut,nq from "+year+"_"+sub+"_unit limit 1";
	ResultSet rs21=stmt.executeQuery(str21);
	while(rs21.next())
	{
		ut=rs21.getInt(1);
		nq=rs21.getInt(2);
		
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
		p=0;
		t++;
	}
	
	
	System.out.println("checking"+ut1[0][0]);
	//sub=request.getParameter("sname");
	//year=request.getParameter("year");

      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<th>\r\n");
      out.write("Course Outcomes\r\n");
      out.write("</th>\r\n");
      out.write("<th>\r\n");
      out.write("Average grading\r\n");
      out.write("</th>\r\n");
      out.write("<th>\r\n");
      out.write("Successful Students\r\n");
      out.write("</th>\r\n");
      out.write("<th>\r\n");
      out.write("Attainment\r\n");
      out.write("</th>\r\n");
      out.write("<th>\r\n");
      out.write("Attained\r\n");
      out.write("</th>\r\n");
      out.write("</tr>\r\n");

	int i=0;
	
	String str="select * from "+year+"_"+sub+"_co";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{
		count++;
		cos[i]=rs.getString(1);
		i++;
	}
	
	String str123="select * from "+year+"_"+sub+"_exam";
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
					sum+=ut1[y][k-2]*60;		
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

      out.write("\t\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.print(cos[j]);
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("<td>\r\n");
      out.print(totalavg[j]);
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("<td>\r\n");
      out.print(totalcoy[j]);
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("<td>\r\n");
      out.print((float)totalcoy[j]/entries*100);
      out.write("\r\n");
      out.write("</td>\r\n");

String att="y";
if(((float)totalcoy[j]/entries)*100>50)
{
	att="y";
}
else
{
	att="n";
}

      out.write("\r\n");
      out.write("<td>\r\n");
      out.print(att);
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");

j++;
	}
	for(int y=0;y<t;y++)
	{
		String str1234="update "+year+"_"+sub+"_cosum set exam="+(float)totalcoy[y]/entries*100+" where co='co"+(y+1)+"'"; 
		System.out.println(str1234);
		PreparedStatement ps=con.prepareStatement(str1234);

		int b=ps.executeUpdate();
		
		
	}
}
catch(Exception e)
{
	System.out.println(e);
}

      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("<div id=\"chartContainer\" style=\"height: 370px; width: 100%;\"></div>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var dps=[];\r\n");
      out.write("window.onload = function () {\r\n");
      out.write("\r\n");
      out.write("var chart = new CanvasJS.Chart(\"chartContainer\", {\r\n");
      out.write("\ttheme: \"light1\", // \"light2\", \"dark1\", \"dark2\"\r\n");
      out.write("\tanimationEnabled: true, // change to true\t\t\r\n");
      out.write("\ttitle:{\r\n");
      out.write("\t\ttext: \"Chart\"\r\n");
      out.write("\t},\r\n");
      out.write("\t\r\n");
      out.write("\taxisY:\r\n");
      out.write("\t{\r\n");
      out.write("\tmaximum:100,\r\n");
      out.write("\t},\r\n");
      out.write("\t\r\n");
      out.write("\tdata: [\r\n");
      out.write("\t{\r\n");
      out.write("\t\t// Change type to \"bar\", \"area\", \"spline\", \"pie\",etc.\r\n");
      out.write("\t\ttype: \"column\",\r\n");
      out.write("\t\tdataPoints: dps\r\n");
      out.write("\t}\r\n");
      out.write("\t]\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("chart.render();\r\n");
      out.write("\r\n");
      out.write("var updateChart = function () {\r\n");
      out.write("\t//yVal = yVal +  Math.round(5 + Math.random() *(-5-5));\r\n");
      out.write("\tvar a= new Array();\r\n");
      out.write("\tvar b= new Array();\r\n");
      out.write("\t\r\n");
      out.write("\t");

	for (int j=0; j < count; j++) {
		System.out.println("a"+cose.get(j));
	    
	
      out.write("\r\n");
      out.write("\ta[");
      out.print( j );
      out.write("] = ");
      out.print((float)totalcoy[j]/entries*100);
      out.write(";\r\n");
      out.write("\tb[");
      out.print( j );
      out.write("] = \"");
      out.print(cose.get(j) );
      out.write("\";\r\n");
      out.write("\r\n");
      out.write("\tvar newdps={label: b[");
      out.print( j );
      out.write("], y: a[");
      out.print( j );
      out.write("]}\r\n");
      out.write("\tdps.push(newdps);\r\n");
      out.write("\t");
}
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t//alert(arr);\r\n");
      out.write("\t\r\n");
      out.write("\tdelete this.a;\r\n");
      out.write("\r\n");
      out.write("};\r\n");
      out.write("//setInterval(function(){updateChart()}, 1000); \r\n");
      out.write("updateChart();\r\n");
      out.write("chart.render();\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<button><a href=\"summaryassign.jsp?sub=");
      out.print(sub);
      out.write("&year=");
      out.print(year);
      out.write("\" style=\"text-decoration:none\">move to next page</a><button>\r\n");
      out.write("<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}