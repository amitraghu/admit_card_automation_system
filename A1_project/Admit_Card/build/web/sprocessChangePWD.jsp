<%-- 
    Document   : sprocessChangePWD
    Created on : Feb 27, 2018, 7:24:10 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");
String id=(String)session.getAttribute("id");

Connection con = null;
Statement st = null;
String pass = "";
int d = 0;
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from admin where A_Password= '"+ OldPassword + "'");
    if (rs.next()) 
    { 
            pass = rs.getString(3);
    } 
    if(Newpass.equals(conpass))
    {
            if (pass.equals(OldPassword)) 
            {
                st = con.createStatement();
                int i = st.executeUpdate("update admin set A_Password='"+ Newpass + "' where A_ID='"+id+"'");
                response.sendRedirect("apass.jsp");
                st.close();
            con.close();
            } 
            else {
                response.sendRedirect("apass1.jsp");
             }
    }
    else {
        response.sendRedirect("apass1.jsp");
    }
}
catch (Exception e) {
 response.sendRedirect("error.jsp");
}
%>
