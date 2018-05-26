<%-- 
    Document   : admit1
    Created on : Mar 20, 2018, 6:14:28 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admit Card</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="css/bootstrap.min.css"></script>
        <style>
            .wizard {
    margin: 20px auto;
    background: #fff;
}

    .wizard .nav-tabs {
        position: relative;
        margin: 40px auto;
        margin-bottom: 0;
        border-bottom-color: #e0e0e0;
    }

    .wizard > div.wizard-inner {
        position: relative;
    }

.connecting-line {
    height: 2px;
    background: #e0e0e0;
    position: absolute;
    width: 80%;
    margin: 0 auto;
    left: 0;
    right: 0;
    top: 50%;
    z-index: 1;
}

.wizard .nav-tabs > li.active > a, .wizard .nav-tabs > li.active > a:hover, .wizard .nav-tabs > li.active > a:focus {
    color: #555555;
    cursor: default;
    border: 0;
    border-bottom-color: transparent;
}

span.round-tab {
    width: 70px;
    height: 70px;
    line-height: 70px;
    display: inline-block;
    border-radius: 100px;
    background: #fff;
    border: 2px solid #e0e0e0;
    z-index: 2;
    position: absolute;
    left: 0;
    text-align: center;
    font-size: 25px;
}
span.round-tab i{
    color:#555555;
}
.wizard li.active span.round-tab {
    background: #fff;
    border: 2px solid #5bc0de;
    
}
.wizard li.active span.round-tab i{
    color: #5bc0de;
}

span.round-tab:hover {
    color: #333;
    border: 2px solid #333;
}

.wizard .nav-tabs > li {
    width: 25%;
}

.wizard li:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 0;
    margin: 0 auto;
    bottom: 0px;
    border: 5px solid transparent;
    border-bottom-color: #5bc0de;
    transition: 0.1s ease-in-out;
}

.wizard li.active:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 1;
    margin: 0 auto;
    bottom: 0px;
    border: 10px solid transparent;
    border-bottom-color: #5bc0de;
}

.wizard .nav-tabs > li a {
    width: 70px;
    height: 70px;
    margin: 20px auto;
    border-radius: 100%;
    padding: 0;
}

    .wizard .nav-tabs > li a:hover {
        background: transparent;
    }

.wizard .tab-pane {
    position: relative;
    padding-top: 50px;
}

.wizard h3 {
    margin-top: 0;
}

@media( max-width : 585px ) {

    .wizard {
        width: 90%;
        height: auto !important;
    }

    span.round-tab {
        font-size: 16px;
        width: 50px;
        height: 50px;
        line-height: 50px;
    }

    .wizard .nav-tabs > li a {
        width: 50px;
        height: 50px;
        line-height: 50px;
    }

    .wizard li.active:after {
        content: " ";
        position: absolute;
        left: 35%;
    }
}
    div.ex1 {
    background-color: rgba(250,250,210,0.5);
    overflow: scroll;
    width:970px;
            height: 500px;
            margin-left:auto;
            margin-right:auto;
            padding: 5px;
        }  
        </style>
        <script>
            function showMyImage(fileInput) {
        var files = fileInput.files;
        for (var i = 0; i < files.length; i++) {           
            var file = files[i];
            var imageType = /image.*/;     
            if (!file.type.match(imageType)) {
                continue;
            }           
            var img=document.getElementById("thumbnil");            
            img.file = file;    
            var reader = new FileReader();
            reader.onload = (function(aImg) { 
                return function(e) { 
                    aImg.src = e.target.result; 
                }; 
            })(img);
            reader.readAsDataURL(file);
        }    
    }
  $(document).ready(function () {
    //Initialize tooltips
    $('.nav-tabs > li a[title]').tooltip();
    
    //Wizard
    $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {

        var $target = $(e.target);
    
        if ($target.parent().hasClass('disabled')) {
            return false;
        }
    });

    $(".next-step").click(function (e) {

        var $active = $('.wizard .nav-tabs li.active');
        $active.next().removeClass('disabled');
        nextTab($active);

    });
    $(".prev-step").click(function (e) {

        var $active = $('.wizard .nav-tabs li.active');
        prevTab($active);

    });
});

