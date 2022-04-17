<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Homepage</title>
<style type="text/css">
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
 
}

.homebody {
	 background-image: url("img/photo-1473187983305-f615310e7daa.avif");
  background-size: 100%;
  background-repeat: no-repeat;
}

.topnav {
  overflow: hidden;
  background-color: #333;
  opacity: 0.9; 
  filter: alpha(opacity=50);
  
}
#myTopnav {
position: fixed;
  top: 0;
  width: 100%;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #c1fdc5;
  color: black;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}

footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #333;
   color: white;
   text-align: center;
   opacity: 0.9; 
  filter: alpha(opacity=50);
}

.fa {
  padding: 10px;
  font-size: 10px;
  width: 20px;
  text-align: center;
  text-decoration: none;
  border-radius: 50%;
  margin: 1px 10px;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}
</style>
</head>
<body class="homebody" style="background-color: #000000" >   
<div class="topnav" id="myTopnav">
  <a href="/" class="active"><strong>A</strong><strong>B</strong><strong>C</strong> <strong>C</strong>ars</a>
  <a href="/login" style = "float:right;">Login</a>
  <a href="/myregister" style = "float:right;">Register</a>
  <a href="/contactus" style = "float:right;">Contact Us</a>
  <a href="/aboutus" style = "float:right;">About Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
   
   <footer class="footer py-4 bg-dark text-light"> 
        <div class="container text-center">
            <p class="mb-4 small">Copyright 2022 &copy; Know Your Neighborhood</p>
            <div class="social-links">
                <a href="#" class="fa fa-facebook"></a>
                <a href="#" class="fa fa-twitter"></a>
                <a href="#" class="fa fa-linkedin"></a>
            </div>
        </div>
    </footer>
    
    <script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
</body>
</html>