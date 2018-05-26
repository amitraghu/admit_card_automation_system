<%-- 
    Document   : edit_student
    Created on : Mar 14, 2018, 6:16:23 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%
String connectionURL = "jdbc:mysql://localhost:3306/admitdb";
 try {
     String si=(String)request.getParameter("si");
     String sn=(String)request.getParameter("sn");
     String midn=(String)request.getParameter("midn");
     String ln=(String)request.getParameter("ln");
     String fn=(String)request.getParameter("fn");
     String mn=(String)request.getParameter("mn");
     String dob=(String)request.getParameter("dob");
     String e=(String)request.getParameter("e");
     String mob=(String)request.getParameter("mob");
     String an=(String)request.getParameter("an");
     String en=(String)request.getParameter("en");
     String rn=(String)request.getParameter("rn");
     String pp=(String)request.getParameter("pp");
     String pid=(String)request.getParameter("pid");
     Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
      int i=st.executeUpdate("update student set S_ID='"+si+ "',First_Name='"+sn+ "',Mid_Name='"+midn+ "'"
              + ",Last_Name='"+ln+ "',F_Name='"+fn+ "',M_Name='"+mn+ "',DOB='"+dob+ "'"
                      + ",Email='"+e+ "',Mob_No='"+mob+ "',Aadhar_No='"+an+ "',Enroll_No='"+en+ "'"
                              + ",Roll_No='"+rn+ "',Percentage='"+pp+ "' where S_ID='"+pid+"'");
     response.sendRedirect("view_student.jsp");
       conn.close();
 } 
 catch (SQLException ex) {
     response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>
