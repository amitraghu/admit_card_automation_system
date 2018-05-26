<%-- 
    Document   : student_home
    Created on : Feb 23, 2018, 7:38:46 PM
    Author     : Deepti
--%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <title>Student Home</title>
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
        /* Dropdown Button */
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
 .blur h3{
        top: 50%;
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
 function openChildWindow()
 {
     window.open('middle.jsp','childwindow','width=400,height=400,top=200 left=400');
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
                <font size="2"><a href="profile.jsp">View Profile</a>
                <a href="changePassword.jsp">Change Password</a>
                <a href="javascript:go()">Logout</a></font>
            </div>
            </div></td>
                </tr>
        </table><br><br>
        <center>
        <table>
            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <%
                    String id=(String)session.getAttribute("id");
                    String v;
                    char a;
            try{
           Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * FROM student where S_ID='"+id+"' ");
            while(rs.next()){
                    v=rs.getString(15);
                    a=v.charAt(0);
                    if(a=='Y')
                     {
                         %>
                       <td><div class="blur2"><button type="button" title="Fill the Admit Card form" disabled><img src="form.jpg"/></button></div></td>
                      <% } 
                      else
                        { %>
                        <td><div class="blur2"><button type="button" title="Fill the Admit Card form" onclick="javascript:openChildWindow();"><img src="form.jpg"/></button></div></td> 
                           <% }
                    }
                %>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                       <td><div class="blur2"><button type="button" title="View" onclick="window.location.href='admit_view.jsp';"><img src="view.png"/></button></div></td> 
            </tr><div><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></div>
            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <%
                rs=st.executeQuery("select * FROM admit_card where S_ID='"+id+"' ");
                if(rs.next()){
                v=rs.getString(4);
                a=v.charAt(0);
                    if(a=='N')
                     {
                      
                       %>
                       <td><div class="blur2"><button type="button" title="Download Admit Card" disabled><img src="download1.png"/></button></div></td>
                       
                      <% }
                      else
                        { %>
                        <td><div class="blur2"><button type="button" title="Download Admit Card" onclick="window.location.href='download.jsp';"><img src="download1.png"/></button></div></td> 
                           <% }
                    }
                     else { %>
                        
                        <td><div class="blur2"><button type="button" title="Download Admit Card" disabled><img src="download1.png"/></button></div></td> 
                    <% }
                    }
                      catch(Exception e)
                {
                        response.sendRedirect("error.jsp");
                          
                }%>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><div class="blur2"><button type="button" title="Give Feedback" onclick="window.location.href='give_feedback.jsp';"><img src="feed1.jpg"/></button></div></td> 
            </tr><div><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></div>     
        </table>
        </center>
<style>
    .blur2{
       width: 200px;
       height: 180px;
    }
    .blur2 img{
        width: 100%;
        height: 100%;
        transition: 1s;
    }
    .blur2:hover img{
        filter:blur(1px) brightness(100%);
        box-shadow: 0 0 16px black;
    }
</style>
 </body>
</html>