function nextTab(elem) {
    $(elem).next().find('a[data-toggle="tab"]').click();
}
function prevTab(elem) {
    $(elem).prev().find('a[data-toggle="tab"]').click();
}
        </script>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
        <br>
        <div class="container">
	<div class="row">
            		<section>
        <div class="wizard">
            <br><h1 style="text-align:center">Admit Card Form</h1>
            <div class="wizard-inner">
                
                <div class="connecting-line"></div>
                <ul class="nav nav-tabs" role="tablist">

                    <li role="presentation" class="active">
                        <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-folder-open"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-pencil"></i>
                            </span>
                        </a>
                    </li>
                    <li role="presentation" class="disabled">
                        <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-picture"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-ok"></i>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>

            <form role="form">
                <div class="tab-content">
                        <div class="tab-pane active" role="tabpanel" id="step1">
                        <h3>&nbsp;&nbsp;Personal Details</h3>
                        <p>
                             <table class='table'>
        <%
        String id=(String)session.getAttribute("id");
        try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
          String s=("select * from student where S_ID='"+id+"'");
          Statement stmt=conn.createStatement();
          Statement st=conn.createStatement();
          ResultSet rs1=stmt.executeQuery(s);
           while(rs1.next())
           {%>
           <col width="33%">
           <col width="33%">
           <tr> 
               <td height='27'>
                   ROLL NO.:<input type='text' size="15" name='roll' value="<%=rs1.getString("Roll_No")%>" class="form-control" disabled>
               </td><td></td>
                <td height='27'>
                        ENROLLMENT NO.: <input type='text' name='enroll' value="<%=rs1.getString("Enroll_No")%>" class="form-control" disabled></div>
                </td>
           </tr>
           <tr>
                <td height='27'>
                        AADHAR NO.:<input type='text' name='aadhaar' class="form-control" value="<%=rs1.getString("Aadhar_No")%>" disabled>
                </td><td></td>
                <td>ID:<input type='text' name='id' class="form-control" disabled value="<%=rs1.getString("S_ID")%>"></td>
            </tr>
            <tr>
                <td></td>
                <td>NAME OF CANDIDATE:<input type='text' name='name' class="form-control" disabled value="<%=rs1.getString("First_Name")%> <%=rs1.getString("Mid_Name")%> <%=rs1.getString("Last_Name")%>"></td>
            </tr>
            <tr>
                <td></td>
                <td>FATHER'S NAME:<input type='text' name='fname' class="form-control" disabled value="<%=rs1.getString("F_Name")%>"></td>
            </TR>
            <tr>
                <td></td>
                <td>MOTHERS'S NAME:<input type='text' name='mname' class="form-control" disabled value="<%=rs1.getString("M_Name")%>"></td>
            </tr>
            <% } %>
            <tr>
                <td></td>
            <td>CLASS :<input type='text' name='cname' class="form-control" disabled value="<%=request.getParameter("cl1")%>">
                <% 
                    ResultSet rs4;
                    String cn=(String)request.getParameter("cl1");
                                    rs4=st.executeQuery("select C_ID from course where C_Name='"+cn+"'");
                                    while(rs4.next()){ %>
                                    <input name="cid" value="<%=rs4.getString("C_ID")%>" type="hidden">
                 <%                   } 
                %>
                        </td>
            </tr>
               </table>
                        </p>
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step2">
                        <h3>&nbsp;&nbsp;Educational Details</h3>
                        <p>
                            <table class="table">
                    <col width="30%">
                    <col width="40%">
                <tr>
                   <td>
                       <table class="table">
                           <tr><td><b>Foundation Courses</b></td></tr>
                       <%
                           ResultSet rs5;
                           Statement stmt5=conn.createStatement();
                           Statement stmt4=conn.createStatement();
                                    String c2=(String)request.getParameter("cl1");
                                    rs4=stmt.executeQuery("select C_ID from course where C_Name='"+c2+"'");
                                    while(rs4.next()){
                                        rs5=stmt4.executeQuery("select SUB_ID from course_subject where C_ID='"+rs4.getString("C_ID")+"' ");
                                      while(rs5.next())
                                    { 
                                        rs1=stmt5.executeQuery("select * from subject where SUB_ID='"+(rs5.getString("SUB_ID") )+"' and Type='F' ");
                                        while(rs1.next())
                                        { %> 
                                           <tr><td><input type='text' name='dname' class="form-control" disabled value="<%=rs1.getString("SUB_NAME")%>"></td> </tr>
            <% } } }%>                 
                                <tr><td><b>Five Fold Activities</b></td></tr>
                                <tr>
                                    <td height='30'>
                                            Subject1:<input type='text' name='ff1' class="form-control">
                                         </td>
                                </tr>          
                                <tr>
                                         <td height='30'>
                                        Subject2:<input type='text' name='ff2' class="form-control">
                                        </td>
                                </tr>
                                <tr>
                                         <td height='30'>
                                        Subject3:<input type='text' name='ff3' class="form-control">
                                        </td>
                                </tr>
                       </table>
                   </td>
                   <td>
                       <table class="table">
                              <tr><td><b>Disciplinary Courses</b></td></tr>
                    <%
                                    String c=(String)request.getParameter("cl1");
                                    rs4=stmt.executeQuery("select C_ID from course where C_Name='"+c+"'");
                                    while(rs4.next()){
                                        rs5=stmt4.executeQuery("select SUB_ID from course_subject where C_ID='"+rs4.getString("C_ID")+"' ");
                                      while(rs5.next())
                                    { 
                                        rs1=stmt5.executeQuery("select * from subject where SUB_ID='"+(rs5.getString("SUB_ID") )+"' and Type='D' ");
                                        while(rs1.next())
                                        { %>              
                  <tr><td><input type='text' name='dname' class="form-control" disabled value="<%=rs1.getString("SUB_NAME")%>"></td> </tr>
                   <% } 
}   }%>                
                   </table>
                   </td>
                   <td>
                       <table class="table">
                           <tr><td><b>Practical Subjects</b></td></tr>
                             <%
                                    String c1=(String)request.getParameter("cl1");
                                    rs4=stmt.executeQuery("select C_ID from course where C_Name='"+c1+"'");
                                    while(rs4.next()){
                                        rs5=stmt4.executeQuery("select SUB_ID from course_subject where C_ID='"+rs4.getString("C_ID")+"' ");
                                      while(rs5.next())
                                    { 
                                        rs1=stmt5.executeQuery("select * from subject where SUB_ID='"+(rs5.getString("SUB_ID") )+"' and Type='P' ");
                                        while(rs1.next())
                                        { %>              
                  <tr><td> <input type='text' name='psub' class="form-control" disabled value="<%=rs1.getString("SUB_NAME")%>"> </td></tr>
            <% } } }%>
                       </table>
                   </td>
               </tr>
              <% 
                  String s1=("select * from student where S_ID='"+id+"'");
                    rs1=stmt.executeQuery(s1);
           while(rs1.next())
           {%>
               <tr><td></td>
                   <td>PREVIOUS SEMESTER %:<input type='text' name='percent' class="form-control" disabled value="<%=rs1.getString("Percentage")%>"/></td>
               </tr>
               <tr><td></td>
                   <td>MEDIUM:<input type='text' name='medium' class="form-control"> </td>
               </tr>
               <tr><td></td>
                   <td>DUE PAPER:<input type='text' name='due' class="form-control"> </td>
               </tr>
               <% }%>
               </table>
                        </p>
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
                        </ul>
                    </div>
               
                    <div class="tab-pane" role="tabpanel" id="step3">
                        <h3>&nbsp;&nbsp;Declaration</h3>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp; I hereby declare that the details furnished above are true and correct to the best of my knowledge
