<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="st" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<link rel="stylesheet" href="style.css?version=51">
<link rel="stylesheet" href="showstyle.css?version=51">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="showbody">
<body class="showbody">
<div class="topnav" id="myTopnav">
    <a href="/apage" ><strong>A</strong><strong>B</strong><strong>C</strong> <strong>C</strong>ars</a>
  <form action="/logout">
  <a href="/logout" style = "float:right;">Logout</a>
  </form>
  <a href="/usershow" style = "float:right;" class="active">Show Users</a>
  <a href="/show" style = "float:right;">Show Cars</a>
  <a href="/search" style = "float:right;">Search Cars</a>
  <a href="add" style = "float:right;">Add Cars</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div>
<table id="customers">
<tr>
<th>User Id</th>
<th>Username</th>
<th>Password</th>
<th>Email</th>
<th>Role</th>
<th>Action</th>
</tr>

<st:forEach var="u" items="${show}">
<tr>
<td>${u.userId}</td>
<td>${u.userName}</td>
<td>${u.passWord}</td>
<td>${u.mailid}</td>
<td>${u.role}</td>
<td>
<a href="/deleteuser?id=${u.userId}" class="button deleteb">Delete</a>
<a href="/listuser/update/${u.userId}" class="button updateb">Update</a>
</td>
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