<%-- 
    Document   : verified
    Created on : Mar 27, 2018, Mar 27, 2018 5:14:29 PM
    Author     : Admin
--%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <h1>hello</h1>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>verification Page</title>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
            try
            {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
             Statement stmt=con.createStatement();
             int i=stmt.executeUpdate("update admit_card set Verified='Y' where S_ID='"+id+"'");
             if(i>0)
             {
                response.sendRedirect("vofficer_home.jsp");
             }
             else
             {
                out.println("cannot be verified");
             }
             
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
             
        %> 
    </body>
</html>
