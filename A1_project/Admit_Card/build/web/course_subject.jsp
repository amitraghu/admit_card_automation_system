<%-- 
    Document   : course_subject
    Created on : Mar 28, 2018, 6:24:03 PM
    Author     : Deepti
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        div#nbody2
        {background-color: rgba(255,255,255,0.5);
            width:770px;
            height: 100%;
            margin-left:auto;
            margin-right:auto;
            padding: 5px;
        }
        </style>
    <body>
        <jsp:include page="header.jsp"></jsp:include><br>
    <div id="nbody2"><br>
    <%
        String connectionURL = "jdbc:mysql://localhost:3306/admitdb";
     try {
     //String d=(String)request.getParameter("cid");
     String p=(String)request.getParameter("cn");
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection(connectionURL, "root", "root");
     Statement st = conn.createStatement();
     ResultSet rs;
%>
<center>
    <form name="f3" action="cs_code.jsp" method="post">
        <h2><b>Add subjects to Course</b></h2>
        <h5>Select the required subjects</h5>
        <table>
    <%
    Statement stmt1=conn.createStatement();
    ResultSet rs1=stmt1.executeQuery("SELECT * FROM subject where flag=1");
        while(rs1.next())
        {
        %>
        <tr>
            <td><input type="checkbox" style="height:30px;width:30px" name="sid" value="<%=rs1.getString(1) %>"></td>
            <td>&nbsp;&nbsp;<%=rs1.getString(2) %></td>
        </tr>
        <% }   
            //request.setAttribute("cid","d");
    %>
        </table><br><br>
    <a href="add_sub1.jsp"><button type="button" class="btn  btn btn-primary" >Add new subject</button></a>
    <input type="submit" value ="Add" class="btn btn-primary" style="height:30px;width:150px">
    </form></center>
    </div>
    <%
}
catch(SQLException ex)
{ 
out.println(ex);
}
%>
</body>
</html>
