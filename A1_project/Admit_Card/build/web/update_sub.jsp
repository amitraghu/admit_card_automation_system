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
        <title>Subject Details</title>
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
    position: absolute;
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
.button1{
    text-align: center;
}
button{
    position: absolute;
    top: 50%;
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
        <br>
         <center>
             <%
                 String sub_id=(String)request.getParameter("sub_id");
                 String sub_name=(String)request.getParameter("sub_name");
                 String type=(String)request.getParameter("type");
                  session.setAttribute("sub_id",sub_id);
            try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
          
        %><center>
         <form name="f2" action="update_subdata.jsp" class="form-group" method="post">
             <table>
                 <tr>
                     <td>Subject_ID  :<input type="text" name="sub_id1" class="form-control" style="height:30px;width:250px"value=<%=sub_id%>></td></tr>
                 <tr>    <td>Subject_Name :<input type="text" name="sub_name1" class="form-control" style="height:30px;width:250px"value=<%=sub_name%>></td></tr>
                 <tr>    <td>Subject_Type :<input type="text" name="type1" class="form-control" style="height:30px;width:250px"value=<%=type%>></td>
                 </tr>
             </table>
        <%  
          
            request.setAttribute("sub_id1","sub_id1");
            request.setAttribute("sub_name1","sub_name1");
            request.setAttribute("type1","type1");
              
                con.close();
                }
catch(Exception e)
                {
                        response.sendRedirect("error.jsp");
                }
                %>
               
       <div class="button1">         
      &nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="update" VALUE="Save Changes" class="btn btn-primary" style="height:30px;width:150px;margin:auto;
  display:block;"/>&nbsp;&nbsp;
    </div>
      
    </form>
    </center>    
        </div>
 </body>  
</html>




