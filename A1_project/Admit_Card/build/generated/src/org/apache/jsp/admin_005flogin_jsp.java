package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Admit Card Automation</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("             body{ background: url(\"back1.jpg\");}\n");
      out.write("        div#nheader\n");
      out.write("        {background-image:url(\"head2.jpg\");\n");
      out.write("            width:1300px;\n");
      out.write("            height: 100%;\n");
      out.write("            margin-left:auto;\n");
      out.write("            margin-right:auto;\n");
      out.write("            padding: 15px;\n");
      out.write("        }\n");
      out.write("        div#nbody\n");
      out.write("        {background-color: rgba(255,255,255,0.5);\n");
      out.write("            width:970px;\n");
      out.write("            height: 100%;\n");
      out.write("            margin-left:auto;\n");
      out.write("            margin-right:auto;\n");
      out.write("            padding: 5px;\n");
      out.write("        }\n");
      out.write("        td\n");
      out.write("        {\n");
      out.write("            padding:0 15px 0 15px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"nheader\" style=\"text-align:center\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td><img src=\"logo.png\"></td>\n");
      out.write("                    <td>                                           </td>\n");
      out.write("                    <td>                                           </td>\n");
      out.write("                    <td>                                           </td>\n");
      out.write("                    <td>                                           </td>\n");
      out.write("                    <td>                                           </td>\n");
      out.write("                    <td>                                           </td>\n");
      out.write("                    <td>                                           </td>\n");
      out.write("                    <td>                                           </td>\n");
      out.write("                    <td><h1><b>\n");
      out.write("                                <font face=\"stencil\" color=\"white\"> Admit Card Automation Portal</font>\n");
      out.write("                </b>\n");
      out.write("            </h1></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            </div>\n");
      out.write("        <br>\n");
      out.write("        <div id=\"nbody\" style=\"text-align:center\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td> <font face=\"times new roman\" color=\"black\" size=\"5\"> About Us </td>\n");
      out.write("                    <td> <font face=\"times new roman\" color=\"black\" size=\"5\"><a href=\"admin_login.jsp\">Admin</a></td>\n");
      out.write("                    <td><font face=\"times new roman\" color=\"black\" size=\"5\">V_Officer</td>\n");
      out.write("                    <td><font face=\"times new roman\" color=\"black\" size=\"5\"> <a href=\"form1.jsp\">Student</a></td>\n");
      out.write("                    <td><font face=\"times new roman\" color=\"black\" size=\"5\"> Guidelines</td>\n");
      out.write("                    <td><font face=\"times new roman\" color=\"black\" size=\"5\"> FAQs</td>\n");
      out.write("                    <td><font face=\"times new roman\" color=\"black\" size=\"5\"> Feedback</td>\n");
      out.write("                    <td><font face=\"times new roman\" color=\"black\" size=\"5\"> Contact Us</td>   \n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div><br><br>\n");
      out.write("        <div id=\"nbody\" style=\"text-align:center\">\n");
      out.write("            <p><h2>Admin Login</h2><br>\n");
      out.write("            <form>\n");
      out.write("                Username: <input type=\"text\" placeholder=\"Please enter username....\"<br><br><br>\n");
      out.write("                Password: <input type=\"password\" placeholder=\"Please enter password...\"<br><br><br>\n");
      out.write("                <input type=\"submit\" value=\"Login\">\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
