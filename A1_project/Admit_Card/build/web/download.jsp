<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<HTML>
    <head>
        <title>Download Admit Card</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet"  href="css/bootstrap.min.css">
        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style>

#main    {
     background-color: #fff;
     width: 90%;
     margin: 30px auto;
     border: 3px solid black; /* width, style, colour */
     } 
     .borderless td, .borderless th {
    border: none;
}

        </style>
    </head>
<body id="main" >
    <%! java.util.Date date=new java.util.Date();
        String enroll,rollno,email,name,fathername,mothername,afid,five1,five2,five3,cid,course; 
         String year="April-May, 2018";
    String f[]=new String[3];
     String dc[]=new String[6];
     String prac[]=new String[3];
     String DATE=date.toString();
    %>
 <%
     String id=(String)session.getAttribute("id");
     int j=0,k=0,l=0;
     try
        {
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb","root","root");
            Statement st=conn.createStatement();
            Statement st1=conn.createStatement();
            Statement st2=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from student where S_ID='"+id+"' ");
            ResultSet rs1,rs4,rs2;
             while(rs.next()){
                enroll=rs.getString(11);
                rollno=rs.getString(12);
                email = rs.getString(8);
                name= rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
                fathername=rs.getString(5);
                mothername=rs.getString(6);
             }
             rs1=st.executeQuery("select * from admit_card where S_ID='"+id+"' ");
             while(rs1.next()){
                afid=rs1.getString(10);
                five1=rs1.getString(6);
                five2=rs1.getString(7);
                five3=rs1.getString(8);
                cid=rs1.getString(1);
                rs4=st2.executeQuery("select C_Name from course where C_ID='"+cid+"' ");
             while(rs4.next())
             {
                 course=rs4.getString(1);   
             }
             rs4=st2.executeQuery("select SUB_ID from course_subject where C_ID='"+cid+"' ");
             while(rs4.next())
             {
               rs2=st1.executeQuery("select * from subject where SUB_ID='"+(rs4.getString("SUB_ID") )+"' and Type='F' ");
               while(rs2.next())
               {
                   f[j]=rs2.getString(2);
                   j++;
               }
               rs2=st1.executeQuery("select * from subject where SUB_ID='"+(rs4.getString("SUB_ID") )+"' and Type='D' ");
               while(rs2.next())
               {
                   dc[k]=rs2.getString(2);
                   k++;
               }
                rs2=st1.executeQuery("select * from subject where SUB_ID='"+(rs4.getString("SUB_ID") )+"' and Type='P' ");
               while(rs2.next())
               {
                   prac[l]=rs2.getString(2);
                   l++;
               }
             }
             }
   
        }
     catch(Exception e){
         
        }
%>
  
  <table style="width:100%">
    <tr>
        <td rowspan="700"><center>ROLL NO.&nbsp;&nbsp;&nbsp;&nbsp;<b><u><%= rollno %></u></b><br><IMG SRC="blogo.gif"/></center></td>
  <td rowspan="700"> <center><h1>BANASTHALI VIDYAPITH<br><h5>(University Affiliated Organization)</h5><br><u><b><h4>ADMIT-CARD</h4</b></u><br><center>(All Information filled by student) </center><br><center>Class/Subject&nbsp;&nbsp;&nbsp;<u><%= course %></u></center></h1></center></td>
            <td rowspan="700">
                <object  style="color:red" align="right" ><h3>No:<%= afid %></h3></object><br><br><br>
                <object  align="right"> No.:<%= enroll %></object>
            </td>
    </tr>
 </table>
