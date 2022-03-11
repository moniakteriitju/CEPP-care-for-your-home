<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<h2>Responsive Form</h2>
<p>Resize the browser window to see the effect. When the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other.</p>

<div class="container">
  <form action="/action_page.php" >
    <div class="row">
    
      <div class="col-25">
        <label for="fname">Id</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="Id" placeholder="Your id..">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="lname">Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="name" placeholder="Your name..">
      </div>
    </div>
    
      
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Address</label>
      </div>
      <div class="col-75">
        <input type="text" id="subject" name="address" placeholder="Write something.." >
      </div>
    </div>
    
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Phone</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="phone" placeholder="Write something.." ></textarea>
      </div>
    </div>
    
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Plumber</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="plumber" placeholder="Write something.." ></textarea>
      </div>
    </div>
    
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Carpentar</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="Carpentar" placeholder="Write something.." ></textarea>
      </div>
    </div>
    
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Painter</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="painter" placeholder="Write something.." ></textarea>
      </div>
    </div>
    
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Electrician</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="electrician" placeholder="Write something.." ></textarea>
      </div>
    </div>
    
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>

</body>
</html>