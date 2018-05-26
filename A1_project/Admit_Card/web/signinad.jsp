<%-- 
    Document   : signinad
    Created on : Feb 24, 2018, 9:26:00 AM
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
    <body>
        
    </body>
</html>
<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
        PreparedStatement ps=con.prepareStatement("SELECT A_ID,A_Password,A_Name FROM admin WHERE A_ID=? AND A_Password=? ");
        ps.setString(1,request.getParameter("u"));
        ps.setString(2,request.getParameter("p"));                
        ResultSet rs=ps.executeQuery();  
        if(rs.next())  
        {  
            response.sendRedirect("admin_home.jsp");
            session.setAttribute("name",rs.getString(3));
            session.setAttribute("id",rs.getString(1));
            session.setAttribute("session","TRUE");  
        }  
        else  
        {  
             request.setAttribute("error","*Invalid UserID or Password");
            RequestDispatcher rd=request.getRequestDispatcher("/asign_in.jsp");            
             rd.include(request, response);
            //response.sendRedirect("asign_in1.jsp"); 
        }
    }
    catch(Exception e){}
%> 