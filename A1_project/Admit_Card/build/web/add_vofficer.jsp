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
     String d=(String)request.getParameter("vi");
     String p=(String)request.getParameter("vn");
     String pa=(String)request.getParameter("vp");
     Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
      int i=st.executeUpdate("insert into v_officer (V_ID,V_Name,V_Password) values ('"+d+"','"+ p+"','"+ pa+"')");
      response.sendRedirect("view_vofficer.jsp");
       conn.close();
 } 
 catch (SQLException ex) {
     response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>
