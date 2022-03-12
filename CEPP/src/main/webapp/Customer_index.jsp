<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' type='text/css' href="../templates/css/Customer.css">
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<style>

body{
background-color: rgb(181, 223, 233);
}
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  text-align: center;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #grey;}
#customers tr:nth-child(odd){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #04AA6D;
  color: white;
}
</style>

</head>
<body>

<!-- Bootstrap Starts -->


 

 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <!--  <a class="navbar-brand" href="#">Logo</a> -->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Home</a></li>
        <li><a href="#">Register</a></li>
        <li><a href="#">Worker List</a></li>
        <li><a href="#">Hire</a></li>
        <li><a href="#">About Us</a></li>
      </ul>
      <!-- <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul> -->
    </div>
  </div>
</nav> 
   
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#"></a></p>
      <p><a href="#"></a></p>
      <p><a href="#"></a></p>
    </div>

<div class="col-sm-8 text-left">
    
    <center><h2>Customer's</h2></center>
      <center><p>Information And Requirement Table</p></center>
          
<table border="1" id="customers">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone</th>
		<th>Plumber</th>
		<th>Carpentar</th>
		<th>Painter</th>
		<th>Electrician</th>
	</tr>
	<c:forEach items="${userList}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone}"/></td>
    	<td><c:out value="${user.plumber}"/></td>
    	<td><c:out value="${user.carpentar}"/></td>
    	<td><c:out value="${user.painter}"/></td>
    	<td><c:out value="${user.electrician}"/></td>
    </tr>
</c:forEach>
</table>
</div></div></div>
</body>
</html>