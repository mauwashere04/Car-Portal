<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="st" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Car</title>
<link rel="stylesheet" href="style.css?version=51">
<link rel="stylesheet" href="addstyle.css?version=51">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<div class="topnav" id="myTopnav">
  <a href="/apage" ><strong>A</strong><strong>B</strong><strong>C</strong> <strong>C</strong>ars</a>
  <form action="/logout">
  <a href="/logout" style = "float:right;">Logout</a>
  </form>
  <a href="/usershow" style = "float:right;">Show Users</a>
  <a href="/show" style = "float:right;">Show Cars</a>
  <a href="/search" style = "float:right;">Search Cars</a>
  <a href="/add" style = "float:right;" class="active">Add Cars</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div class="addbody" style="height: 100vh;
  background-size: cover;">
<st:form action="adddata" method="post" modelAttribute="ant" cssClass="form" enctype="multipart/form-data">
<div class="title">Add Car</div>

<div class="input-container ic1">
<st:input path="carId" type="text" cssClass="input" placeholder=" " id="carId"/>
<div class="cut"></div>
<label class="placeholder">Car Id</label>
</div>

<div class="input-container ic2">
<st:input path="carRegNumber" type="text" cssClass="input" placeholder=" " id="carRegNumber"/>
<div class="cut"></div>
<label class="placeholder">Registration Number</label>
</div>

<div class="input-container ic2">
<st:input path="carModel" type="text" cssClass="input" placeholder=" " id="carModel"/>
<div class="cut"></div>
<label class="placeholder">Car Model</label>
</div>

<div class="input-container ic2">
<st:input path="carPrice" type="text" cssClass="input" placeholder=" " id="carPrice"/>
<div class="cut"></div>
<label class="placeholder">Car Price</label>
</div>

<div class="input-container ic2">
<input type="file" name="file" class="input" placeholder=" " id="carImage" accept="image/png, image/jpeg"/>
<div class="cut"></div>
<label class="placeholder">Car Image</label>
</div>


<button type="submit" value="Add Store" class="submit">Submit</button>
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