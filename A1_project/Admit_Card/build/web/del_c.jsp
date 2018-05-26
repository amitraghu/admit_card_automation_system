<%-- 
    Document   : del_v
    Created on : Mar 1, 2018, 2:46:12 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletion of course</title>
    </head>
    <body>
        
<%
String connectionURL = "jdbc:mysql://localhost:3306/admitdb";
 try 
 {
    String cid=request.getParameter("cid");
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
     st.executeUpdate("update course set Flag=0 where C_ID='"+cid+"' ");
     st.executeUpdate("update course_subject set flag=0 where C_ID='"+cid+"' ");
     response.sendRedirect("view_course.jsp");
       conn.close();
 } 
 catch (SQLException ex) {
     response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>
