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
        <title>Course Details</title>
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
        div#n3
        {
            width:470px;
            height: 100%;
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

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #fdd}

/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}

a {
    text-decoration: none;
    display: inline-block;
   
}

a:hover {
  
    color: white;
}
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
            <a href="admin_home.jsp" style="float: left" title="Back"><img src="back_arrow.jpg"  /></a> 
            <table>
                <tr>
                    <td width='120%'></td>
                    <td>
                        <h2><button onclick="myFunction()" class="dropbtn" ></button>
            <div id="myDropdown" class="dropdown-content">
                <font size="2"><a href="schangePassword.jsp">Change Password</a>
                <a href="javascript:go()">Logout</a></font>
            </div>
                </h2>
                    </td>
                </tr>
            </table>   
       <br>
         <center>
             <%
                 String id= null;
            try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
            Statement st=con.createStatement();
            Statement st1=con.createStatement();
            Statement st2=con.createStatement();
            ResultSet rs1,rs2;
            ResultSet rs=st.executeQuery("select * from course where Flag=1");
        %>
        <center>
            <div id='n3'>
            <table class='table table-bordered table-striped' cellpadding="15px">
            <tr>
                <th width="100px">C_ID</th>
                <th width="200px">C_Name</th>
                <th width="250px">Subjects</th>
                <th width="20px"></th>
                <th width="20px"></th>
            </tr>
                 <%
               while(rs.next()){
             %>
             <tr>
                 <td><%=rs.getString(2)%></td>
                 <td><%=rs.getString(1)%></td>
                  <td>
             <% 
                rs1=st1.executeQuery("select * from course_subject where C_ID='"+rs.getString(2)+"' and flag=1");
                while(rs1.next())
                {
                    rs2=st2.executeQuery("select * from subject where SUB_ID='"+rs1.getString(2)+"' and flag=1");
                    while(rs2.next()){ %>
                    <%=rs2.getString(2)+"," %>      
             <%   }
                }
             %>
                  </td> 
                 <td><a href="del_c.jsp?cid=<%=rs.getString(2)%>" onclick="return confirm('Are you sure you want to delete?')"><img src="del1.png"</a></td>
                 <td><a href="update_c.jsp?cid=<%=rs.getString(2)%>&cname=<%=rs.getString(1)%>"><img src="edit1.png"></a></td>
             </tr>
              <%  
                }
                con.close();
}
catch(Exception e)
                {
                        response.sendRedirect("error.jsp");
                }
                %>
            </table><br><br>
       
                <form method="get">
       <input type="submit" name="add" VALUE="Add" formaction="add_c.jsp" class="btn btn-primary" style="height:30px;width:150px"/>&nbsp;&nbsp;
       
    </form>
                </div>
    </center>    
        </div>
 </body>  
</html>




