    <html lang = "en">  
       <head>  
          <meta charset = "utf-8">  
          <meta name = "viewport" content = "width = device-width, initial-scale = 1, shrink-to-fit = no">  
          <link rel = "stylesheet"   
             href = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"  
             integrity = "sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"   
             crossorigin = "anonymous">         
          <title>  Registration Form </title>  
          <style>  
                 body 
                 {  
                      color: green;  
                       background-size: cover;
                       background-position:left;
                       height: 150vh;
             
                      
                 }  
          </style>  
       </head>  
       <body>  
    <section class="h-100 bg-dark">  
      <div class="container py-5 h-100">  
        <div class="row d-flex justify-content-center align-items-center h-100">  
          <div class="col">  
            <div class="card card-registration my-4">  
              <div class="row g-0">  
                <div class="col-xl-6 d-none d-xl-block">  
                  <img  
                    src="regimg.PNG"  
                    alt="Sample photo"  
                    class="img-fluid"  
                    style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;"  
                  />  
                </div>  
                <div class="col-xl-6">  
                  <div class="card-body p-md-5 text-black">  
                    <h3 class="mb-5 text-uppercase"> registration form </h3>  
                    
                    
                   
                    
                     <form action="/CEPP/UserRegistrationServlet" method="POST">
  <label for="id">ID:</label><br>
  <input type="text" id="id" name="id"><br>
  
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name"><br>
  
  <label for="address">Address:</label><br>
  <input type="text" id="address" name="address"><br>
  
  <label for="phone_number">Phone Number:</label><br>
  <input type="text" id="phone_number" name="phone_number"><br>
  
  <label for="email_id">Email ID:</label><br>
  <input type="text" id="email_id" name="email_id"><br>
  
  <label for="gender">Gender:</label><br>
  <input type="text" id="gender" name="gender"><br>
  
  <label for="type">Type:</label><br>
  <input type="text" id="type" name="type"><br>
  
    <label for="age">Age:</label><br>
  <input type="text" id="age" name="age"><br><br>
  
  
  
  
  <input type="submit" id="submit" name="Submit" value="Submit">
</form> 







<!--  
            
                   
                    <form action="/CEPP/UserRegistrationServlet" method="POST">
                    
                    
                    
                     <div class="form-outline mb-4">  
                      <input type="text" id="id" class="form-control form-control-lg" />  
                      <label class="form-label" for="id"> ID </label>  
                    </div> 
                    
                     <div class="form-outline mb-4">  
                      <input type="text" id="name" class="form-control form-control-lg" />  
                      <label class="form-label" for="name"> Name </label>  
                    </div> 
                     
                     
                   
                    <div class="form-outline mb-4">  
                      <input type="text" id="address" class="form-control form-control-lg" />  
                      <label class="form-label" for="address"> Address </label>  
                    </div> 
                     
                     <div class="form-outline mb-4">  
                      <input type="text" id="phone_number" class="form-control form-control-lg" />  
                      <label class="form-label" for="phone_number"> Phone Number </label>  
                    </div>  
                    
                     <div class="form-outline mb-4">  
                      <input type="text" id="email_id" class="form-control form-control-lg" />  
                      <label class="form-label" for="email_id">Email ID  </label>  
                    </div>
                    
                     <div class="form-outline mb-4">  
                      <input type="text" id="gender" class="form-control form-control-lg" />  
                      <label class="form-label" for="gender"> Gender </label>  
                    </div>
                    
                    
                     <div class="form-outline mb-4">  
                      <input type="text" id="type" class="form-control form-control-lg" />  
                      <label class="form-label" for="type"> Type </label>  
                    </div>
                    
                    
                     
                    
                    
                    
                    
                    
                    <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">  
                      <h6 class="mb-0 me-4"></h6> 
                    
                      <div class="form-check form-check-inline mb-0 me-4">  
                        <input  
                          class="form-check-input"  
                          type="radio"  
                          name="inlineRadioOptions"  
                          id="femaleGender"  
                          value="option1"  
                        />  
                        <label class="form-check-label" for=""> Female </label>  
                      </div>  
                      <div class="form-check form-check-inline mb-0 me-4">  
                        <input  
                          class="form-check-input"  
                          type="radio"  
                          name="inlineRadioOptions"  
                          id="maleGender"  
                          value="option2"  
                        />  
                        <label class="form-check-label" for="maleGender"> Male </label>  
                      </div>  
                      <div class="form-check form-check-inline mb-0">  
                        <input  
                          class="form-check-input"  
                          type="radio"  
                          name="inlineRadioOptions"  
                          id="otherGender"  
                          value="option3"  
                        />  
                        <label class="form-check-label" for="otherGender"> Other </label>  
                      </div>  
                    </div>  
                    <div class="row">  
                      
                      <div class="col-md-6 mb-4">  
                        <select class="select">  
                          <option value="1"> Painter </option>  
                          <option value="2">Carpenter </option>  
                          <option value="3">Electrician </option>  
                          <option value="3">plumber </option>  
                           
                        </select>  
                      </div>  
                    </div>  
                    
                   
                    
                    
                    
                    
                    
                    
                    <div class="form-outline mb-4">  
                      <input type="text" id="form3Example9" class="form-control form-control-lg" />  
                      <label class="form-label" for="form3Example9"> Age </label>  
                    </div>  
                    
                    
                  
                    
                    <div class="form-outline mb-4 custom-file">
                         <input type="file" class="custom-file-input" id="customFile">
                         <label class="custom-file-label" for="customFile">Choose Profile Picture</label>
                    </div>
                    
                    
                    
                   
                    
                     
                    <div class="d-flex justify-content-end pt-3">  
                      <button type="button" class="btn btn-warning btn-lg ms-2"> Submit form </button>  
                    </div>  
                    
                    
                    </form>
                    
                    -->
                    
               
                    
                    
                    
                  </div>  
                </div>  
              </div>  
            </div>  
          </div>  
        </div>  
      </div>  
    </section>  
    </body>  
    </html>  