<center>
    <font face="Modern 20">
 <table class="table" style="width:100%">           
     <tr>     
     <td><div>&nbsp;&nbsp;&nbsp;Ms/Mrs &nbsp;&nbsp;&nbsp;<b><u> <%= name%></u></b></div><br>
            <div>&nbsp;&nbsp;&nbsp;D/o Mr &nbsp;&nbsp;&nbsp;<b><u> <%= fathername%></u></b></div><br>
            <div>&nbsp;&nbsp;&nbsp;D/o Mrs &nbsp;&nbsp;&nbsp;<b><u> <%= mothername%></u></div></b><br>
            <div> is allowed to appear in following Paper which will be conducted in the <%=year%> Exam.</div>
 </td>
        <td rowspan="100%">&nbsp;&nbsp;&nbsp;&nbsp;<td>
    </tr> 
 </table>
            </center>
<br>
<div align="center">
<table class="table" align="center">
    <tr>
        <td><B><center>COURSES FOR UNDER GRADUATE EXAM</center></B></td>
    </tr>
    <tr>
            <td>
                <table class="table" style="width:90%">
                    <col width="30%">
                    <tr>    
                            <td><B>(1)FOUNDATION COURSES</B></td>
                            <td><B>(2)DISCIPLINARY COURSES</B></td>
                    </tr>
                <tr>     
                <td><u><B></B></u></td>
                            <td><B></B></td><br>
                            
                </tr>
                <tr>     
                <td><u>(1) <%= f[0] %> </u></td>
                            <td><u>(1) <%= dc[0] %></u></td>
                            
                </tr>
                <tr>     
                <td><u>(2) <%= f[1] %></u></td>
                            <td><u>(2) <%= dc[1] %></u></td>
                            
                </tr>
                <tr>     
                <td><u>(3)<%= f[2] %></u></td>
                            <td><u>(3)<%= dc[2] %></u></td>
                            
                </tr>
                <tr>     
                            <td><B></B></td>
                            <td><u>(4)<%= dc[3] %></u></td>
                            
                </tr>
                <tr>     
                            <td><B></B></td>
                            <td><u>(5)<%= dc[4] %></u></td>
                            
                </tr>
                <tr>     
                <td><b>(3) FIVE FOLD ACTIVITIES</b> </td>
                <td><B>(4) PRACTICAL PAPERS</B></td>            
                </tr>
                <tr>     
                <td><u><B></B></u></td>
                            <td><B></B></td>
                            
                </tr>
                <tr>     
                            <td><u>(1) <%= five1 %></u></td>
                            <td><u>(1)<%= prac[0] %></u></td>
                            
                </tr>
                <tr>     
                            <td><u>(2)<%= five2 %></u></td>
                            <td><u>(2)<%= prac[1] %></u></td>
                            
                </tr>
                <tr>     
                           <td><u>(3)<%= five3 %></u></td>
                            <td><u>(3)<%= prac[2] %></u></td>
                            
                </tr>       
            </table>
        </td>   
    </tr>
</table> 
</div>
    <P> DATE:<U> <%=DATE%>  </U></P>
    <p align="right">Department Officer<br>Banasthali Vidyapith </p>
    <div align="center"><button type="submit" value="Download PDF" name="download" class="btn btn-default" onclick="window.print()">Download PDF</button></div> 
    <br>
<center><h3>INSTRUCTIONS</h3></center><br>
    <table class="table table-borderless">
        <tr><td>1) Canditate cannot leave the examination Hall without the permission of the invigilator.Candidate has  to follow the instructions of the invilagaton.</td></tr>
        <tr><td>2) If the Candidate changes the ink in the answer sheet she has to inform the inviligllator about the same and get the answer sheet signed</td></tr>
        <tr><td>3) A Candidate can leave the Examination Hall only after submitting the answer sheet to the invigilator.</td></tr>
        <tr><td>4) Any sort of illegal means (Books,Chits,Mobile phones,etc) is strictly prohibited in the examination hall</td></tr>
        <tr><td>5) If any candidate is caught cheating ,strict actions would be taken against her.</td></tr>
        <tr><tD>6) If student has any complaint regarding the question paper,she has to file a grievance on the same day in examination department.</tD></tr>
    </table>
</body>
</HTML>
