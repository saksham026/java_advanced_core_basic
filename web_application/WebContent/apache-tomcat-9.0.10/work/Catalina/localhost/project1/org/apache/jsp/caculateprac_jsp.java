/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.10
 * Generated at: 2019-04-17 09:01:00 UTC
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

public final class caculateprac_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


	String sub="DMKD";
	String year="2017";
	int sum=0,sum1=0;
	float per=0f;
	int ut1[][]=new int[200][200];
	int t=0,q=0,m=0,p=0;
	int max[]=new int[200];
	int nco=0,tar=60,req=60;
	int num=0;
	int totalcoy[]=new int[200];
	int totalcon[]=new int[200];
	int totalc[]=new int[200];
	float totalavg[]=new float[200];
	int entries=0;

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
      out.write("<style>\r\n");
      out.write("tr,td{\r\n");
      out.write("text-align:center;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<center><image src=\"Logo.png\" width=1000 height=200></image></center>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<h1>");
      out.print(sub );
      out.write(" Practical attainment</h1>\r\n");
      out.write("<form method=\"post\" action=\"attainment.jsp?sub=");
      out.print(sub);
      out.write("&year=");
      out.print(year);
      out.write("\">\r\n");
      out.write("<table border=\"5\" align=\"center\" width=\"70%\">\r\n");

try
{
	Connection con=Database.dataConnection();
	Statement stmt=con.createStatement();
	//sub=request.getParameter("sub");
	System.out.println("sub is:"+sub);
	//year=request.getParameter("year");
		
	ArrayList<String> tables = new ArrayList<String>();
	
	String all="show tables";
	ResultSet rs12=stmt.executeQuery(all);
	while(rs12.next())
	{
		tables.add(rs12.getString(1));
		
	}
	
	String c5=year+"_"+sub+"_practical";

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
			response.sendRedirect("attainment.jsp?sub="+sub+"&year="+year);
	}
	
	

	String str1="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_practical'";
	ResultSet rs1=stmt.executeQuery(str1);
	while(rs1.next())
	{
		num=rs1.getInt(1);
		
	}
	
	
    String str12="select count(*) from "+year+"_"+sub+"_cop";
    ResultSet rs5=stmt.executeQuery(str12);
    while(rs5.next())
    {
    	nco=rs5.getInt(1);
    	
    }
	
	String str3="select * from "+year+"_"+sub+"_practical limit 1";
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
	String str2="select * from "+year+"_"+sub+"_cop";
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
		p=0;
	}
	
	System.out.println("checking"+ut1[0][0]);
	//sub=request.getParameter("sname");
	//year=request.getParameter("year");

      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<th>\r\n");
      out.write("Prn\r\n");
      out.write("</th>\r\n");

	int i=1,j=0;
	for(int k=1;k<(num);k++)
		{
		
		totalc[k-1]=0;
		totalcoy[k-1]=0;
		totalavg[k-1]=0;
		entries=0;
		

      out.write("\r\n");
      out.write("<th>\r\n");
      out.write("p");
      out.print(k);
      out.write("\r\n");
      out.write("</th>\r\n");

		}

for(int k=1;k<=(nco);k++)
	{
	

      out.write("\r\n");
      out.write("<th>\r\n");
      out.write("co");
      out.print(k );
      out.write("\r\n");
      out.write("</th>\r\n");

	
	}
