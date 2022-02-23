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
<title>@View Messages</title>
<link rel="stylesheet" href="/resources/css/polhome.css">


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
        <a href="/rms1">View Msg</a>
        <a href="/viewmessage2">My Msg</a>
        <a href="/sendmesp">SnD Msg</a>
        <a href="/pfeed">Feed</a>
        <a href="/polhome">Home</a>
  </div><br>

<form method="post">
<center>
<table >
<tr class="head">
<td>Sent from</td>
<td>Message</td>
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
PreparedStatement stmt=conn.prepareStatement("SELECT * from sdpsm where value_to=?");
stmt.setString(1,email);
ResultSet rs=stmt.executeQuery();
while(rs.next())
{

%>
   <tr>
    
    <td><%=rs.getString("value_from") %></td>
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