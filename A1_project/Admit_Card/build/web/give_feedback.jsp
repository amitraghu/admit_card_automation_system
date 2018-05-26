<%-- 
    Document   : give_feedback
    Created on : Feb 26, 2018, 7:24:12 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <title>Feedback Form</title>
        <style>
        div#nbody2
        {background-color: rgba(255,255,255,0.5);
            width:770px;
            height: 100%;
            margin-left:auto;
            margin-right:auto;
            padding: 5px;
        }
        td
        {
            padding:0 10px -1px 7px;
        }
 a {
    text-decoration: none;
    display: inline-block;
    
}

a:hover {
    color: white;
}
</style>
<script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <br>
        <br><br>
        <div id="nbody2" style="text-align:center" class="form-group">
            <a href="student_home.jsp" style="float: left" title="Back"><img src="back_arrow.jpg"  /></a>
            <center><form action="feedback.jsp" name="f2" method="post">
                    <h2><b>STUDENT FEEDBACK</b></h2>
<table align="center">  
<tr>
    <td><label>Student ID</label>
    </td></tr>
<tr>   <td><input type="text" name="sid" class="form-control" value=<%=session.getAttribute("id")%> disabled style="height:30px;width:300px"></td>
</tr><tr></tr><tr></tr><tr></tr><tr></tr>
<br>
<tr>
    <td> <label>Description</label></td></tr>
<tr>   <td><textarea class="form-control" rows="6" columns="60" name="desc"></textarea>
    </td>
</tr>
     </table>
 <BR>
<input type=submit value =Submit class="btn btn-success" style="height:40px;width:100px">
<% request.setAttribute("sid","sid"); %>
 </form></center>
        
        </div>
    </body>
</html>
