<%-- 
    Document   : view_feedback
    Created on : Feb 27, 2018, 5:02:02 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Feedback</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        div#nbody2
        {background-color: rgba(255,255,255,0.5);
            width:770px;
            height: 500px;
            margin-left:auto;
            margin-right:auto;
            padding: 5px;
        }
        div#n3
        {
            width:470px;
            height: 100%;
        }
        td
        {
            padding:0 10px -1px 7px;
        }

    </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <br>
        <div id="nbody2" style="text-align:center">
        <%
            try{
           Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from feedback");
        %>
        <center>
            <h2>Students' Feedback</h2><br>
            <div id='n3'>
        <table class="table table-bordered table-striped">
            <tr>
                <th>S_ID</th>
                <th>Description</th>
            </tr>
            <%
                while(rs.next()){
             %>
             <tr>
                 <% if(rs.getString(1)!=null) %>
                 <td><%=rs.getString(1)%></td>
                 <% if(rs.getString(2)!=null) %>
                 <td><%=rs.getString(2)%></td>
             </tr>
            <%  
                    }%>
            <%
                rs.close();
                st.close();
                con.close();
                }
                catch(Exception e)
                {
                        response.sendRedirect("error.jsp");
                }
            %>
        </table><br>
        <a href="admin_home.jsp"><input type="button" value="Back" name="back" class='btn btn-primary' style="height:30px;width:150px"/></a>
        </div>
        </center>
        </div>
    </body>
</html>
