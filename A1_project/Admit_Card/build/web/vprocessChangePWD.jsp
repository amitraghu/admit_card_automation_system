<%-- 
    Document   : vprocessChangePWD
    Created on : Feb 27, 2018, 7:24:24 PM
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
ResultSet rs = st.executeQuery("select * from v_officer where V_Password= '"+ OldPassword + "'");
    if (rs.next()) 
    { 
            pass = rs.getString(3);
    } 
    if(Newpass.equals(conpass))
    {
            if (pass.equals(OldPassword)) 
            {
                st = con.createStatement();
                int i = st.executeUpdate("update v_officer set V_Password='"+ Newpass + "' where V_ID='"+id+"'");
                response.sendRedirect("vpass.jsp");
                st.close();
            con.close();
            } 
            else {
                response.sendRedirect("vpass1.jsp");
             }
    }
    else {
        response.sendRedirect("vpass1.jsp");
    }
}
catch (Exception e) {
 response.sendRedirect("error.jsp");
}
%>