<%-- 
    Document   : edit_vofficer
    Created on : Mar 4, 2018, 6:02:06 PM
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
    
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
      Statement st = conn.createStatement();
      String sub_id1=(String)request.getParameter("sub_id1");
      String sub_name1=(String)request.getParameter("sub_name1");
      String type1=(String)request.getParameter("type1");
      String id=(String)session.getAttribute("sub_id");
       
        int i=st.executeUpdate("update subject set SUB_ID='"+sub_id1+"', SUB_NAME='"+sub_name1+ "',Type='"+type1+"' where SUB_ID='"+id+"'");
        response.sendRedirect("view_sub.jsp");
       
 } 
 catch (SQLException ex) {
     response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>
