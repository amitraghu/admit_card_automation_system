package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class download_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 java.util.Date date=new java.util.Date();
        String enroll,rollno,email,name,fathername,mothername,afid,five1,five2,five3,cid,course; 
         String year="April-May, 2018";
    String f[]=new String[3];
     String dc[]=new String[6];
     String prac[]=new String[3];
     String DATE=date.toString();
    
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

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write(" \n");
      out.write("\n");
      out.write("<HTML>\n");
      out.write("    <head>\n");
      out.write("        <title>Download Admit Card</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\"  href=\"css/bootstrap.min.css\">\n");
      out.write("        <script src=\"js/jquery-1.11.3.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("#main    {\n");
      out.write("     background-color: #fff;\n");
      out.write("     width: 90%;\n");
      out.write("     margin: 30px auto;\n");
      out.write("     border: 3px solid black; /* width, style, colour */\n");
      out.write("     } \n");
      out.write("     .borderless td, .borderless th {\n");
      out.write("    border: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("<body id=\"main\" >\n");
      out.write("    ");
      out.write('\n');
      out.write(' ');

     String id=(String)session.getAttribute("id");
     int j=0,k=0,l=0;
     try
        {
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb","root","root");
            Statement st=conn.createStatement();
            Statement st1=conn.createStatement();
            Statement st2=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from student where S_ID='"+id+"' ");
            ResultSet rs1,rs4,rs2;
             while(rs.next()){
                enroll=rs.getString(11);
                rollno=rs.getString(12);
                email = rs.getString(8);
                name= rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
                fathername=rs.getString(5);
                mothername=rs.getString(6);
             }
             rs1=st.executeQuery("select * from admit_card where S_ID='"+id+"' ");
             while(rs1.next()){
                afid=rs1.getString(10);
                five1=rs1.getString(6);
                five2=rs1.getString(7);
                five3=rs1.getString(8);
                cid=rs1.getString(1);
                rs4=st2.executeQuery("select C_Name from course where C_ID='"+cid+"' ");
             while(rs4.next())
             {
                 course=rs4.getString(1);   
             }
             rs4=st2.executeQuery("select SUB_ID from course_subject where C_ID='"+cid+"' ");
             while(rs4.next())
             {
               rs2=st1.executeQuery("select * from subject where SUB_ID='"+(rs4.getString("SUB_ID") )+"' and Type='F' ");
               while(rs2.next())
               {
                   f[j]=rs2.getString(2);
                   j++;
               }
               rs2=st1.executeQuery("select * from subject where SUB_ID='"+(rs4.getString("SUB_ID") )+"' and Type='D' ");
               while(rs2.next())
               {
                   dc[k]=rs2.getString(2);
                   k++;
               }
                rs2=st1.executeQuery("select * from subject where SUB_ID='"+(rs4.getString("SUB_ID") )+"' and Type='P' ");
               while(rs2.next())
               {
                   prac[l]=rs2.getString(2);
                   l++;
               }
             }
             }
   
        }
     catch(Exception e){
         
        }

      out.write("\n");
      out.write("  \n");
      out.write("  <table style=\"width:100%\">\n");
      out.write("    <tr>\n");
      out.write("        <td rowspan=\"700\"><center>ROLL NO.&nbsp;&nbsp;&nbsp;&nbsp;<b><u>");
      out.print( rollno );
      out.write("</u></b><br><IMG SRC=\"blogo.gif\"/></center></td>\n");
      out.write("  <td rowspan=\"700\"> <center><h1>BANASTHALI VIDYAPITH<br><h5>(University Affiliated Organization)</h5><br><u><b><h4>ADMIT-CARD</h4</b></u><br><center>(All Information filled by student) </center><br><center>Class/Subject&nbsp;&nbsp;&nbsp;<u>");
      out.print( course );
      out.write("</u></center></h1></center></td>\n");
      out.write("            <td rowspan=\"700\">\n");
      out.write("                <object  style=\"color:red\" align=\"right\" ><h3>No:");
      out.print( afid );
      out.write("</h3></object><br><br><br>\n");
      out.write("                <object  align=\"right\"> No.:");
      out.print( enroll );
      out.write("</object>\n");
      out.write("            </td>\n");
      out.write("    </tr>\n");
      out.write(" </table>\n");
      out.write("<center>\n");
      out.write("    <font face=\"Modern 20\">\n");
      out.write(" <table class=\"table\" style=\"width:100%\">           \n");
      out.write("     <tr>     \n");
      out.write("     <td><div>&nbsp;&nbsp;&nbsp;Ms/Mrs &nbsp;&nbsp;&nbsp;<b><u> ");
      out.print( name);
      out.write("</u></b></div><br>\n");
      out.write("            <div>&nbsp;&nbsp;&nbsp;D/o Mr &nbsp;&nbsp;&nbsp;<b><u> ");
      out.print( fathername);
      out.write("</u></b></div><br>\n");
      out.write("            <div>&nbsp;&nbsp;&nbsp;D/o Mrs &nbsp;&nbsp;&nbsp;<b><u> ");
      out.print( mothername);
      out.write("</u></div></b><br>\n");
      out.write("            <div> is allowed to appear in following Paper which will be conducted in the ");
      out.print(year);
      out.write(" Exam.</div>\n");
      out.write(" </td>\n");
      out.write("        <td rowspan=\"100%\">&nbsp;&nbsp;&nbsp;&nbsp;<IMG SRC=\"logo.png\"/><td>\n");
      out.write("    </tr> \n");
      out.write(" </table>\n");
      out.write("            </center>\n");
      out.write("<br>\n");
      out.write("<div align=\"center\">\n");
      out.write("<table class=\"table\" align=\"center\">\n");
      out.write("    <tr>\n");
      out.write("        <td><B><center>COURSES FOR UNDER GRADUATE EXAM</center></B></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("            <td>\n");
      out.write("                <table class=\"table\" style=\"width:90%\">\n");
      out.write("                    <col width=\"30%\">\n");
      out.write("                    <tr>    \n");
      out.write("                            <td><B>(1)FOUNDATION COURSES</B></td>\n");
      out.write("                            <td><B>(2)DISCIPLINARY COURSES</B></td>\n");
      out.write("                    </tr>\n");
      out.write("                <tr>     \n");
      out.write("                <td><u><B></B></u></td>\n");
      out.write("                            <td><B></B></td><br>\n");
      out.write("                            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                <td><u>(1) ");
      out.print( f[0] );
      out.write(" </u></td>\n");
      out.write("                            <td><u>(1) ");
      out.print( dc[0] );
      out.write("</u></td>\n");
      out.write("                            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                <td><u>(2) ");
      out.print( f[1] );
      out.write("</u></td>\n");
      out.write("                            <td><u>(2) ");
      out.print( dc[1] );
      out.write("</u></td>\n");
      out.write("                            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                <td><u>(3)");
      out.print( f[2] );
      out.write("</u></td>\n");
      out.write("                            <td><u>(3)");
      out.print( dc[2] );
      out.write("</u></td>\n");
      out.write("                            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                            <td><B></B></td>\n");
      out.write("                            <td><u>(4)");
      out.print( dc[3] );
      out.write("</u></td>\n");
      out.write("                            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                            <td><B></B></td>\n");
      out.write("                            <td><u>(5)");
      out.print( dc[4] );
      out.write("</u></td>\n");
      out.write("                            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                <td><b>(3) FIVE FOLD ACTIVITIES</b> </td>\n");
      out.write("                <td><B>(4) PRACTICAL PAPERS</B></td>            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                <td><u><B></B></u></td>\n");
      out.write("                            <td><B></B></td>\n");
      out.write("                            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                            <td><u>(1) ");
      out.print( five1 );
      out.write("</u></td>\n");
      out.write("                            <td><u>(1)");
      out.print( prac[0] );
      out.write("</u></td>\n");
      out.write("                            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                            <td><u>(2)");
      out.print( five2 );
      out.write("</u></td>\n");
      out.write("                            <td><u>(2)");
      out.print( prac[1] );
      out.write("</u></td>\n");
      out.write("                            \n");
      out.write("                </tr>\n");
      out.write("                <tr>     \n");
      out.write("                           <td><u>(3)");
      out.print( five3 );
      out.write("</u></td>\n");
      out.write("                            <td><u>(3)");
      out.print( prac[2] );
      out.write("</u></td>\n");
      out.write("                            \n");
      out.write("                </tr>       \n");
      out.write("            </table>\n");
      out.write("        </td>   \n");
      out.write("    </tr>\n");
      out.write("</table> \n");
      out.write("</div>\n");
      out.write("    <P> DATE:<U> ");
      out.print(DATE);
      out.write("  </U></P>\n");
      out.write("    <p align=\"right\">Department Officer<br>Banasthali Vidyapith </p>\n");
      out.write("    <div align=\"center\"><button type=\"submit\" value=\"Download PDF\" name=\"download\" class=\"btn btn-default\" onclick=\"window.print()\">Download PDF</button></div> \n");
      out.write("    <br>\n");
      out.write("<center><h3>INSTRUCTIONS</h3></center><br>\n");
      out.write("    <table class=\"table table-borderless\">\n");
      out.write("        <tr><td>1) Canditate cannot leave the examination Hall without the permission of the invigilator.Candidate has  to follow the instructions of the invilagaton.</td></tr>\n");
      out.write("        <tr><td>2) If the Candidate changes the ink in the answer sheet she has to inform the inviligllator about the same and get the answer sheet signed</td></tr>\n");
      out.write("        <tr><td>3) A Candidate can leave the Examination Hall only after submitting the answer sheet to the invigilator.</td></tr>\n");
      out.write("        <tr><td>4) Any sort of illegal means (Books,Chits,Mobile phones,etc) is strictly prohibited in the examination hall</td></tr>\n");
      out.write("        <tr><td>5) If any candidate is caught cheating ,strict actions would be taken against her.</td></tr>\n");
      out.write("        <tr><tD>6) If student has any complaint regarding the question paper,she has to file a grievance on the same day in examination department.</tD></tr>\n");
      out.write("    </table>\n");
      out.write("</body>\n");
      out.write("</HTML>\n");
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
