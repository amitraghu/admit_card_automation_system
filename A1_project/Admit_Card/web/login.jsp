<%-- 
    Document   : login
    Created on : Feb 16, 2018, 7:10:45 PM
    Author     : Deepti
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Log In</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
        div#nbody3
        {background-color: rgba(255,255,255,0.8);
            width:770px;
            height: 350px;
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
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <br>
        <br><br>
        <div id="nbody3" style="text-align:center"><br>
             <a href="index.html" style="float: left" title="Back"><img src="back_arrow.jpg"  /></a>
            <h1>Login</h1><br>
            <a href="sign_in.jsp"> <img src="sportal.jpg"> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="vsign_in.jsp"> <img src="vportal.png"> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="asign_in.jsp"> <img src="aportal.png"> </a>
            <br>
            <h4>Student Portal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Verification Officer Portal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Admin Portal</h4>
        </div>
    </body>
</html>
