<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.servlet.*"%>
<%@ page import = "javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
String query="select * from sdpsign";
int f=0,n=0;
try{

Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/hi1";
String username="root";
String pass="N-spartaic12";
Connection conn=DriverManager.getConnection(url,username,pass);

Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(query);
while(rs.next()){
	if(email.equals(rs.getString(1))){
		f=1;
		break;
	}
}
 if(f==1){
	PreparedStatement ps=conn.prepareStatement("update sdpsign set password=? where email =?");
	ps.setString(1,password);
	ps.setString(2,email);
    n=ps.executeUpdate();
    st.executeUpdate("commit");
	if(n>0){
		response.sendRedirect("/success");
	}
	
}
else{
	response.sendRedirect("/error");
}
conn.close();
}
catch(Exception e){
	 e.printStackTrace();
}

%>
</body>
</html>