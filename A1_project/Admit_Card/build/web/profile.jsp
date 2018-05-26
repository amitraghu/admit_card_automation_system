<%-- 
    Document   : profile
    Created on : Feb 27, 2018, 7:40:09 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <title>Profile</title>
         <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
        <style>
            body{ background:url("8.jpg");background-size: cover; }
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
        .maincontainer{
  position: relative;
  width: 300px;
  height: 250px;
  background: none;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);}
           .thecard{
  position: absolute;
  top: -10px;
  left: -220px;
  width: 100%;
  height: 100%;
  border-radius: 0px;
  transform-style: preserve-3d;
  transition: all 0.8s ease;
}
.thecard:hover{
    transform: rotateY(180deg); }

/* THE FRONT FACE OF THE CARD, WHICH SHOWS BY DEFAULT */ 
.thefront{
    position: absolute;
    top: 0;
    left: 0; 
    width: 100%;
    height: 100%;
    border-radius: 10px; 
    backface-visibility: hidden; 
    overflow: hidden; 
    background: #fafafa;
    color: #000; }

/* THE BACK FACE OF THE CARD, WHICH SHOWS ON MOUSEOVER */ 
.theback{ 
    position: absolute; 
    top: 0; 
    left: 0;
    width: 100%;
    height: 100%; 
    border-radius: 10px;
    backface-visibility: hidden;
    overflow: hidden; 
    background: #778FB5; 
    color: #000; 
    text-align: center; 
    transform: rotateY(180deg); }

/*This block (starts here) is merely styling for the flip card, and is NOT an essential part of the flip code */ 
.thefront h1, .theback h1{
    font-family: 'Modern 20',sans-serif;
    padding: 30px;
    font-size: 25px;
    font-weight: bold;
    text-align: center; } 

thefront p, .theback p{
    font-family: Modern 20;
    padding: 30px; 
    font-size: 20px;
    font-weight: bold;
    text-align: center; }
        .button2{
    background-color: #008CBA;
    color: white;
    box-shadow: 0 12px 16px 0 rgba(0,0,0,1), 0 17px 50px 0 rgba(0,0,0,0.19);
    }
</style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <br>
        <br>
        <div id="nbody2" style="text-align:center">
            <center>
                <h1>Student Profile</h1>
                <br><br><br><br><br><br><br>
                <br><br><br>
                <div class="maincontainer" align="centre">
          <div class="thecard">
              <div class="thefront">
                <table class="table table-bordered">
        <% 
            String id=(String)session.getAttribute("id");
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb","root","root");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from student where S_ID='"+id+"' ");
             while(rs.next()){
        %>
         <tr>
                        <td>Name: <%=rs.getString(2)%> <%=rs.getString(3)%> <%=rs.getString(4) %></td>
                    </tr>
        <tr>
            <td>Fathers's Name: <%=rs.getString(5)%></td></tr>
        <tr> <td>Mother's Name: <%=rs.getString(6)%></td>
                    </tr>
                    <tr>
                        <td>DOB: <%=rs.getString(7)%></td></tr>
                    <tr> <td>email: <%=rs.getString(8)%></td></tr>
                    <tr>   <td>Mob.No.: <%=rs.getString(9) %></td>
                    </tr>
                </table>
                </div>
                <div class="theback">
                <table class="table table-bordered">
                    <tr>
                        <td>Aadhar No.: <%=rs.getString(10)%></td></tr>
                    <tr>   <td>Enrollment No.: <%=rs.getString(11)%></td></tr>
                    <tr>   <td>Roll No.: <%=rs.getString(12) %></td>
                    </tr>
                </table>
                    </div>
                    </div>
                    </div>
                    <br><a href="student_home.jsp"><input type="button" value="Back" name="back" class='button2' style="height:30px;width:150px"/></a>
                    
                    </center>
        <%}
        }
        catch(Exception e){
            response.sendRedirect("error.jsp");
        }
        %>            
        </div>
         </body>
</html>
