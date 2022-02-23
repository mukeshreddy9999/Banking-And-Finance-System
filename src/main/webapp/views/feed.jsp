<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.servlet.*"%>
<%@ page import = "javax.servlet.http.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>@FEED</title>
<link rel="stylesheet" href="/resources/css/feed.css">


</head>


<body>
<div class="navbar" id="mynav">
	
	
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
<table>
<tr class="head">
  <td>SENT_FROM</td>
  <td>SENT_TO</td>
  <td>MESSAGE</td>
  <td>DATE</td>
  </tr>
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
PreparedStatement stmt=conn.prepareStatement("SELECT * from sdpsm where mtype='public' ");
//stmt.setString(1,email);
ResultSet rs=stmt.executeQuery();
while(rs.next())
{

%>
   <tr>
    <td><%=rs.getString("value_from") %></td>
    <td><%=rs.getString("value_to") %></td>
     <td><%=rs.getString("valuemsg") %></td>
     <td><%=rs.getString("date") %></td>
</tr>
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