<%-- 
    Document   : view_vofficer
    Created on : Feb 28, 2018, 7:22:30 PM
    Author     : Deepti
--%>

<%@page import="javax.jms.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Course Details</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        </head>
        <body>
             <jsp:include page="header.jsp"></jsp:include>
        <br>
        <div id="nbody2">
         <center>
             <%
                 String cid=(String)request.getParameter("cid");
                 String cname=(String)request.getParameter("cname");
                  session.setAttribute("cid",cid);
            try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
          
        %>
         <form name="f2" action="update_course.jsp" method="post">
             <br> <h2>Update Course</h2><br>
                C_ID  :<input type="text" name="cid1" style="height:30px;width:250px"align="right"value=<%=cid%>></td></tr><br><br>
       C_Name :<input type="text" name="cname1" style="height:30px;width:250px"value=<%=cname%>></td></tr>&nbsp;&nbsp;&nbsp;&nbsp;
        <h5>Select the required subjects</h5>
        <table>
    <%
    Statement stmt1=con.createStatement();
    ResultSet rs1=stmt1.executeQuery("SELECT * FROM subject where flag=1");
        while(rs1.next())
        {
        %>
        <tr>
            <td><input type="checkbox" style="height:30px;width:30px" name="sid" value="<%=rs1.getString(1) %>"></td>
            <td>&nbsp;&nbsp;<%=rs1.getString(2) %></td>
        </tr>
        <% }   
    %>
        </table><br><br>
            <br><br>
        <%  
          
            request.setAttribute("cid1","cid1");
            request.setAttribute("cname1","cname1");
         
              
                con.close();
                }
catch(Exception e)
                {
                        response.sendRedirect("error.jsp");
                }
                %>
               
     <div class="button1">
       <input type="submit" name="update" VALUE="Save Changes"  style="height:30px;width:150px;margin:auto;
  display:block;" />&nbsp;&nbsp;
     </div>  
    </form>
    </center>    
        </div>
 </body>  
</html>




