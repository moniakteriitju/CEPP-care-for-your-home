<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet' type='text/css' href='css/Customer.css'>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <style>
 input[type=text], select {
  width: 50%;
  padding: 6px 20px;
  margin: 1px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 25%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 1px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 2px;
  background-color: #f2f2f2;
  padding: 20px;
}

.row {
  margin: auto;
  width: 60%;
  border: 3px solid #73AD21;
  padding: 10px;
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
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
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
    
    <h1>CEPP</h1>
      <p>Please fill up the form to hire ..</p>
      <hr>

<div class="container">

  <form action="/CEPP/CustomerServlet" method="POST">
  
    <div class="row">
      <div class="col-25">
        <label for="id">NID</label>
      </div>
      <div class="col-75">
        <input type="text" id="id" name="id" placeholder="Your Nid..">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="Name">Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="Name" name="Name" placeholder="Your name..">
      </div>
    </div>
    
      
   
    <div class="row">
      <div class="col-25">
        <label for="Address">Address</label>
      </div>
      <div class="col-75">
        <input type="text" id="Address" name="Address" placeholder="Write your present current address.." >
      </div>
    </div>
    
 
    <div class="row">
      <div class="col-25">
        <label for="Phone">Phone</label>
      </div>
      <div class="col-75">
        <input type="text" id="Phone" name="Phone" placeholder="Type your current phone no.." >
      </div>
    </div>
    
   
    <div class="row">
      <div class="col-25">
        <label for="Plumber">Plumber</label>
      </div>
      <div class="col-75">
        <input type="text" id="Plumber" name="Plumber" placeholder="Number of plumbers needed.." >
      </div>
    </div>
    
    
    <div class="row">
      <div class="col-25">
        <label for="Carpentar">Carpentar</label>
      </div>
      <div class="col-75">
        <input  type="text" id="Carpentar" name="Carpentar" placeholder="Number of carpentar needed.." >
      </div>
    </div>
    
    
    <div class="row">
      <div class="col-25">
        <label for="Painter">Painter</label>
      </div>
      <div class="col-75">
        <input type="text" id="Painter" name="Painter" placeholder="Number of painter needed.." >
      </div>
    </div>
    
    
    <div class="row">
      <div class="col-25">
        <label for="Electrician">Electrician</label>
      </div>
      <div class="col-75">
        <input type="text" id="Electrician" name="Electrician" placeholder="Number of electrician needed.." >
      </div>
    </div>
    
    <div class="row">
      <input type="submit" value="Submit">
    </div>
    
  </form>
  
   
 </div> 
  
</div>

</div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
 