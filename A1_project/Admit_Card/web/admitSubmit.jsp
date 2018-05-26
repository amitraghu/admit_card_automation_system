<%-- 
    Document   : admitSubmit
    Created on : Feb 27, 2018, Feb 27, 2018 7:42:56 PM
    Author     : Admin
--%>
<%@page import="java.sql.*,java.util.*"%> 
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! static int af_id=0; %>
    <%
        try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admitdb" , "root" , "root");
          String class1=request.getParameter("cid");
          String med=request.getParameter("medium");
          String due=request.getParameter("due");
          String id=(String)session.getAttribute("id");
          String sub1=request.getParameter("ff1");
          String sub2=request.getParameter("ff2");
          String sub3=request.getParameter("ff3");
          String p=request.getParameter("place");
          String d=request.getParameter("date");
          String file1=request.getParameter("file");
          String f2="C:/Users/Deepti Dixit/Pictures/docs/img.jpg";
           Statement st = conn.createStatement();
           /*String sql = "update student set Pic=?, where S_ID='"+id+"' ";
           out.println(file1);
            PreparedStatement statement = conn.prepareStatement(sql);
            out.println("4");
            InputStream inputStream = new FileInputStream(new File("C:/Users/Deepti Dixit/Pictures/docs/img.jpg"));
            out.println("1");
            statement.setBlob(1,inputStream);
            out.println("2");
            int row = statement.executeUpdate();
            out.println("3");*/
           ResultSet rs=st.executeQuery("select MAX(AF_ID) from admit_card ");  
          while(rs.next())
                af_id=rs.getInt(1);
           ++af_id;
          int i=st.executeUpdate("insert into admit_card(C_ID,Medium,Due_Paper,S_ID,FiveFold1,FiveFold2,FiveFold3,Place,AF_ID,Date)"
              + " values ('"+class1+"','"+med+"','"+due+"','"+id+"','"+sub1+"','"+sub2+"','"+sub3+"','"+p+"','"+af_id+"','"+d+"')");
            int j=st.executeUpdate("update student set Applied='Y' where S_ID='"+id+"'");
            response.sendRedirect("student_home.jsp");
        }
        catch(Exception e)
        {
            //response.sendRedirect("error.jsp");
        }
     %>
     </body>
</html>

