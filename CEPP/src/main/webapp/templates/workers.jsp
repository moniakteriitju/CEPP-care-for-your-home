<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>



<%--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1" style="background-color:red; ">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone_Number</th>
		<th>Email_Id</th>
		<th>Gender</th>
		<th>Type</th>
		<th>Age</th>
		
	</tr>
	<c:forEach items="${workerList}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone_number}"/></td>
    	<td><c:out value="${user.email_id}"/></td>
    	<td><c:out value="${user.gender}"/></td>
    	<td><c:out value="${user.type}"/></td>
    	<td><c:out value="${user.age}"/></td>
    </tr>
</c:forEach>
</table>




<table border="1" style="background-color:blue; ">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone_Number</th>
		<th>Email_Id</th>
		<th>Gender</th>
		<th>Type</th>
		<th>Age</th>
		
	</tr>
	<c:forEach items="${workerList2}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone_number}"/></td>
    	<td><c:out value="${user.email_id}"/></td>
    	<td><c:out value="${user.gender}"/></td>
    	<td><c:out value="${user.type}"/></td>
    	<td><c:out value="${user.age}"/></td>
    </tr>
</c:forEach>
</table>




<table border="1" style="background-color:red; ">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone_Number</th>
		<th>Email_Id</th>
		<th>Gender</th>
		<th>Type</th>
		<th>Age</th>
		
	</tr>
	<c:forEach items="${workerList3}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone_number}"/></td>
    	<td><c:out value="${user.email_id}"/></td>
    	<td><c:out value="${user.gender}"/></td>
    	<td><c:out value="${user.type}"/></td>
    	<td><c:out value="${user.age}"/></td>
    </tr>
</c:forEach>
</table>



<table border="1" style="background-color:red; ">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone_Number</th>
		<th>Email_Id</th>
		<th>Gender</th>
		<th>Type</th>
		<th>Age</th>
		
	</tr>
	<c:forEach items="${workerList4}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone_number}"/></td>
    	<td><c:out value="${user.email_id}"/></td>
    	<td><c:out value="${user.gender}"/></td>
    	<td><c:out value="${user.type}"/></td>
    	<td><c:out value="${user.age}"/></td>
    </tr>
</c:forEach>
</table>



</body>
</html> --%>








<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    .dtable
    {
       weidth:10%!important;
       background-color:red;
    }
    
    th,tr,td
    {
     weidth:10%!important;
    }
    
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Messages</a></li>
      </ul>
      <form class="navbar-form navbar-right" role="search">
        <div class="form-group input-group">
          <input type="text" class="form-control" placeholder="Search..">
          <span class="input-group-btn">
            <button class="btn btn-default" type="button">
              <span class="glyphicon glyphicon-search"></span>
            </button>
          </span>        
        </div>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> My Account</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container text-center">    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <p><a href="#">My Profile</a></p>
        <img src="bird.jpg" class="img-circle" height="65" width="65" alt="Avatar">
      </div>
      <div class="well">
        <p><a href="#">Interests</a></p>
        <p>
          <span class="label label-default">News</span>
          <span class="label label-primary">W3Schools</span>
          <span class="label label-success">Labels</span>
          <span class="label label-info">Football</span>
          <span class="label label-warning">Gaming</span>
          <span class="label label-danger">Friends</span>
        </p>
      </div>
      <div class="alert alert-success fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">�</a>
        <p><strong>Ey!</strong></p>
        People are looking at your profile. Find out who.
      </div>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-7">
    
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="true"  class="heading">Care For Your Home-<span style="color:Green">The CEPP</span></p>
                
            </div>
          </div>
        </div>
      </div>
      
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Our Carpenters</p>
           <img src="bird.jpg" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
             <table border="1" classs="dtable"  style="background-color:white; width:20% ">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone_Number</th>
		<th>Email_Id</th>
		<th>Gender</th>
		<th>Type</th>
		<th>Age</th>
		
	</tr>
	<c:forEach items="${workerList}" var="user">
	<tr>
    	<td  style="background-color:white; width:20%; "><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone_number}"/></td>
    	<td><c:out value="${user.email_id}"/></td>
    	<td><c:out value="${user.gender}"/></td>
    	<td><c:out value="${user.type}"/></td>
    	<td><c:out value="${user.age}"/></td>
    </tr>
</c:forEach>
</table>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Our Painters</p>
           <img src="bandmember.jpg" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
           <table border="1" class="dtable"  style="background-color:white; width:20%; ">
	    <tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone_Number</th>
		<th>Email_Id</th>
		<th>Gender</th>
		<th>Type</th>
		<th>Age</th>
		
	</tr>
	<c:forEach items="${workerList2}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone_number}"/></td>
    	<td><c:out value="${user.email_id}"/></td>
    	<td><c:out value="${user.gender}"/></td>
    	<td><c:out value="${user.type}"/></td>
    	<td><c:out value="${user.age}"/></td>
    </tr>
</c:forEach>
</table>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Our Plumbers</p>
           <img src="bandmember.jpg" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
          <table border="1" style="background-color:white; width:20%; ">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone_Number</th>
		<th>Email_Id</th>
		<th>Gender</th>
		<th>Type</th>
		<th>Age</th>
		
	</tr>
	<c:forEach items="${workerList3}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone_number}"/></td>
    	<td><c:out value="${user.email_id}"/></td>
    	<td><c:out value="${user.gender}"/></td>
    	<td><c:out value="${user.type}"/></td>
    	<td><c:out value="${user.age}"/></td>
    </tr>
</c:forEach>
</table>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Our Electricians</p>
           <img src="bird.jpg" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
           <table border="1" class="dtable"  style="background-color:white; width:20%; ">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone_Number</th>
		<th>Email_Id</th>
		<th>Gender</th>
		<th>Type</th>
		<th>Age</th>
		
	</tr>
	<c:forEach items="${workerList4}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone_number}"/></td>
    	<td><c:out value="${user.email_id}"/></td>
    	<td><c:out value="${user.gender}"/></td>
    	<td><c:out value="${user.type}"/></td>
    	<td><c:out value="${user.age}"/></td>
    </tr>
</c:forEach>
</table>
          </div>
        </div>
      </div>     
    </div>
    <div class="col-sm-2 well">
      <div class="thumbnail">
        <p>Upcoming Events:</p>
        <img src="paris.jpg" alt="Paris" width="400" height="300">
        <p><strong>Paris</strong></p>
        <p>Fri. 27 November 2015</p>
        <button class="btn btn-primary">Info</button>
      </div>      
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
