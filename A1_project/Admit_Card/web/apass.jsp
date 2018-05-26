<%-- 
    Document   : apass
    Created on : Feb 27, 2018, 7:27:35 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Succesfully Changed</title>
    <style>
        div#nbody2
        {background-color: rgba(255,255,255,0.5);
            width:770px;
            height: 500px;
            margin-left:auto;
            margin-right:auto;
            padding: 5px;
        }
        td
        {
            padding:0 10px -1px 7px;
        }

    </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
       <br><br>
        <div id="nbody2" style="text-align:center"><br><br>
            <font color="blue"><h2>Password Changed Succesfully </h2></font>
            <br><a href="admin_home.jsp"><input type="button" value="Back" name="back" color="cyan" style="height:30px;width:150px"/></a>
    </body>
</html>