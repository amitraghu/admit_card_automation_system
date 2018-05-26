<%-- 
    Document   : sign_up
    Created on : Feb 17, 2018, 9:30:17 AM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
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
            padding:0px 10px -1px 7px;
        }
</style>
<script type="text/javascript" src="stureg.js">
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <br>
        </div><br><br>
        <div id="nbody2" style="text-align:center">
            <center><form action="reg.jsp" name="f1" method="post" class="form-group" onsubmit="return validateform();" >
 <h2>STUDENT REGISTRATION</h2>
  <%
                 String login_msg=(String)request.getAttribute("error");  
                 if(login_msg!=null)
                out.println("<font color=red size=4px>"+login_msg+"</font>");
                  %>
<table align="center">  
    <tr><td><h3>Name</td></tr>
<tr>
    <td><input type="text" class="form-control" placeholder="  First Name" name="fname" style="height:30px;width:200px"> </td><td></td>&nbsp;&nbsp;
    <td><input type="text" class="form-control" placeholder="  Middle Name" name="m" style="height:30px;width:200px"> </td><td></td>&nbsp;&nbsp;
    <td><input type="text" class="form-control" placeholder="  Last Name" name="l" style="height:30px;width:200px"> </td><td></td>
</tr>
<tr><td><h3>Personal Details</td></tr>
<tr>    
    <td>   <input type="text" class="form-control" placeholder="  Enrollment No." name="eno" style="height:30px;width:200px"></td><td></td>&nbsp;&nbsp;
     <td>   <input type="tel" class="form-control" placeholder="  Aadhar No." name="ano" style="height:30px;width:200px"></td><td></td>
</tr>
<tr><td><h3>Student ID</td></tr>
<tr>
    <td> <input type="text" class="form-control" placeholder="  ID" name="id" style="height:30px;width:200px"></td><td></td>
</tr>
<tr><td><h3>Security Question</td></tr>
<tr>
    <td><SELECT NAME="question" class="form-control" style="height:35px;width:200px" > 
            <option >--Select--</option>
            <option>What is your nick name?</option>
            <option>What is your pet name?</option>
            <option>What is your favourite colour?</option>
  </SELECT></td><td></td>
  <td><input type="text" class="form-control" placeholder="  Answer" style="height:30px;width:200px" name="answer"></td>
</tr>   
<tr><td><h3> Password</h3></td></tr>
<tr>
    <td> <input type="password" class="form-control" placeholder="  Password" name="password" style="height:30px;width:200px"></td>
</tr>

<tr><td><h3> Confirm Password</h3></td></tr>
<tr>
    <td> <input type="password" class="form-control" placeholder="  Password" name="password2" style="height:30px;width:200px"></td>
</tr>
     </table>
 <BR>
<input type="submit" class="btn btn-primary" value ="Submit" style="height:30px;width:80px">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" class="btn btn-primary" name="back"  value="   Back   " onClick="window.location='sign_in.jsp'" style="height:30px;width:80px">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" class="btn btn-primary"  value="   Reset   " style="height:30px;width:80px">

  </form></center>
        </div>
    </body>
</html>
