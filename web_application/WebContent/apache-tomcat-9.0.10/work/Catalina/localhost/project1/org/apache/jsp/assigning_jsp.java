/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.10
 * Generated at: 2019-04-17 08:08:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class assigning_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function assgn()\r\n");
      out.write("{\r\n");
      out.write("\tvar n1=document.getElementById(\"ques\").value;\r\n");
      out.write("\tvar n3=document.getElementById(\"unit\").value;\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tvar n2=document.getElementById(\"div3\");\r\n");
      out.write("\tn2.innerHTML=\"\"\r\n");
      out.write("\tvar i=1;\r\n");
      out.write("\tfor(i=1;i<=n1;i++)\r\n");
      out.write("\t{\r\n");
      out.write("\t\telement=document.createElement(\"input\");\r\n");
      out.write("\t\telement.setAttribute(\"type\",\"text\");\r\n");
      out.write("\t\telement.setAttribute(\"name\",\"t2\");\r\n");
      out.write("\t\tn2.appendChild(element);\r\n");
      out.write("\t\t//documnet.writeln();\r\n");
      out.write("\t\telement1=document.createElement(\"br\");\r\n");
      out.write("\t\tn2.appendChild(element1);\r\n");
      out.write("\r\n");
      out.write("\t\telement2=document.createElement(\"br\");\r\n");
      out.write("\t\tn2.appendChild(element2);\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<center><image src=\"Logo.png\" width=1000 height=200></image></center>\r\n");
      out.write("<body>\r\n");
      out.write("<form method=\"POST\" action=\"table_make.jsp\">\r\n");
      out.write("<pre>\r\n");
      out.write("Academic year:<input type=\"text\" placeholder=\"Enter academic year\" name=\"year\" value=\"\"/>\r\n");
      out.write("\r\n");
      out.write("subject:<input type=\"text\" placeholder=\"Enter name of subject\" name=\"subject\" value=\"\"/>\r\n");
      out.write("\r\n");
      out.write("check what all course includes:\r\n");
      out.write("<input type = \"checkbox\" name = \"cb1\" checked = \"checked\" /> Exam\r\n");
      out.write("\r\n");
      out.write("<input type = \"checkbox\" name = \"cb2\"  /> Practical\r\n");
      out.write("\r\n");
      out.write("<input type = \"checkbox\" name = \"cb3\" checked = \"checked\" /> Assessment\r\n");
      out.write("\r\n");
      out.write("<input type = \"checkbox\" name = \"cb4\" checked = \"checked\" /> Unit Tests\r\n");
      out.write("\r\n");
      out.write("select operation:\r\n");
      out.write("<select name=\"task\">\r\n");
      out.write("<option value=\"add\">add into database</option>\r\n");
      out.write("<option value=\"delete\">delete from database</option>\r\n");
      out.write("<option value=\"modify\">modify unit tests</option>\r\n");
      out.write("</select>\r\n");
      out.write("\r\n");
      out.write("number of unit tests:<input type=\"text\" placeholder=\"Enter number of Unit Tests\" name=\"ut\" value=\"\" id=\"unit\"/>\r\n");
      out.write("\r\n");
      out.write("number of questions:<input type=\"textbox\" placeholder=\"Enter number of questions in Unit Tests\"  name=\"ques\" id=\"ques\">\r\n");
      out.write("<input type=\"button\" value=\"get marks field\" onclick=\"assgn()\">\r\n");
      out.write("<div id=\"div3\">\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("values of:\r\n");
      out.write("L<input type=\"text\" placeholder=\"Enter value of l\" name=\"l\" value=\"\"/>\r\n");
      out.write("\r\n");
      out.write("M<input type=\"text\" placeholder=\"Enter value of m\" name=\"m\" value=\"\"/>\r\n");
      out.write("\r\n");
      out.write("H<input type=\"text\" placeholder=\"Enter value of h\" name=\"h\" value=\"\"/>\r\n");
      out.write("\r\n");
      out.write("<input type=\"hidden\" placeholder=\"Enter multiplying factor\" name=\"mf\" value=\"\"/>\r\n");
      out.write("\r\n");
      out.write("select operation:\r\n");
      out.write("<select name=\"atask\">\r\n");
      out.write("<option value=\"add\">add in database</option>\r\n");
      out.write("<option value=\"modify\">modify</option>\r\n");
      out.write("</select>\r\n");
      out.write("\r\n");
      out.write("<input type=\"submit\" value=\"submit\">\r\n");
      out.write("</pre>\r\n");
      out.write("</form>\r\n");
      out.write("<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>\r\n");
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
