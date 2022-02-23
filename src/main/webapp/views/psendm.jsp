<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>@SnD Message</title>
<link rel="stylesheet" href="/resources/css/psendm.css">
</head>
<body>
<body>
	<div class="navbar">
	<a href="/logout">Logout</a>
        <a href="/rms1">View Msg</a>
        <a href="/viewmessage2">My Msg</a>
        <a href="/sendmesp">SnD Msg</a>
        <a href="/pfeed">Feed</a>
        <a href="/polhome">Home</a>
  </div>
  <!-- <center>
   <div class="signin">
<form method="post" action="/sendp">
     <input type="email" name ="toemail" placeholder="enter to mail"/><br><br>
     <input type="text" name ="msg" placeholder="enter message"/><br><br>
     <input type="submit" value="Send Message"/><br><br>
     </form>
     </div>
     </center> -->
  
     
     
     <div class="login-box">
    <h2>Message Box</h2>
    <form name="f2" action="/sendp" method="post">
      <div class="user-box">
        <input type="email" name="toemail" required="true" autofocus="true">
        <label>E-mail</label>
      </div>
      <div class="user-box">
        <textarea name="msg" cols="25" required="true"></textarea>
        <label>Message</label>
      </div>
      <div class="user-box">
        <input type="text" name="msgtype" required="true">
        <label>MessageType</label>
      </div>
      <input type="submit" value="Send" onclick=check()>
    </form>
  </div>


  <script>
    function check() {
      var mtype = document.f2.msgtype.value;
      if (!(mtype=="public")) {
        alert("Message type should be either public");
      }
    }
  </script>

</body>
</html>