<%-- 
    Document   : add_subdata1
    Created on : Mar 28, 2018, 7:58:03 PM
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
     String d=(String)request.getParameter("sid");
     String p=(String)request.getParameter("sn");
     String e=(String)request.getParameter("stype");
     
     Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
      int i=st.executeUpdate("insert into subject(SUB_ID,SUB_NAME,Type)  values ('"+d+"','"+p+"','"+e+"')");
      response.sendRedirect("course_subject.jsp");
       conn.close();
 } 
 catch (SQLException ex) {
     response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>
