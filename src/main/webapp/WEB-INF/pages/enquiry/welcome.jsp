 <%-- 
    Document   : welcome
    Created on : Feb 24, 2020, 5:27:54 PM
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

  <title>Welcome</title>
  <link rel="icon" type="image/jpg" href="images/graduation.jpg"/>
   <!-- Theme CSS -->
    <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/freelancer.css' /> "  rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/sb-admin-2.css' /> "  rel="stylesheet">
</head>

<body id="page-top">

  <!-- Navigation -->
   <ul class="navbar-nav ml-auto">
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Verify </a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
         
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">About</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="login">Log Out</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
   </ul>
            
   <div id="wrapper">

   
  <ul class="navbar-nav bg-secondary sidebar sidebar-brand-text accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="welcome">
        <div class="sidebar-brand-icon">
          <i class="fas fa-home"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Home</div>
      </a>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-school"></i>
          <span>University</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        </div>
      </li>

      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <li class="nav-item">
        <a class="nav-link" href="secondary">
          <i class="fas fa-fw fa-school"></i>
          <span>Secondary</span></a>
      </li>
      <hr class="sidebar-divider">

        </ul> 

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
    
            <section class="page-section bg-primary text-white mb-0">
            <div class="container">
      <!-- About Section Heading -->
      <h1 style="text-align:center" class="masthead-heading text-uppercase mb-0"> Egerton University Students' Verification</h1>
       <form id="register_form">
        <table class="table-responsive-md">
            <tr>
                <td>
                    Search By REG NO
                    <input class="form-control" name="regNo" type="text" id="regNo" placeholder="S13/15308/16" pattern="[A-Z][0-9]+/[0-9]+\/[0-9]{2}$" title="Use this format A12/1234567/17" required>
               </td>
            </tr>
            <br>
           <tr>
               <td>
                    <label for="fname">First Name:</label>
                    <input type="text" class="form-control" placeholder="First Name" name="fname" pattern="[A-Za-z']+"  title="First Name should have Alphabetic characters only" required>
               </td>
               <td>
                    <label for="sname">Second Name:</label>
                    <input type="text" class="form-control" placeholder="Second Name" name="sname" pattern="[A-Za-z']+"  title="Second Name should have Alphabetic characters only" required>
               </td>
               <td>
                    <label for="lname">Last Name:</label>
                    <input type="text" class="form-control" placeholder="Last Names" name="lname" pattern="[A-Za-z']+"  title="Last Name should have Alphabetic characters only" required>
               </td>
           </tr>
           <tr>
               <td>
                <label for="Faculty" class="mt-3">Faculty</label>
                <input type="text" class="form-control" placeholder="Faculty" name="faculty" id="faculty">  
               </td>
               <td>
                    <label for="department" class="mt-3">Department</label>
                     <input type="text" class="form-control" placeholder="Department" name="department" id="department">     
               </td>
               <td>
                   <label for="course" class="mt-3">Course</label>
                    <input type="text" class="form-control" placeholder="Course" name="course" id="course">  
               </td>
           </tr>
           <tr>
               <td>
                    <label for="awardLevel" class="mt-3">Award</label>
                     <input type="text" class="form-control" placeholder="Award" name="award" id="awardLevel">  
               </td>
               <td>
                    <label for="graduationDate" class="mt-3">Graduation Date</label>
                    <input class="form-control" name="graduationDate" type="date" placeholder="MM/DD/YYYY" required>
                         
               </td>
           </tr>
           <tr>
           <td>
            <label for="certificate">Certificate</label>
                         <input type="file" class="form-control" accept="image/*" onchange="loadFile(event)" required>
                         <img id="myImage" height="100%" width="100%"/>
                            
           </td>   
           </tr>            
           
        </table>
                    </form>
                    </div>
     
            </div>
    </section>
          
      </div>
   </div>
   </div>
  </div>
  
        
        <!-- About Section -->
  <section class="page-section bg-secondary text-white mb-0" id="about">
    <div class="container">

      <!-- About Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-white">About</h2>

      <!-- Icon Divider -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- About Section Content -->
      <div class="row">
        <div class="col-lg-4 ml-auto">
          <p class="lead">We allow you to verify the details of any student from any institution of choice.</p>
        </div>
        <div class="col-lg-4 mr-auto">
          <p class="lead">True, correct , certified results, covering all institutions in Kenya.</p>
        </div>
      </div>

  </section>

         <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">

        <!-- Footer Location -->
        <div class="col-lg-6 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Contact</h4>
          <p class="lead mb-0">Email: lucienduta9148@verify.org.ke</p>
        </div>

       

        <!-- Footer About Text -->
        <div class="col-lg-6">
         <h4 class="text-uppercase mb-4">Services</h4>
          <p class="lead mb-0">Easy, free verification of details
            </p>
        </div>

      </div>
    </div>
  </footer>

  <!-- Copyright Section -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; Your Website 2020</small>
    </div>
  </section>

  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
  <div class="scroll-to-top d-lg-none position-fixed ">
    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
      <i class="fa fa-chevron-up"></i>
    </a>
  </div>

 
             

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
