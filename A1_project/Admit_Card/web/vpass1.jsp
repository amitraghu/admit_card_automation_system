<%-- 
    Document   : vpass1
    Created on : Feb 27, 2018, 7:29:02 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Try Again</title>
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
        <br>
        <br><br>
        <div id="nbody2" style="text-align:center"><br><br>
            <font color="red"><h2>Unsuccesful Changes.<br>Check your password again.<br> Please try again. </h2></font>
            <br><a href="vofficer_home.jsp"><input type="button" value="Back" name="back" style="height:30px;width:150px"/></a>
    </body>
</html>
