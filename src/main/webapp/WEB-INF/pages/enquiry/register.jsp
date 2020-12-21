<%-- 
    Document   : register
    Created on : Dec 26, 2019, 1:18:34 PM
    Author     : user
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Registration page</title>
    <link type="image/jpg" href="<c:url value='/libs/bootstrap/images/graduation.jpg'/>" rel="icon">

  <!-- Theme CSS -->
    <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/freelancer.css' /> "  rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/sb-admin-2.css' /> "  rel="stylesheet">
  

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Verify </a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
         
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="login">Sign In</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

        <section class="page-section" style="background-image:url(value='/libs/bootstrap/images/graduation_hat.jpg')">  
        <div class="container">
             <h4 class="text-success text-center mt-3">${info1}</h4>
            <h4 class="text-success text-center mt-3">${info2}</h4>
           
            <div class="row mt-3">
                <div class="col-md-2">                     
                </div>
                <div class="col-md-8" style="margin-right:20px">
                    <div style="width:650px;padding:25px;border:25px solid #28a745; margin:25px; background-color:white"> 
                         <h1 style="text-align:center" class="masthead-heading text-uppercase mb-0">Register</h1>
                    <form id="register_form" action="signup" method="post" onsubmit="return validateForm()">
                         <label for="fname">First Name:</label>
                         <input type="text" class="form-control" placeholder="First Name" name="fname" id="fname" pattern="[A-Za-z']+"  title="First Name should have Alphabetic characters only" required>
                         <label for="sname" class="mt-3">Second Name:</label>
                         <input type="text" class="form-control" placeholder="Second Name" name="sname" id="sname" pattern="[A-Za-z']+" title="Second Name should have Alphabetic characters only" required>
                         <label for="username" class="mt-3">Username</label>
                         <input class="form-control" type="text" placeholder="Username" id="username" name="username" required> 
                         <label for="email" class="mt-3">Email Address</label>
                         <input class="form-control" name="email" type="text" id="email" placeholder="abcdef@ijkl.xyz" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Use the correct format -----@---.----" required>
                         <label for="password" class="mt-3">Password:</label>
                         <input class="form-control" name="password" type="password" id="password" placeholder="Password..." pattern=".{6,}" title="Must contain 6 or more characters" required>
                         <div class="mt-3">
                             <input type="submit" name="submit" value="Register" class="form-control btn-success">
                         </div>
                    </form>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
        </section>
   <script type="text/javascript">
    function validateForm(){
    var fname = document.forms["register_form"]["fname"].value;
    var sname = document.forms["register_form"]["sname"].value;
    var username=document.forms["register_form"]["username"].value;
    var email=document.forms["register_form"]["email"].value; 
    var password = document.forms["register_form"]["password"].value;
    var letters = /^[A-Za-z]+$/;
      
   if(fname === ""){
    	 alert("Enter Your First Name");
    	 return false;
     }
     if(letters.test(fname) === false)
		{
	
		alert("First Name must have alphabet characters only");
		
		return false;
		}
                
    if(sname === ""){
    	 alert("Enter Your Second Name");
    	 return false;
     }
     if(letters.test(sname) === false)
		{
		alert("Second Name must have alphabet characters only");
		return false;
		}  
                
    if(username === ""){
    	 alert("Enter Your UserName");
    	 return false;
     }
     if(letters.test(username) === false)
		{
	
		alert("UserName must have alphabet characters only");
		
		return false;
		}            
    if(email === ""){
         alert("Enter Your Email Address");
         return false;
     }
    if(password === ""){
    	 alert("Enter Your Password");
    	 
    	 return false;
     }
    
    </script>
     <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/freelancer.min.js"></script> 
    </body>
</html>
