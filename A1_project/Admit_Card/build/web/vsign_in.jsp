<%-- 
    Document   : vsign_in
    Created on : Feb 26, 2018, 6:16:37 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.*"%>  
<!DOCTYPE html>
<html>
    <head>
        <title>Sign In</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
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
        <div id="nbody2" style="text-align:center">
           
 <a href="login.jsp" style="float: left" title="Back"><img src="back_arrow.jpg"  /></a> 
            <center><form name="form1" method="post" action="signinv.jsp" class="form-group form-control-static form-inline    ">
                     <p><h2><b><font face="calibri">VERIFICATION OFFICER LOGIN</font></b></h2> </p>
                <table>
                    <tr>
                        <td><img src="login3.jpg" class="  img-rounded item "></td>
                        <td><input type="text" placeholder="    UserID" name="u" style="height:45px;width:250px" class="form-control   "></td>
                    </tr>
                    <tr>
                        <td>
                            <img src="login2.jpg" class="  img-rounded item ">
                        </td>
                        <td><input type="password" placeholder="    Password" name="p" style="height:45px;width:250px" class="form-control   "></td>
                    </tr>
                </table>
                      <%
                 String login_msg=(String)request.getAttribute("error");  
                 if(login_msg!=null)
                out.println("<font color=red size=4px>"+login_msg+"</font>");
                  %><br>
               <input type="submit"  value="LOGIN" class="btn btn-primary " />&nbsp;&nbsp;
                    
                    <input type="reset"  value="RESET" class="btn btn-primary  " />&nbsp;&nbsp;
                    
            </form></center>
        </div>
        </form>
    </body>
</html>
