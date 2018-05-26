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
      String cid1=(String)request.getParameter("cid1");
      String cname1=(String)request.getParameter("cname1");
      String id=(String)session.getAttribute("cid");  
        int k=st.executeUpdate("update course set C_ID='"+cid1+"', C_Name='"+cname1+ "' where C_ID='"+id+"'");
       String select1[] = request.getParameterValues("sid");
     int j;
     for (int i = 0; i < select1.length; i++) {
      j=st.executeUpdate("insert into course_subject (SUB_ID,C_ID) values ('"+select1[i]+"','"+cid1+"')");
     }
        response.sendRedirect("view_course.jsp");
       
 } 
 catch (SQLException ex) {
    response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>
