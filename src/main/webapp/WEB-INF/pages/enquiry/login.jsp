<%-- 
    Document   : login
    Created on : Dec 26, 2019, 1:17:50 PM
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

  <title>Login page</title>
  <link rel="icon" type="image/jpg" href="images/graduation.jpg"/>

  <!-- Custom fonts for this theme -->
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
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="signup">Register</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

        
  <section class="page-section" style="background-image:url('images/graduation_hat.jpg')">
        <div class="container-fluid">
            <div class="text-center text-primary mt-5">
                 <h4 class="text-success text-center mt-3">${info3}</h4>
                
            </div>
            <div class="row mt-3">
               
                <div class="col-md-2">                    
                </div>
                <div class="col-md-8" style="margin-right:20px">
                    <div style="width:650px;padding:25px;border:25px solid #28a745; margin:25px; background-color:white"> 
                        <h1 style="text-align:center" class="masthead-heading text-uppercase mb-0">Login</h1>
                    <form action="login" method="post">
                         <label for="username" class="mt-3">Username</label>
                         <input type="text" class="form-control" name="username" placeholder="Username">
                         <label for="password" class="mt-3">Password</label>
                         <input class="form-control" name="password" type="password" placeholder="Password...">
                        
                         <div class="mt-3">
                             <input type="submit" name="submit" value="Login" class="form-control btn-success">
                         </div>
                    </form>
                    <div class="text-center pt-3">
                        <p>Don't have an account?<a href="signup">Register Here</a></p>
                    </div>
                    </div>
                    <div class="col-md-2">                    
                </div>
                </div>            
        </div>
        </div>
        </section>
        
    </body>
</html>
