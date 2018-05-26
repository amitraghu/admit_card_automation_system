<%-- 
    Document   : add_sub1
    Created on : Mar 28, 2018, 7:56:43 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Subject</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
         <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
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
.dropbtn {
         background: url("propic2.png");
         height: 80px;
         width: 80px;
          color: white;
           padding: 16px;
            font-size: 16px;
         cursor: pointer;
}

/* Dropdown button on hover & focus */
.dropbtn:hover, .dropbtn:focus {
    background: url("propic2.png");
    height: 80px;
    width: 80px;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;    
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 10px 15px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: blue;
    padding: 10px 10px;
    text-decoration: buttontext;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #fdd}

/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}
</style>
<script>
    function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
function go(){
    window.location.replace("logout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
    self.close();
}
</script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <br>
        <div id="nbody2">
            <center><br>
                <h2>Add Subject</h2><br>
            <form class="form-group" name="f2" action="add_subdata1.jsp" method="post">
            <table>
       
       <tr><td>SUB_ID :</td><td><input class="form-control" type="text" name="sid" style="height:30px;width:250px"/></td></tr>
       <tr><td> SUB_NAME :</td><td><input class="form-control" type="text" name="sn" style="height:30px;width:250px" /></td></tr>
       <tr><td> SUB_TYPE :</td><td><input class="form-control" type="text" name="stype" style="height:30px;width:250px"/></td></tr>
            </table><br>
           <% request.setAttribute("sid","sid");
            request.setAttribute("sn","sn"); 
            request.setAttribute("stype","stype"); %>
       &nbsp;<input type=submit class="btn btn-success" value =Add style="height:30px;width:150px">
       </form>
         <a href="course_subject.jsp"><button type="button" class="btn  btn btn-primary" >BACK</button></a>
            </center>
        </div>
 </body>
 </html>