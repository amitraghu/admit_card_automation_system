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
     String sub_id=request.getParameter("sub_id");
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
     st.executeUpdate("update subject set Flag=0  where SUB_ID='"+sub_id+"' ");
     response.sendRedirect("view_sub.jsp");
       conn.close();
 } 
 catch (SQLException ex) {
     response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>
