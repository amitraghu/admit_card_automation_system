<%-- 
    Document   : schangePassword
    Created on : Feb 27, 2018, 7:21:53 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Change password</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<script language="javascript">
function fncSubmit()
{

if(document.schangePassword.OldPassword.value == "")
{
alert('Please input old password');
document.schangePassword.OldPassword.focus();
return false;
} 

if(document.schangePassword.newpassword.value == "")
{
alert('Please input Password');
document.changePassword.newpassword.focus(); 
return false;
} 

if(document.schangePassword.conpassword.value == "")
{
alert('Please input Confirm Password');
document.schangePassword.conpassword.focus(); 
return false;
} 

if(document.schangePassword.newpassword.value != document.schangePassword.conpassword.value)
{
alert('Confirm Password Not Match');
document.schangePassword.conpassword.focus(); 
return false;
} 

document.schangePassword.submit();
}
</script>
<jsp:include page="header.jsp"></jsp:include>
        <br>
        <div id="nbody2">
            <center>
                <h2>Change Password</h2><br>
<form name="ChangePass" method="post" action="sprocessChangePWD.jsp" OnSubmit="return fncSubmit();">

<table align="center">

<tr>
<td>Old Password</td>
<TD><input name="OldPassword" type="password" id="OLDpwd" size="20" style="height:30px;width:250px"></td>
</tr>
<tr></tr><tr></tr><tr></tr>
<tr>
<td>New Password</td>
<td><input name="newpassword" type="password" id="newpassword" style="height:30px;width:250px">
</td>
</tr
<tr></tr><tr></tr><tr></tr>
<tr>
<td>Confirm Password</td>
<td><input name="conpassword" type="password" id="conpassword" style="height:30px;width:250px">
</td>
</tr>
<tr></tr><tr></tr><tr></tr>
</table>
    <table>
<tr><td></td>
<td><input type="submit" name="Submit" value="Submit" style="height:30px;width:150px"></td>
</tr>

</table>
</form>
            </div>
        </center>
</body>
</html>
