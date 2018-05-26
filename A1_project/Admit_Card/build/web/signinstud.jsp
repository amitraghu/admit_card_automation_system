<%-- 
    Document   : signinstud
    Created on : Feb 20, 2018, 2:14:17 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.*"%>    

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body></body>
</html>
  
<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
        PreparedStatement ps=con.prepareStatement("SELECT S_ID,S_Password,First_Name FROM student WHERE S_ID=? AND S_Password=? ");
        ps.setString(1,request.getParameter("u"));
        ps.setString(2,request.getParameter("p"));                
        ResultSet rs=ps.executeQuery();  
        if(rs.next())  
        {  
            response.sendRedirect("student_home.jsp");
            session.setAttribute("name",rs.getString(3));
            session.setAttribute("id",rs.getString(1));
            session.setAttribute("session","TRUE");  
        }  
        else  
        {  
            request.setAttribute("error","*Invalid UserID or Password");
           RequestDispatcher rd=request.getRequestDispatcher("/sign_in.jsp");            
             rd.include(request, response);
            //response.sendRedirect("sign_in1.jsp"); 
        }
    }
    catch(Exception e){}
%>  
 

