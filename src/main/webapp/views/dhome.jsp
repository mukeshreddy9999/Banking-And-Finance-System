<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<head>
    <title>@Connect</title>
    <link rel="icon" type="image/x-icon" href="resources/images/icon.jpg">
    <link rel="stylesheet" type="text/css" href="resources/css/dhome.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
</head>

<body>
    <div class="header">
        <p class="font-effect-fire">@Connect</p>
    </div>
    <div class="navbar" id="mynav">
        <a href="/signup">SignUp</a>
        <a href="/login">Login</a>
        <a href="/">Home</a>
    </div>
    <div class="main">
    <img src="resources/images/home1.jpeg">
        <div class="about">
        	<p><h2><b>About</b></h2>
                @Connect lets you to connect with the world.<br>
                Lets you share your problems.<br>
                Use @Connect to raise your voice and speak to the world.<br>
                Chat with the officials and resolve your issues.<br><br>
                <b>Steps To work with @Connect</b><br>
                -> SignUp from the page and Login as a User.<br>
                -> Send or Post a message through the SnDMsg<br>
                -> A message can be either public or private.<br>
                -> All public posts are reflected in the Feed.<br>
                -> Posts that are meant for you are available in the View Message page.<br> <br>
        	</p>
        </div>
        <div class="prob">
            <h2><b>Problems one can share about</b></h2>
            <img src="resources/images/home7.jpg"/>
            <img src="resources/images/home4.jpg"/>
            <img src="resources/images/home5.jpg"/>
            <img src="resources/images/home6.jpg"/>
        </div>
        <div class="creator">

        </div>
    </div>
    <div class="footer">
        <p>@Copyright Batch B-226</p>
    </div>
    <script>
        // When the user scrolls the page, execute myFunction
        window.onscroll = function () { myFunction() };

        // Get the header
        var header = document.getElementById("mynav");

        // Get the offset position of the navbar
        var sticky = header.offsetTop;

        // Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
        function myFunction() {
            if (window.pageYOffset > sticky) {
                header.classList.add("sticky");
            } else {
                header.classList.remove("sticky");
            }
        }
    </script>
</body>

</html>