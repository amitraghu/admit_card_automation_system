<%-- 
    Document   : verify_form.jsp
    Created on : Mar 25, 2018, Mar 25, 2018 2:31:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <title>JSP Page</title>
        <style>
            div#nbody3
        {background-color: rgba(255,255,255,0.7);
            width:1000px;
            height: 100%;
            margin-left:auto;
            margin-right:auto;
            padding: 5px;
        }
        </style>
    </head>
   
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <br>
        <div id="nbody3">
            <center>
       <%
        int i;   
        String f;
       String id=(String)request.getParameter("id");
       try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
            String s=("select * from student where S_ID='"+id+"'");
           Statement stmt=con.createStatement();
           Statement stmt2=con.createStatement();
           Statement stmt3=con.createStatement();
           Statement stmt4=con.createStatement();
         
            ResultSet rs1=stmt.executeQuery(s);
            ResultSet rs2; 
            ResultSet rs3;
             ResultSet rs4;
             ResultSet rs5;
           while(rs1.next())
           {%>
           
          <table>
              <col width="33%">
               <col width="33%">  
           <tr > 
                  
              
               <th>ROLL NO.:
                   <input type='text' size="15" name='roll' value="<%=rs1.getString("Roll_No")%>" class="form-control" disabled>
                  </th> <th></th>
                <th >
                        ENROLLMENT NO.:<input type='text' name='enroll' value="<%=rs1.getString("Enroll_No")%>" class="form-control" disabled>
                </th>
               
           </tr>
           <tr>
                <th>
                        AADHAR NO.:<input type='text' name='aadhaar' class="form-control" value="<%=rs1.getString("Aadhar_No")%>" disabled>
                </th><td></td>
                <th>ID:<input type='text' name='id' class="form-control" disabled value="<%=rs1.getString("S_ID")%>"></th>
                
            </tr>
            </div>
            </table>
            </center>
                <center>
            <form align="center">
            <label> </label>
            <table>
                <col width="58%">
                <tr><td></td><td>NAME OF CANDIDATE: <input type='text' name='name' class="form-control" disabled value="<%=rs1.getString("First_Name")%> <%=rs1.getString("Mid_Name")%> <%=rs1.getString("Last_Name")%>" size="30px"/> </td></tr>
                <tr><td></td><td>FATHER'S NAME: <input type='text' name='fname' class="form-control" disabled value="<%=rs1.getString("F_Name")%>"></td></tr>
                <tr><td></td><td>MOTHERS'S NAME: <input type='text' name='mname' class="form-control" disabled value="<%=rs1.getString("M_Name")%>"></td></tr>
                <% } %>
                <tr><td></td><td>CLASS: 
                 <% Statement stmt1=con.createStatement();
              rs1=stmt.executeQuery("Select * from admit_card where S_ID='"+id+"'");
              while(rs1.next())
              {
                rs2=stmt1.executeQuery("select * from course where C_ID='"+rs1.getString("C_ID")+"' ");
                while(rs2.next())
                {
                
            %>
                <input type='text' name='cname' class="form-control" disabled value="<%=rs2.getString("C_Name")%>"></td></tr>  
                <% } }%>
                <tr><td></td><td>DISCIPLINARY COURSES :</td></tr>
                 <%        
                                     rs3=stmt2.executeQuery("select C_ID from admit_card where S_ID='"+id+"'");
                                    while(rs3.next()){
                                       rs4=stmt3.executeQuery("select SUB_ID from course_subject where C_ID='"+rs3.getString("C_ID")+"' ");
                                      while(rs4.next())
                                    { 
                                        rs5=stmt4.executeQuery("select * from subject where SUB_ID='"+(rs4.getString("SUB_ID") )+"' and Type='D' ");
                                        while(rs5.next())
                                        { %>  
                <tr><td></td><td><input type='text' name='psub' class="form-control" disabled value="<%=rs5.getString("SUB_NAME")%>"></td></tr>
                 <% 
                                        } } }%>
                <tr><td></td><td>PRACTICAL SUBJECTS :</td></tr>
                <%
                                   
                                    rs3=stmt2.executeQuery("select C_ID from admit_card where S_ID='"+id+"' ");
                                    while(rs3.next()){
                                        rs4=stmt3.executeQuery("select SUB_ID from course_subject where C_ID='"+rs3.getString("C_ID")+"' ");
                                      while(rs4.next())
                                    { 
                                        rs5=stmt4.executeQuery("select * from subject where SUB_ID='"+(rs4.getString("SUB_ID") )+"' and Type='P' ");
                                        while(rs5.next())
                                        { %>              
                <tr><td></td><td><input type='text' name='psub' class="form-control" disabled value="<%=rs5.getString("SUB_NAME")%>"></td></tr>
                <% } } }%>
                <tr><td></td><td>FOUNDATIONAL SUBJECTS :</td></tr>
                 <%
                                   
                                    rs3=stmt2.executeQuery("select C_ID from admit_card where S_ID='"+id+"'");
                                    while(rs3.next()){
                                        rs4=stmt3.executeQuery("select SUB_ID from course_subject where C_ID='"+rs3.getString("C_ID")+"' ");
                                      while(rs4.next())
                                    { 
                                        rs5=stmt4.executeQuery("select * from subject where SUB_ID='"+(rs4.getString("SUB_ID") )+"' and Type='F' ");
                                        while(rs5.next())
                                        { %>      
                <tr><td></td><td><input type='text' name='psub' class="form-control" disabled value="<%=rs5.getString("SUB_NAME")%>"> </td></tr>
                <% } } }%>
                <tr><td></td><td>FIVE FOLD ACTIVITIES :</td></tr>
                 <%
                                   
                                    rs3=stmt2.executeQuery("select * from admit_card where S_ID='"+id+"' AND FiveFold1 IS NOT NULL  ");
                                    while(rs3.next())
                                    { 
                      %> 
                <tr><td></td><td><input type='text' name='psub' class="form-control" disabled value="<%=rs3.getString(6)%>"></td></tr>
                <% }
                    rs3=stmt2.executeQuery("select * from admit_card where S_ID='"+id+"' AND FiveFold2 IS NOT NULL  ");
                                    while(rs3.next())
                                    { 
                %>
                <tr><td></td><td><input type='text' name='psub' class="form-control" disabled value="<%=rs3.getString(7)%>"></td></tr>
                 <% }rs3=stmt2.executeQuery("select * from admit_card where S_ID='"+id+"' AND FiveFold3 IS NOT NULL  ");
                                    while(rs3.next())
                                    { 
                 %>
                <tr><td></td><td><input type='text' name='psub' class="form-control" disabled value="<%=rs3.getString(8)%>"> </td></tr>
                <%}
                                    String s6=("select * from student where S_ID='"+id+"'");
                                rs1=stmt.executeQuery(s6);
                           while(rs1.next())
               {%>
                <tr><td></td><td>PREVIOUS SEMESTER %:<input type='text' name='percent' class="form-control" disabled value="<%=rs1.getString("Percentage")%>"/></td></tr>
                <%  }
                   String s5=("select * from admit_card where S_ID='"+id+"'");
                   rs1=stmt.executeQuery(s5);
                   while(rs1.next())         
                   { %>  
                <tr><td></td><td>MEDIUM: <input type='text' name='percent' class="form-control" disabled value="<%=rs1.getString("Medium")%>"/></td></tr>
                <tr><td></td><td>DUE PAPER: <input type='text' name='percent' class="form-control" disabled value="<%=rs1.getString("Due_Paper")%>"/></td></tr>
                <% } %>
            </table>
            <a href="verified.jsp?id=<%=id%>"><button type="button" class="btn  btn-success   active" >VERIFY</button></a>
            <a href="vofficer_home.jsp"><button type="button" class="btn  btn btn-success  active" >BACK</button></a>
            <%
           
       }
        catch(Exception e)
       {
           //response.sendRedirect("error.jsp");
       }
     %>   
     </form>
     </center>
     </div>
    </body>
</html>
