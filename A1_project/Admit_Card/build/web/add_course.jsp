<%-- 
    Document   : add_vofficer
    Created on : Feb 28, 2018, 7:39:26 PM
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
     String d=(String)request.getParameter("cid");
     String p=(String)request.getParameter("cn");
     Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
      int i=st.executeUpdate("insert into course (C_Name,C_ID) values ('"+p+"','"+ d+"')");
      session.setAttribute("cid",d);
      response.sendRedirect("course_subject.jsp");
       conn.close();
 } 
 catch (SQLException ex) {
     response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>
