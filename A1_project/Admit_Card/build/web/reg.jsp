<%-- 
    Document   : reg
    Created on : Feb 24, 2018, 6:54:35 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%> 
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

String pass=request.getParameter("password");
String id=request.getParameter("id");
String n=request.getParameter("fname");
String eno=request.getParameter("eno");
String ano=request.getParameter("ano");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
    PreparedStatement st=conn.prepareStatement("SELECT * FROM student WHERE S_ID=? and First_Name=? and Aadhar_No=?"
            + "and Enroll_No=?");
    st.setString(1,id);
    st.setString(2,n);
    st.setString(3,ano);
    st.setString(4,eno);
    out.println(id+n);
    ResultSet rs=st.executeQuery();
    if(rs.next())
        {
            if(rs.getString(13)!=null)
            {
            request.setAttribute("error","You are already registered!!!");
           RequestDispatcher rd=request.getRequestDispatcher("/sign_up.jsp");            
             rd.include(request, response);
            
            
            }    
            else
            {
                Statement s=conn.createStatement();
                int j =s.executeUpdate("update student set S_password='"+pass+"' where S_ID='"+id+"'" );
                session.setAttribute("id",rs.getString(1));
                session.setAttribute("name",rs.getString(2));
                session.setAttribute("session","TRUE"); 
                response.sendRedirect("student_home.jsp");
            }
        }
        else
        {
            request.setAttribute("error","You are not allowed to register!!!");
            RequestDispatcher rd=request.getRequestDispatcher("/sign_up.jsp");            
             rd.include(request, response);
            }    
}
catch(Exception e)
{
     response.sendRedirect("error.jsp");}
%>