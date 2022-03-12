<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet' type='text/css' href="../templates/css/Customer.css">

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
  
<style>

body{
background-color: rgb(181, 223, 233);
}
* {
  box-sizing: border-box;
}
h2, p{
color: #65754D;
}


input[type=text], select, textarea {
  width: 80%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 35px;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  //float: center;
  align: center;
 
}

input[type=submit]:hover {
  background-color: #45a049;
  
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 60%;
}

.col-25 {
  float: left;
  width: 35%;
  margin-top: 6px;
  color: green;
}

.col-75 {
  float: left;
  width: 60%;
  margin-top: 6px;
}

::-webkit-input-placeholder {
  color: #AAAAAA;
  font-size: 13px;
}
::-moz-placeholder {
  color: peachpuff;
  font-size: 13px;
}
:-ms-input-placeholder {
  color: #AAAAAA;
  font-size: 13px;
}
::placeholder {
  color: #AAAAAA;
  font-size: 13px;
}


/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}



/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
/* @media screen and (max-width: 1000px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
} */
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
    
    <center><h2>CEPP</h2></center>
      <center><p>Please fill up the form to hire ..</p></center>
      

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
        <input type="text" id="Address" name="Address" placeholder="current address.." >
      </div>
    </div>
    
 
    <div class="row">
      <div class="col-25">
        <label for="Phone">Phone</label>
      </div>
      <div class="col-75">
        <input type="text" id="Phone" name="Phone" placeholder="current phone no.." >
      </div>
    </div>
    
   
    <div class="row">
      <div class="col-25">
        <label for="Plumber">Plumber</label>
      </div>
      <div class="col-75">
        <input type="text" id="Plumber" name="Plumber" placeholder="Number of plumber ...." >
      </div>
    </div>
    
    
    <div class="row">
      <div class="col-25">
        <label for="Carpentar">Carpentar</label>
      </div>
      <div class="col-75">
        <input  type="text" id="Carpentar" name="Carpentar" placeholder="Number of carpentar ...." >
      </div>
    </div>
    
    
    <div class="row">
      <div class="col-25">
        <label for="Painter">Painter</label>
      </div>
      <div class="col-75">
        <input type="text" id="Painter" name="Painter" placeholder="Number of painter ...." >
      </div>
    </div>
    
    
    <div class="row">
      <div class="col-25">
        <label for="Electrician">Electrician</label>
      </div>
      <div class="col-75">
        <input type="text" id="Electrician" name="Electrician" placeholder="Number of electrician ...." >
      </div>
    </div>
    
    <div class="row">
      <center><input type="submit" value="Submit"></center>
    </div>
    
  </form>
</div>     
</div>

<div class="col-sm-2 sidenav">
      <p><a href="#"></a></p>
      <p><a href="#"></a></p>
      <p><a href="#"></a></p>
    </div>
    
</div>
</div>

<footer class="container-fluid text-center">
  <p></p>
</footer>

</body>
</html>
 