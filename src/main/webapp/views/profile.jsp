<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.servlet.*"%>
<%@ page import = "javax.servlet.http.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>@Profile</title>
<link rel="stylesheet" href="/resources/css/userhome.css">
<style>

table{
    height: 270px;
    width: 400px;
    border-radius: 10px;
    background: linear-gradient(#141e30, #243b55);
    margin-top: 150px;
    box-shadow: 0 15px 25px rgba(0, 0, 0, .6);
    font-family: sans-serif;
    color: #fff;
    font-size: 17px;
}
table th{
    text-align: left;
    
    height: 80px;
    padding-left:30px;
}
table td{
    text-align: left;
}
</style>
</head>
<body>
  <div class="navbar">
  <a href="/logout">Logout</a>
        <a href="/profile">Profile</a>
        <a href="/rms">View Msg</a>
        <a href="/viewpol1">HigherUps</a>
        <a href="/viewmessage1">My Msg</a>
        <a href="/sendmessage">SnD Msg</a>
        <a href="/feed">Feed</a>
        <a href="/userhome">Home</a>
  </div>
<form method="post">
<center>
<%
try
{
  String email=(String)request.getSession().getAttribute("email");

Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/hi1";
String username="root";
String password="N-spartaic12";
String query= "SELECT * from sdpsm";
Connection conn=DriverManager.getConnection(url,username,password);
PreparedStatement stmt=conn.prepareStatement("SELECT * from sdpsign where email=?");
stmt.setString(1,email);
ResultSet rs=stmt.executeQuery();
while(rs.next())
{

%>
<!-- <table style="width:75%">
<tr>
<th>Email</th>
<td><%=rs.getString("email") %></td>
</tr>
<tr>
<th>Fullname</th>
<td><%=rs.getString("fullname") %></td>
</tr>
<tr>
<th>Mobile Number</th>
<td><%=rs.getString("mobile") %></td>
</tr>
<tr>
</table> -->


<table>
  <tr>
  <th>Email</th>
  <td><%=rs.getString("email") %></td>
  </tr>
  <tr>
  <th>Fullname</th>
  <td><%=rs.getString("fullname") %></td>
  </tr>
  <tr>
  <th>Mobile Number</th>
  <td><%=rs.getString("mobile") %></td>
  </tr>
  <tr>
  </table>


        <%

}
%>
    </table>
    </center>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>
</body>
</html>