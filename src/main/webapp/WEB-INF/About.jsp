<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>About Us</title>
<style type="text/css">
h1,
p {
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
.au1 {
  background-color:  #f2f2f2;
  text-align: center;
  padding: 50px;
}

.autitle {
margin-top: 80px;
  font-size: 25px;
  color: #123C69;
}

.au1-container {
  display: flex;
  width: 100%;
  justify-content:space-around;
}

.au1-item {
  padding: 95px;
  justify-content: center;
  align-items: center;
  background-color: #c1fdc5;
}

.au2 p,
.au3 p,
.au2 h1, 
.au3 h1 {
  padding: 20px 40px;
  margin: 0 auto;
}

.au5 {
  background-color: #EEE2DC;
}

.au5 h1 {
  margin-top: 0;
  padding-top: 10px;
}

.au4 .autitle,
.au5 .autitle {
  text-align: center;
}

.au1 p,
.au2 p,
.au3 p,
.au4 p,
.au5 p {
  color: #123C69;
}

.au4 {
  background-color: #BAB2B5;
}

.au4 .autitle {
  margin: 0 auto;
  padding: 20px 0;
}

.au2-container {
  display: flex;
  width: 100%;
  flex-wrap: wrap;
  justify-content: space-evenly;
}

.au2-item {
  align-items: center;
  padding: 20px;
  margin: 10px 60px;
}

.au2-item img {
  width: 200px;
  height: 250px;
}

.au2-item p {
  text-align: center;
}

.au3-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
}

.au3-item {
  text-align: center;
}

.au3-item img {
  width: 250px;
  height: 300px;
}

.au3-item h2 {
  color: #123C69;
}

.au3-item p,
.au3-item h2 {
  margin: 5px auto;
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
<body class="homebody">   
<div class="topnav" id="myTopnav">
  <a href="/" ><strong>A</strong><strong>B</strong><strong>C</strong> <strong>C</strong>ars</a>
  <a href="/login" style = "float:right;">Login</a>
  <a href="/myregister" style = "float:right;">Register</a>
  <a href="/contactus" style = "float:right;">Contact Us</a>
  <a href="/aboutus" style = "float:right;" class="active">About Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<main>
<section class="au1">
        <section class="contentwrap">
            <h1 class="autitle">About Us</h1>
            <p>We're a learning institution, in the hope of honing our students skills so that they can use it in the real world.
                We're focused on teaching the youth about today's technology so that they could further improve it or change the world
                one day in the future. Together we will grow and become the people who will give our futures a hope.
            </p>
        </section>
    </section>
    
    <section class="au1-container">
        <section class="au1-item">
            <section class="au2">
                <h1 class="autitle">Our Mission</h1>
                <p>Our mission is to reach every individual that has the potential, and we will personally mold them
                to become one of the people who will make an impact in the future. Our institution, guarantees the
                quality of our learning system, and the proof are seen within our alumni students, who have already
                graduated and are already using the skills we have taught them in the real world.
                </p>
            </section> 
        </section>

        <section class="au1-item">
            <section class="au3">
                <h1 class="autitle">Our Vision</h1>
                <p>Our vision is to be the top institution to offer quality technological education for our goal is for
                    future and wellbeing of everyone to be of high quality. It is our vision to produce quality trained individuals
                    who will be ready to take on the challenges of the world. Lastly, to multiply our locations to reach all children
                    that have the potential to learn and succeed.
                </p>
            </section>    
        </section>
    </section>
</main>
   
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