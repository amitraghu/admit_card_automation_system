<%-- 
    Document   : add_admin
    Created on : Mar 26, 2018, 5:41:50 PM
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
     String d=(String)request.getParameter("ai");
     String p=(String)request.getParameter("an");
     String pa=(String)request.getParameter("ap");
     Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
     int i=st.executeUpdate("insert into admin(A_ID,A_Name,A_Password) values('"+d+"','"+p+"','"+pa+"')");
      response.sendRedirect("view_admin.jsp");
       conn.close();
 } 
 catch (SQLException ex) {
     out.println("error");
     //response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>