and belief and I undertake to inform you of any changes therein, immediately. In case any of the above
information is found to be false or untrue or misleading or misrepresenting, I am aware that I may be held liable
for it. 
                        <table class='table' align='right'>
                            <col width='60%'>
                            <tr><td>
                                    <table class='table table-borderless'>
                                        <col width='10%'>
                            <col width="40%">
                                        <tr><td>Place:</td><td><input NAME="place" type="text"></td></tr>
                                        <tr><td>Date:</td><td><input NAME="date" type="text"></td></tr>
                                        <tr>
                                            <%
                                                rs1=stmt.executeQuery(s);
                                                while(rs1.next())
                                                 {%>
                                                 <td>Signature:</td><td><input NAME="date" type="text" value=<%=rs1.getString("First_Name")%> disabled></td>
                                                 <% } %>
                                        </tr>
                                    </table></td>
                                <td height='27'>
                    PHOTOGRAPH:<input NAME="file" type="file" accept="image/*" class="form-control" onchange="showMyImage(this)">
                    <img id="thumbnil" style="width:20%; margin-top:10px;"  src="" alt="image"/>
                </td></tr>
                        </table>
                        </p>
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                                  <li><button type="button" class="btn btn-success btn-info-full next-step">Submit</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="complete">
                        <h3>&nbsp;&nbsp;Complete</h3>
                        <p><font size='5px' color='green'><center>You have successfully completed all steps.</center></font></p>
                        <ul class="list-inline pull-right">
                            <li><button type="submit" class="btn btn-info btn-info-full" formaction="admitSubmit.jsp">OK</button></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>

                     <% 
                           }
            catch(Exception e){
                response.sendRedirect("error.jsp");
              }
            %>
             </form>
        </div>
    </section>
   </div>
</div>
        </div>
    </body>
</html>



