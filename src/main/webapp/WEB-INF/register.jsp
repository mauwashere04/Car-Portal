<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="st" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="style.css?version=51">
<link rel="stylesheet" href="addstyle.css?version=51">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

body {
  align-items: center;
  background-color: #000;
  justify-content: center;
  height: 100vh;
  text-align: center;
}

.form {
  background-color: #15172b;
  border-radius: 20px;
  height: 500px;
  padding: 20px;
  width: 320px;
  display: inline-block;
  margin: 70px 10px;
}

.title {
  color: #eee;
  font-family: sans-serif;
  font-size: 36px;
  font-weight: 600;
  margin-top: 30px;
}

.subtitle {
  color: #eee;
  font-family: sans-serif;
  font-size: 16px;
  font-weight: 600;
  margin-top: 10px;
}

.input-container {
  height: 50px;
  position: relative;
  width: 100%;
}

.ic1 {
  margin-top: 40px;
}

.ic2 {
  margin-top: 30px;
}

.input {
  background-color: #303245;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  font-size: 18px;
  height: 100%;
  outline: 0;
  padding: 4px 20px 0;
  width: 100%;
}

.cut {
  background-color: #15172b;
  border-radius: 10px;
  height: 20px;
  left: 20px;
  position: absolute;
  top: -20px;
  transform: translateY(0);
  transition: transform 200ms;
  width: 130px;
}

.cut-short {
  width: 50px;
}

.input:focus ~ .cut,
.input:not(:placeholder-shown) ~ .cut {
  transform: translateY(8px);
}

.placeholder {
  color: #65657b;
  font-family: sans-serif;
  left: 20px;
  line-height: 14px;
  pointer-events: none;
  position: absolute;
  transform-origin: 0 50%;
  transition: transform 200ms, color 200ms;
  top: 20px;
}

.input:focus ~ .placeholder,
.input:not(:placeholder-shown) ~ .placeholder {
  transform: translateY(-30px) translateX(10px) scale(0.75);
}

.input:not(:placeholder-shown) ~ .placeholder {
  color: #808097;
}

.input:focus ~ .placeholder {
  color: #dc2f55;
}

.submit {
  background-color: #08d;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  cursor: pointer;
  font-size: 18px;
  height: 50px;
  margin-top: 38px;
  // outline: 0;
  text-align: center;
  width: 100%;
}

.submit:active {
  background-color: #06b;
}

</style>
</head>
<body>
<div class="topnav" id="myTopnav">
    <a href="/" ><strong>A</strong><strong>B</strong><strong>C</strong> <strong>C</strong>ars</a>
  <a href="/login" style = "float:right;">Login</a>
  <a href="/myregister" style = "float:right;" class="active">Register</a>
  <a href="/contactus" style = "float:right;">Contact Us</a>
  <a href="/aboutus" style = "float:right;">About Us</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div class="addbody" style="height: 100vh;
  background-size: cover;">
<st:form cssClass="form" action="myregistration" method="post" modelAttribute="myuser">
<div class="title">Register</div>
<div class="input-container ic1">
<st:input path="userName" type="text" cssClass="input" placeholder="" id="userName"/>
<div class="cut"></div>
<label class="placeholder">Username</label>
</div>

<div class="input-container ic2">
<st:input path="passWord" type="password" cssClass="input" placeholder=" " id="passWord"/>
<div class="cut"></div>
<label class="placeholder">Password</label>
</div>

<div class="input-container ic2">
<st:input path="mailid" type="email" cssClass="input" placeholder=" " id="mailid"/>
<div class="cut"></div>
<label class="placeholder">Email</label>
</div>

<button type="submit" value="Register" class="submit">Submit</button>
</st:form>
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