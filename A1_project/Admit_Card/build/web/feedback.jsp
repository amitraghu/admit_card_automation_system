<%-- 
    Document   : feedback
    Created on : Feb 26, 2018, 7:43:58 PM
    Author     : Deepti
--%>


<%@page import="java.util.Vector"%>
<%@page import="java.sql.*"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01                   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id=(String) session.getAttribute("id");
String desc= request.getParameter("desc"); 
try{
Class.forName("com.mysql.jdbc.Driver"); 
Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb","root","root");
Statement st=conn.createStatement();
st.executeUpdate("insert into feedback(S_ID,Description) values('"+id+"','"+desc+"')");
response.sendRedirect("student_home.jsp");
}
catch(Exception e){
response.sendRedirect("error.jsp");
}
%>
</body>
</html>