<%-- 
    Document   : admit1
    Created on : Mar 20, 2018, 6:14:28 PM
    Author     : Deepti
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admit Card</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            function openparent(){
                window.opener.location.reload(true);
                window.opener.location.href='admit1.jsp?cl1='+document.getElementById("cl1").value;
                window.close();   
            }
        </script>
        <style>

    div#nbody2
        {background-color: rgba(255,255,255,0.5);
            width:250px;
            height: 190px;
            margin-left:auto;
            margin-right:auto;
            padding: 5px;
        }
        div#nb
        {
            width:180px;
            height:80px; 
        }
        </style>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
        <br>
        <div id="nbody2" align="center">
        <form class="form-group">
                        <br><br>
                        <div id="nb">
                            <b>CLASS :</b><select name="cl1" id="cl1" value=class1 class="form-control">
                 <option value="">    --select--  </option>
                        <% 
                            try
                            {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
                            String s3=("select C_Name from course where flag=1");
                         Statement stmt4=conn.createStatement();
                         ResultSet rs4=stmt4.executeQuery(s3);
          
            while(rs4.next())
            { %>
           <option><%=rs4.getString("C_Name")%></option>
            <% } %>
                        </select><br>  
                        <ul class="list-inline pull-left">
                            <li><button type="submit" class="btn btn-success" onclick="javascript:openparent(this);">Submit</button></li>
                        </ul>
        <%
           request.setAttribute("cl1","cl1");
        }
            catch(Exception e){
                response.sendRedirect("error.jsp");
              }
            %>
            </div>
        </form>
        </div>
    </body>
</html>