for(int k=1;k<=(nco);k++)
{
	
      out.write("\r\n");
      out.write("\t<th>\r\n");
      out.write("\tco");
      out.print(k );
      out.write("\r\n");
      out.write("\t</th>\r\n");
      out.write("\t");

	
}
for(int k=1;k<=(nco);k++)
{


      out.write("\r\n");
      out.write("<th>\r\n");
      out.write("co");
      out.print(k );
      out.write("\r\n");
      out.write("</th>\r\n");


}
for(int k=1;k<=(nco);k++)
{
	
      out.write("\r\n");
      out.write("\t<th>\r\n");
      out.write("\tco");
      out.print(k );
      out.write("\r\n");
      out.write("\t</th>\r\n");
      out.write("\t");

}
for(int k=1;k<=(nco);k++)
{
      out.write("\r\n");
      out.write("<th>\r\n");
      out.write("co");
      out.print(k );
      out.write("\r\n");
      out.write("</th>\r\n");

	
}

	String str="select * from "+year+"_"+sub+"_practical";
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	{


      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.print( rs.getInt(1));
      out.write("\r\n");
      out.write("</td>\r\n");

		for(int k=2;k<=(num);k++)
		{
	
			int no=rs.getInt(k);
			//by default value deni hain
			
			String n=Integer.toString(no);
			
			if(no==-1||n==null)
			{
				

      out.write("\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");

			}
			else
			{

      out.write("\r\n");
      out.write("<td>\r\n");
      out.print( rs.getInt(k));
      out.write("\r\n");
      out.write("</td>\r\n");


			}
		}
	

	for(int y=0;y<t;y++)
	{
		sum=0;
	
		for(int k=2;k<=(num);k++)
		{
			
			int no=rs.getInt(k);
			if(no==-1)
			{
				no=0;
			}
			//by default value deni hain
			sum+=ut1[y][k-2]*no;
			
		}

      out.write("\r\n");
      out.write("<td>\r\n");
      out.print( sum);
      out.write("\r\n");
      out.write("</td>\r\n");

	}
	for(int y=0;y<t;y++)
	{
		sum=0;
		int z=0;
		for(int k=2;k<=(num);k++)
		{
	
			int no=rs.getInt(k);
			if(no==-1)
			{
				
			}
			//by default value deni hain
			else
				{
				sum+=ut1[y][k-2]*25;		
				}
		z++;
		}


      out.write("\r\n");
      out.write("<td>\r\n");
      out.print( sum);
      out.write("\r\n");
      out.write("</td>\r\n");
	
	}
	for(int y=0;y<t;y++)
	{
		sum=0;
		sum1=0;
		per=0;
		int z=0;
		for(int k=2;k<=(num);k++)
		{
			int no=rs.getInt(k);
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
				sum+=ut1[y][k-2]*25;		
				}
		z++;
		if(sum==0)
		{
			per=0;	//can be changed
		}
		else
		per=((float)sum1/sum)*100;
		}


      out.write("\r\n");
      out.write("<td>\r\n");
      out.print( per);
      out.write("\r\n");
      out.write("</td>\r\n");
	
	}
	for(int y=0;y<t;y++)
	{
		sum=0;
		sum1=0;
		per=0;
		int z=0;
		for(int k=2;k<=(num);k++)
		{
			int no=rs.getInt(k);
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
				sum+=ut1[y][k-2]*25;		
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
		else if(per>=40)
		{
			ta=1;
		}

      out.write("\r\n");
      out.write("<td>\r\n");
      out.print( ta);
      out.write("\r\n");
      out.write("</td>\r\n");
	
	}
	for(int y=0;y<t;y++)
	{
		sum=0;
		sum1=0;
		per=0;
		int z=0;
		for(int k=2;k<=(num);k++)
		{
			int no=rs.getInt(k);
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
				sum+=ut1[y][k-2]*25;		
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
		else if(per>=40)
		{
			ta=1;
		}
		
		totalc[y]+=ta;
		System.out.println(totalc[0]);
		String pass="n";
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

      out.write("\r\n");
      out.write("<td>\r\n");
      out.print( pass);
      out.write("\r\n");
      out.write("</td>\r\n");
	
	}
	//rs2.beforeFirst();
		

      out.write("\r\n");
      out.write("</tr>\r\n");

entries+=1;
	}
for(int y=0;y<t;y++)
	{
	totalavg[y]=(float)totalc[y]/entries;
	System.out.println("totalavg"+totalc[y]);
	}

      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("\r\n");
 
		for(int k=4;k<(num+3);k++)
		{

      out.write("\r\n");
      out.write("<td>\r\n");
      out.write("</td>\r\n");

		}

for(int y=0;y<t;y++)
{
	
      out.write("\r\n");
      out.write("\t<td>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t<td>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t\r\n");
      out.write("\t");
		
}

for(int y=0;y<=t;y++)
{
	
      out.write("\r\n");
      out.write("\t<td>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t");
		
}

      out.write('\r');
      out.write('\n');

	for(int y=0;y<t;y++)
	{
		
      out.write("\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t");
      out.print(totalavg[y]);
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t");
		
	}
	for(int y=0;y<t;y++)
	{
		
      out.write("\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\ty\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t");
		
	}

      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("</td>\r\n");

for(int y=0;y<=t;y++)
{

      out.write("\r\n");
      out.write("\t<td>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t<td>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t<td>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t<td>\r\n");
      out.write("\t</td>\r\n");
      out.write("\t\r\n");
		
}

      out.write("\r\n");
      out.write("\r\n");

for(int y=0;y<t;y++)
{

      out.write("\r\n");
      out.write("\t<td>\r\n");
      out.write("\t");
      out.print(totalc[y]);
      out.write("\r\n");
      out.write("\t</td>\r\n");
      out.write("\t\r\n");
		
}
for(int y=0;y<t;y++)
{
	String str123="update "+year+"_"+sub+"_comix set practical="+totalcoy[y]+" where co='co"+(y+1)+"'"; 
	System.out.println(str123);
	PreparedStatement ps=con.prepareStatement(str123);

	int b=ps.executeUpdate();
	
	
      out.write("\r\n");
      out.write("\t<td>\r\n");
      out.write("\t");
      out.print(totalcoy[y]);
      out.write("\r\n");
      out.write("\t</td>\r\n");
      out.write("\r\n");
		
}

      out.write("\r\n");
      out.write("<td>\r\n");
      out.write("<input type=\"submit\" value=\"add\"/>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");


}
catch(Exception e)
{
	out.println(e);
}

      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<input type=\"text\" name=\"filetoupload\">\r\n");
      out.write("</form>\r\n");
      out.write("<button><a href=\"attainment.jsp?sub=");
      out.print(sub);
      out.write("&year=");
      out.print(year);
      out.write("\" style=\"text-decoration:none\">move to next page</a></button>\r\n");
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
