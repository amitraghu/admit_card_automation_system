<%-- 
    Document   : cs_code
    Created on : Mar 28, 2018, 7:02:29 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adding subjects in course</title>
    </head>
    <body>
        
<%
String connectionURL = "jdbc:mysql://localhost:3306/admitdb";
 try {
     Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
     String d=(String)session.getAttribute("cid");
     String select1[] = request.getParameterValues("sid");
     int j;
     for (int i = 0; i < select1.length; i++) {
         out.println(select1[i]+d);
      j=st.executeUpdate("insert into course_subject (SUB_ID,C_ID) values ('"+select1[i]+"','"+d+"')");
     }
      response.sendRedirect("view_course.jsp");
       conn.close();
 } 
 catch (SQLException ex) {
    response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>