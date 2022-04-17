<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="st" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Car</title>
<link rel="stylesheet" href="style.css?version=51">
<link rel="stylesheet" href="showstyle.css?version=51">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
      margin-left: auto;
    margin-right: auto;
    margin-top: 80px;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}
#customers tr:nth-child(odd){background-color: #4d4d4d; color: white}

#customers tr:hover {background-color: #0db04a;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #c1fdc5;
  color: black;
}

.button {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 3px 6px;
  font-size: 10px;
  cursor: pointer;
  text-decoration: none;
  
}

a.button.updateb {
	border-color: #04AA6D;
  	color: green;
}

a.button.deleteb {
	border-color: #f44336;
  	color: red
}

a.button.updateb:hover {
	background-color: #04AA6D;
  	color: #ffffff;
}

a.button.deleteb:hover {
  background: #f44336;
  color: #ffffff;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
 
}

.homebody {
	 background-image: url("img/photo-1473187983305-f615310e7daa.avif");
  background-size: 100%;
  background-repeat: no-repeat;
}

.addbody {
	background-image: url("img/photo-1562280963-8a5475740a10.avif");
  background-repeat: no-repeat;
}

.showbody {
	 background-image: url("img/photo-1575663620136-5ebbfcc2c597.avif");
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
<body class="showbody">
<body class="showbody">
<div class="topnav" id="myTopnav">
    <a href="/apage" ><strong>A</strong><strong>B</strong><strong>C</strong> <strong>C</strong>ars</a>
  <form action="/logout">
  <a href="/logout" style = "float:right;">Logout</a>
  </form>
  <a href="/usershow" style = "float:right;">Show Users</a>
  <a href="/show" class="active" style = "float:right;">Show Cars</a>
  <a href="/search" style = "float:right;">Search Cars</a>
  <a href="add" style = "float:right;">Add Cars</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div>
<table id="customers">
<tr>
<th>Car Id</th>
<th>Registration Name</th>
<th>Car Model</th>
<th>Car Price</th>
<th>Car Image</th>
</tr>

<st:forEach var="car" items="${Tony}">
<tr>
<td>${car.carId}</td>
<td>${car.carRegNumber}</td>
<td>${car.carModel}</td>
<td>${car.carPrice}</td>
<td><img src="/uploads/${car.fileName}" width="270" height="250" /> </td>
</tr>
</st:forEach>
</table>
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