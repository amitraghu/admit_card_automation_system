<%-- 
    Document   : add_student
    Created on : Mar 3, 2018, 5:12:45 PM
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
     String a=(String)request.getParameter("si");
     String b=(String)request.getParameter("sn");
     String c=(String)request.getParameter("midn");
     String d=(String)request.getParameter("ln");
     String e=(String)request.getParameter("fn");
     String f=(String)request.getParameter("mn");
     String g=(String)request.getParameter("dob");
     String h=(String)request.getParameter("e");
     String j=(String)request.getParameter("mob");
     String k=(String)request.getParameter("an");
     String l=(String)request.getParameter("en");
     String m=(String)request.getParameter("rn");
     String n=(String)request.getParameter("pp");
     Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
      int i=st.executeUpdate("insert into student (S_ID,First_Name,Mid_Name,Last_Name,F_Name,"
              + "M_Name,DOB,Email,Mob_No,Aadhar_No,Enroll_No,Roll_No,Percentage) "
              + "values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+j+"',"
                      + "'"+k+"','"+l+"','"+m+"','"+n+"')");
      response.sendRedirect("view_student.jsp");
       conn.close();
 } 
 catch (SQLException ex) {
     response.sendRedirect("error.jsp");
 }
%>
    </body>
</html>
