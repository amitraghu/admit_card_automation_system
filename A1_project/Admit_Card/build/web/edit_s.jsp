<%-- 
    Document   : add_s
    Created on : Mar 3, 2018, 4:58:53 PM
    Author     : Deepti
--%>

<html>
    <head>
        <title>Student Details</title>
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
    <%
                String uid=request.getParameter("si");
                String uname=request.getParameter("sn");
                String midn =request.getParameter("midn");
                    String ln=request.getParameter("ln");
                     String fn=request.getParameter("fn");
                      String mn=request.getParameter("mn");
                       String dob=request.getParameter("dob");
                        String e=request.getParameter("e");
                         String mob=request.getParameter("mob");
                         String an=request.getParameter("an");
                         String en=request.getParameter("en");
                         String rn=request.getParameter("rn");
                         String pp=request.getParameter("pp");
                         String pid=request.getParameter("pid");
     %>
      
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <br>
        <div id="nbody2">
            <center><br>
                <h2>Edit Student</h2><br>
                <form name="f2" action="edit_student.jsp" method="post" class="form-group">
            <table>
                <tr><td>S_ID  :</td><td><input type="text" name="si" class="form-control" style="height:30px;width:250px"value=<%=uid%>></td></tr>
       <tr><td> First_Name :</td><td><input type="text" name="sn" class="form-control" style="height:30px;width:250px"value=<%=uname%>></td></tr>
       <tr><td>Mid_Name  :</td><td><input type="text" name="midn" class="form-control" style="height:30px;width:250px"value=<%=midn%>></td></tr>
       <tr><td> Last_Name :</td><td><input type="text" name="ln" class="form-control" style="height:30px;width:250px"value=<%=ln%>></td></tr>
       <tr><td>Father's Name  :</td><td><input type="text" name="fn" class="form-control" style="height:30px;width:250px"value=<%=fn%>></td></tr>
       <tr><td>Mother's Name  :</td><td><input type="text" name="mn" class="form-control" style="height:30px;width:250px"value=<%=mn%>></td></tr>
       <tr><td>Date of Birth  :</td><td><input type="text" name="dob" class="form-control" style="height:30px;width:250px"value=<%=dob%>></td></tr>
       <tr><td>email id :</td><td><input type="text" name="e" class="form-control" style="height:30px;width:250px"value=<%=e%>></td></tr>
       <tr><td>Mobile No.  :</td><td><input type="text" class="form-control" name="mob" style="height:30px;width:250px"value=<%=mob%>></td></tr>
       <tr><td> Aadhar No. :</td><td><input type="text" name="an" class="form-control" style="height:30px;width:250px"value=<%=an%>></td></tr>
       <tr><td> Enrollment No. :</td><td><input type="text" name="en" class="form-control" style="height:30px;width:250px"value=<%=en%>></td></tr>
       <tr><td> Roll No. :</td><td><input type="text" name="rn" class="form-control" style="height:30px;width:250px"value=<%=rn%>></td></tr>
       <tr><td> Previous Percentage :</td><td><input type="text" class="form-control" name="pp" style="height:30px;width:250px"value=<%=pp%>></td></tr>
       <tr> <td><input type="hidden" name="pid" class="form-control" value=<%=pid%> ></td></tr>
            </table><br>
           <% request.setAttribute("si","si");
            request.setAttribute("sn","sn");
            request.setAttribute("midn","midn");
            request.setAttribute("ln","ln");
           request.setAttribute("fn","fn");
            request.setAttribute("mn","mn");
           request.setAttribute("dob","dob");
            request.setAttribute("e","e");
           request.setAttribute("mob","mob");
           request.setAttribute("an","an");
            request.setAttribute("en","en");
           request.setAttribute("rn","rn");
            request.setAttribute("pp","pp");
           request.setAttribute("pid","pid");
           %>
       &nbsp;<input type=submit value =Update class="btn btn-primary" style="height:30px;width:150px">
        </form>
        <a href="view_student.jsp"><button type="button" class="btn  btn btn-primary" >BACK</button></a>
            </center>
        </div>
 </body>
 </html>

