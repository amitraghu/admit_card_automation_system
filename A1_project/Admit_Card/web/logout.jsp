<%-- 
    Document   : logout
    Created on : Feb 25, 2018, 7:53:17 PM
    Author     : Deepti
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
<% response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
    response.setHeader("Expires","-1");
    session.invalidate(); 
    response.sendRedirect("login.jsp");
%>
</body>
</html>
