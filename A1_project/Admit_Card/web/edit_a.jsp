<%-- 
    Document   : edit_a
    Created on : Mar 26, 2018, 5:43:02 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Details</title>
        <style>
        div#nbody3
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
        <div id="nbody3">
            <center><br>
                <h2>Edit Admin Details</h2><br>
                <% String uid=request.getParameter("uid");
                   String uname=request.getParameter("uname");
                   String pid=request.getParameter("pid");
                   %>
            <form name="f2" action="edit_admin.jsp" method="post" class="form-group">
                <table>
                <tr><td>A_ID  :</td><td><input type="text" name="vi" class="form-control" value=<%=uid%> style="height:30px;width:250px"/></td></tr>
                <tr><td>A_Name :</td><td><input type="text" name="vn" class="form-control" value=<%=uname%> style="height:30px;width:250px"/></td>
                     <%-- try
                {
                    Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb", "root", "root");
            Statement st = conn.createStatement();
             ResultSet rs=st.executeQuery("select * from admin where A_ID='"+uid+"' ");
                while(rs.next()){ %>
                <tr><td> A_Password :</td><td><input type="text" class="form-control" name="vp" class="form-control" value=<%=rs.getString(3)%> style="height:30px;width:250px"/></td>
                 <% } }
                    catch(Exception e){}
                    --%>
                    <td><input type="hidden" name="pid" value=<%=pid%> ></td></tr>
            </table><br>
           <% request.setAttribute("vi","vi");
            request.setAttribute("vn","vn");
            request.setAttribute("pid","pid");
            //request.setAttribute("vp","vp");
            %>
       &nbsp;<input type=submit class="btn  btn btn-primary" value =Edit style="height:30px;width:150px">
        </form>
        <a href="view_admin.jsp"><button type="button" class="btn  btn btn-primary" >BACK</button></a>
            </center>
        </div>
 </body>
 </html>