<%-- 
    Document   : admin_home
    Created on : Feb 24, 2018, 9:20:56 AM
    Author     : Deepti
--%>
<html>
    <head>
        <title>Admin Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .blur{
       width: 200px;
       height: 200px;
    }
    .blur img{
        width: 100%;
        height: 100%;
        transition: 1s;
    }
    .blur:hover img{
        filter:blur(1px) brightness(100%);
        box-shadow: 0 0 16px black;
    }
    .blur :not(img){
        top: 5%;
        z-index: 0;
        color: #000;
        text-align: center;
        width: 100%;
    }
        div#nbody2
        {background-color: rgba(255,255,255,0.5);
            width:770px;
            height: 580px;
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
        <div id="nbody2"><br>
        <table>
                <tr height='80px'>
                    <td>
                        <td width="700px"><h2>&nbsp; Welcome <%out.print(session.getAttribute("name"));%> !!</h2> </td>
                    </td>
                    <td>
                        <td width="70px">
                                    <div class="dropdown">
                    <button onclick="myFunction()" class="dropbtn"></button>
            <div id="myDropdown" class="dropdown-content">
                <font size="2"><a href="schangePassword.jsp">Change Password</a>
                <a href="javascript:go()">Logout</a></font>
            </div>
            </div></td>
                </tr>
            </table>
                    <br><br>
            <center>
                <table>
                    <tr>
                        <td><a href="view_student.jsp"><div class="blur"> <img src="stud_details.png" title="View Student"></div></a></td>
                        <td>&nbsp;&nbsp;</td>
                        <td><a href="view_feedback.jsp"><div class="blur"> <img src="feedback.png" title="View Feedback"></div>  </a></td>
                        <td>&nbsp;&nbsp;</td>
                        <td><a href="view_vofficer.jsp"><div class="blur"><img src="v_details.png" title="View V_Officer"></div>  </a></td>
                    </tr>
                    <tr><td><br></td></tr>
                    <tr>
                        <td><a href="view_sub.jsp"><div class="blur"> <img src="sub_details.png" title="View Subject"> </div> </a></td>
                        <td>&nbsp;&nbsp;</td>
                        <td><a href="view_course.jsp"><div class="blur"> <img src="course_details.png" title="View Course"></div> </a></td>
                        <td>&nbsp;&nbsp;</td>
                        <td><a href="view_admin.jsp"><div class="blur"> <img src="admin_details.png" title="View Admin"></div></a></td>
                    </tr>
                </table>
            </center>
        </div>
    </body>
</html>
