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
<title>@My Messages</title>
<link rel="stylesheet" href="/resources/css/userhome.css">

<style type="text/css">


table{
    width: 800px;
    background-color: rgba(156, 144, 144, 0.397);
    margin-top: 150px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.425), 0 6px 20px 0 rgba(0, 0, 0, 0.425);
    font-family: sans-serif;
    border-collapse: collapse;
}
table .head{
    font-size: 17px;
    text-align: center;
    background-color: black;
    color: #fff;
}
table td{
   border-style: none;
   text-align: center;
    padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}



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
<table>
<tr class="head">
<td>SENT_TO</td>
<td>MESSAGE</td>
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
PreparedStatement stmt=conn.prepareStatement("SELECT * from sdpsm where value_from=?");
stmt.setString(1,email);
ResultSet rs=stmt.executeQuery();
while(rs.next())
{

%>
   <tr>
    <td><%=rs.getString("value_to") %></td>
     <td><%=rs.getString("valuemsg") %></td>
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