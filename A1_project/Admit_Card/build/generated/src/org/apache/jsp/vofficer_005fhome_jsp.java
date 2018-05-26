package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class vofficer_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-theme.min.css\">\n");
      out.write("        <title>Log In</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("        div#nbody3\n");
      out.write("        {background-color: rgba(255,255,255,0.7);\n");
      out.write("            width:820px;\n");
      out.write("            height: 500px;\n");
      out.write("            margin-left:auto;\n");
      out.write("            margin-right:auto;\n");
      out.write("            padding: 5px;\n");
      out.write("        }\n");
      out.write("    .dropbtn {\n");
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
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <div id=\"nbody3\"><br>\n");
      out.write("            <table>\n");
      out.write("                <tr height='80px'>\n");
      out.write("                    <td>\n");
      out.write("                        <td width=\"700px\"><h2>&nbsp; Welcome ");
out.print(session.getAttribute("name"));
      out.write(" !!</h2> </td>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <td width=\"70px\">\n");
      out.write("                                    <div class=\"dropdown\">\n");
      out.write("                    <button onclick=\"myFunction()\" class=\"dropbtn\"></button>\n");
      out.write("            <div id=\"myDropdown\" class=\"dropdown-content\">\n");
      out.write("                <font size=\"2\"><a href=\"vchangePassword.jsp\">Change Password</a>\n");
      out.write("                <a href=\"javascript:go()\">Logout</a></font>\n");
      out.write("            </div>\n");
      out.write("            </div></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        <br><br>\n");
      out.write("        <center>\n");
      out.write("             ");

                String a,sid,v;
                char ch1;
                int flag=0,temp;
            try{
           Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
            Statement st=con.createStatement();
             Statement st1=con.createStatement();
            ResultSet rs=st.executeQuery("select * FROM student ");
            ResultSet rs1;
            
           
         
      out.write("\n");
      out.write("        <center>\n");
      out.write("            <h2>Students' Details</h2>\n");
      out.write("        <table cellpadding=\"15\" border=\"1\" style=\"background-color: lightgray\" class=\"table table-striped table-hover table-responsive table-bordered table-condensed \">\n");
      out.write("            <tr>\n");
      out.write("                <th>S_ID</th>\n");
      out.write("                <th>First Name</th>\n");
      out.write("                <th>Last Name</th>\n");
      out.write("               \n");
      out.write("                <th>DOB</th>\n");
      out.write("                <th>Enroll_No.</th>\n");
      out.write("               \n");
      out.write("                <th>Status</th>\n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("            ");
   while(rs.next())
            {
                sid=rs.getString(1);
             
                rs1=st1.executeQuery("select * from admit_card where S_ID='"+sid+"'");
             
      out.write("\n");
      out.write("             <tr>\n");
      out.write("                 <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString(11));
      out.write("</td>\n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("                  ");

                    
                    
                     a=rs.getString(15);
                   
                     char ch=a.charAt(0);
                 
                     if(ch=='N'||ch=='n')
                     {
                      
      out.write("\n");
      out.write("                      <td><button type=button class=\" btn btn-primary btn-lg btn btn-default btn-block disabled\">Not Applied</button></td>\n");
      out.write("                    ");
 } 
                    else
                    {
                      while(rs1.next())
                      {
                     v=rs1.getString(4);
                      
                  
                      ch1=v.charAt(0);
                    
                    
                  if((ch=='y'||ch=='Y')&&(ch1=='y'||ch1=='Y') )
                     {
                      
                       
      out.write("\n");
      out.write("                       <td><button type=\"button\" class=\"btn-lg btn btn-success btn btn-default btn-block  disabled\" > Verified</button></td>\n");
      out.write("                       \n");
      out.write("                      ");
 }
                     else if((ch=='y'||ch=='Y')&&(ch1=='n'||ch1=='N'))
                     {
                     
                        
      out.write("\n");
      out.write("                        <td><a href=\"verify_form.jsp?id=");
      out.print(rs.getString(1));
      out.write("\"><button type=\"button\" class=\"btn btn-primary  btn btn-primary btn-lg btn btn-danger btn btn-default btn-block active\" >Verify</button></a></td>\n");
      out.write("                     ");

                    }
                
                  
      out.write("\n");
      out.write("             </tr>\n");
      out.write("            ");
      }   }
            }
                
                st.close();
                con.close();
                }
                catch(Exception e)
                {
                        response.sendRedirect("error.jsp");
                          
                }
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </center>    \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
