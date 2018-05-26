package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class add_005fa_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>V_Officer Details</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-theme.min.css\">\n");
      out.write("         <script src=\"js/jquery-1.11.3.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("        div#nbody2\n");
      out.write("        {background-color: rgba(255,255,255,0.8);\n");
      out.write("            width:770px;\n");
      out.write("            height: 100%;\n");
      out.write("            margin-left:auto;\n");
      out.write("            margin-right:auto;\n");
      out.write("            padding: 5px;\n");
      out.write("        }\n");
      out.write("        td\n");
      out.write("        {\n");
      out.write("            padding:0 10px -1px 7px;\n");
      out.write("        }\n");
      out.write(".dropbtn {\n");
      out.write("         background: url(\"propic2.png\");\n");
      out.write("         height: 80px;\n");
      out.write("         width: 80px;\n");
      out.write("          color: white;\n");
      out.write("           padding: 16px;\n");
      out.write("            font-size: 16px;\n");
      out.write("         cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Dropdown button on hover & focus */\n");
      out.write(".dropbtn:hover, .dropbtn:focus {\n");
      out.write("    background: url(\"propic2.png\");\n");
      out.write("    height: 80px;\n");
      out.write("    width: 80px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The container <div> - needed to position the dropdown content */\n");
      out.write(".dropdown {\n");
      out.write("    position: relative;\n");
      out.write("    display: inline-block;    \n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Dropdown Content (Hidden by Default) */\n");
      out.write(".dropdown-content {\n");
      out.write("    display: none;\n");
      out.write("    position: absolute;\n");
      out.write("    background-color: #f1f1f1;\n");
      out.write("    min-width: 160px;\n");
      out.write("    box-shadow: 0px 10px 15px 0px rgba(0,0,0,0.2);\n");
      out.write("    z-index: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Links inside the dropdown */\n");
      out.write(".dropdown-content a {\n");
      out.write("    color: blue;\n");
      out.write("    padding: 10px 10px;\n");
      out.write("    text-decoration: buttontext;\n");
      out.write("    display: block;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Change color of dropdown links on hover */\n");
      out.write(".dropdown-content a:hover {background-color: #fdd}\n");
      out.write("\n");
      out.write("/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */\n");
      out.write(".show {display:block;}\n");
      out.write("</style>\n");
      out.write("<script>\n");
      out.write("    function myFunction() {\n");
      out.write("    document.getElementById(\"myDropdown\").classList.toggle(\"show\");\n");
      out.write("}\n");
      out.write("\n");
      out.write("// Close the dropdown menu if the user clicks outside of it\n");
      out.write("window.onclick = function(event) {\n");
      out.write("  if (!event.target.matches('.dropbtn')) {\n");
      out.write("\n");
      out.write("    var dropdowns = document.getElementsByClassName(\"dropdown-content\");\n");
      out.write("    var i;\n");
      out.write("    for (i = 0; i < dropdowns.length; i++) {\n");
      out.write("      var openDropdown = dropdowns[i];\n");
      out.write("      if (openDropdown.classList.contains('show')) {\n");
      out.write("        openDropdown.classList.remove('show');\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("function go(){\n");
      out.write("    window.location.replace(\"logout.jsp\",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');\n");
      out.write("    self.close();\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <div id=\"nbody2\">\n");
      out.write("            <center><br>\n");
      out.write("                <h2>Add Admin</h2><br>\n");
      out.write("            <form class=\"form-group\" name=\"f2\" action=\"add_admin.jsp\" method=\"post\">\n");
      out.write("                <table>\n");
      out.write("                <tr><td>A_ID  :</td><td><input class=\"form-control\" type=\"text\" name=\"vi\" style=\"height:40px;width:250px\"/></td></tr>\n");
      out.write("       <tr><td> A_Name :</td><td><input type=\"text\" class=\"form-control\" name=\"vn\" style=\"height:40px;width:250px\"/></td></tr>\n");
      out.write("            </table><br>\n");
      out.write("           ");
 request.setAttribute("vi","vi");
            request.setAttribute("vn","vn"); 
      out.write("\n");
      out.write("       &nbsp;<input type=submit class=\"btn btn-success\" value=Add style=\"height:30px;width:150px\">\n");
      out.write("        </form>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write(" </body>\n");
      out.write(" </html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
