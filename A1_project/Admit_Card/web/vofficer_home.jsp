<%-- 
    Document   : vofficer_home
    Created on : Feb 26, 2018, 6:20:14 PM
    Author     : Deepti
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <title>Log In</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <style>
        div#nbody3
        {background-color: rgba(255,255,255,0.7);
            width:820px;
            height: 100%;
            margin-left:auto;
            margin-right:auto;
            padding: 5px;
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

         a {
    text-decoration: none;  
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
        <div id="nbody3"><br>
             <a href="vsign_in.jsp" style="float: left" title="Back"><img src="back_arrow.jpg"  /></a> 
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
                <font size="2"><a href="vchangePassword.jsp">Change Password</a>
                <a href="javascript:go()">Logout</a></font>
            </div>
            </div></td>
                </tr>
            </table>
        <br><br>
        <center>
             <%
                String a,sid,v;
                char ch1;
                int flag=0,temp;
            try{
           Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
            Statement st=con.createStatement();
             Statement st1=con.createStatement();
            ResultSet rs=st.executeQuery("select * FROM student ");
            ResultSet rs1;
            
           
         %>
        <center>
            <h2>Students' Details</h2>
        <table cellpadding="15" border="1" style="background-color: lightgray" class="table table-striped table-hover table-responsive table-bordered table-condensed ">
            <tr>
                <th>S_ID</th>
                <th>First Name</th>
                <th>Last Name</th>
               
                <th>DOB</th>
                <th>Enroll_No.</th>
               
                <th>Status</th>
                
            </tr>
            <%   while(rs.next())
            {
                sid=rs.getString(1);
             
                rs1=st1.executeQuery("select * from admit_card where S_ID='"+sid+"'");
             %>
             <tr>
                 <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>
                 <td><%=rs.getString(4)%></td>
                 <td><%=rs.getString(7)%></td>
                 <td><%=rs.getString(11)%></td>
                 
                 
                  <%
                    
                    
                     a=rs.getString(15);
                   
                     char ch=a.charAt(0);
                 
                     if(ch=='N'||ch=='n')
                     {
                      %>
                      <td><button type=button class=" btn btn-primary btn-lg btn btn-default btn-block disabled">Not Applied</button></td>
                    <% } 
                    else
                    {
                      while(rs1.next())
                      {
                     v=rs1.getString(4);
                      
                  
                      ch1=v.charAt(0);
                    
                    
                  if((ch=='y'||ch=='Y')&&(ch1=='y'||ch1=='Y') )
                     {
                      
                       %>
                       <td><button type="button" class="btn-lg btn btn-success btn btn-default btn-block  disabled" > Verified</button></td>
                       
                      <% }
                     else if((ch=='y'||ch=='Y')&&(ch1=='n'||ch1=='N'))
                     {
                     
                        %>
                        <td><a href="verify_form.jsp?id=<%=rs.getString(1)%>"><button type="button" class=" btn-lg btn btn-danger btn btn-default btn-block active" >Verify</button></a></td>
                     <%
                    }
                
                  %>
             </tr>
            <%      }   }
            }
                
                st.close();
                con.close();
                }
                catch(Exception e)
                {
                        response.sendRedirect("error.jsp");
                          
                }
            %>
        </table>
    </center>    
        </div>
    </body>
</html>
