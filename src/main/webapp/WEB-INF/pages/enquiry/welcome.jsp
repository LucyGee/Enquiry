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
  <link type="image/jpg" href="<c:url value='/libs/bootstrap/images/graduation.jpg'/>" rel="icon">
   <!-- Theme CSS -->
    <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/freelancer.css' /> "  rel="stylesheet">
    <link type="text/css" href="<c:url value='/libs/bootstrap/dist/css/sb-admin-2.css' /> "  rel="stylesheet">
	 <link type="text/css" href="<c:url value="/libs/select2/select2.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/libs/select2/select2-bootstrap.css"/>" rel="stylesheet">
	<script src="<c:url value='/libs/jquery/dist/jquery.min.js' /> "></script>
    <script src="<c:url value="/libs/select2/select2.js"/>"></script>
    <script src="<c:url value="/libs/moment/moment.js"/>"></script>
    <script src="<c:url value="/libs/bootstrap/js/modal.js"/>"></script>

    <script src="<c:url value='/js/fileinput.min.js' /> "></script>




    <script type="text/javascript" src="<c:url value='/libs/DataTables/media/js/jquery.dataTables.min.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/dataTables.buttons.min.js' /> "></script>

    <script type="text/javascript" src="<c:url value='/js/buttons.html5.min.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/buttons.print.min.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/buttons.flash.min.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/vfs_fonts.js' /> "></script>
    <script type="text/javascript" src="<c:url value='/js/jszip.min.js' /> "></script>

    <script type="text/javascript" src="<c:url value='/libs/DataTables/media/js/dataTables.bootstrap.js' /> "></script>

    <script type="text/javascript" src="<c:url value="/libs/js/dataTables.select.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/jquery.dataTables.multiselect.js"/>"></script>

    <script type="text/javascript" src="<c:url value="/libs/js/bootstrap-datetimepicker.js"/>"></script>
    <script src="<c:url value='/libs/js/bootbox.min.js' /> "></script>

    <%--<link rel="stylesheet" type="text/css" href="<c:url value='/libs/css/jquery-ui.min.css' />">--%>
    <link type="text/css" href="<c:url value='/libs/custom-broker.css' />">
    <script type="text/javascript" src="<c:url value="/js/utils/select2builder.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/modules/enquiry/api.js"/>"></script>
    <script>var ctx = "${pageContext.request.contextPath}"</script>
    <%--<link rel="stylesheet" type="text/css" href="<c:url value='/libs/css/jquery-ui.min.css' />">--%>
    <style>
      a {
  color: wheat;}
  </style>
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
         
          <span>University</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        </div>
      </li>

      
        </ul> 

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
    
            <section class="page-section bg-primary text-white mb-0">
            <div class="container">
      <!-- About Section Heading -->
      <h2>${message}</h2>
      <h1 style="text-align:center" class="masthead-heading text-uppercase mb-0"> Egerton University Students' Verification</h1>
      <div class="x_panel">
    <div class="x_title">
    	
        <h3> Student Details</h3>
    </div>
<div class="row" style="margin-top: 1em">
    <div class="col-md-offset-1 col-md-4 col-xs-12">
        <label for="regNo" class="control-label col-md-9">Search by RegNo<span class="required"></span></label>

        <div class="col-md-9 col-xs-12">
            <input type="hidden" id="stud-id" name="student"/>
            <input type="hidden" id="stud-fname">
            <div id="std-div" class="form-control"
                 select2-url="" >

            </div>
        </div>
</div>
</div>
    <form class="form-horizontal" id="student-form" style="margin-top: 2em">

        <div class="row" style="margin-top: 1em">
            <div class="col-md-6 col-xs-12">
                <label for="fname" class="control-label col-md-4">First Name<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="fname" id="fname" class="form-control" placeholder="" pattern="[A-Za-z']+"  title="First Name should have Alphabetic characters only" required>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <label for="mname" class="control-label col-md-4">Middle Name<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="mname" id="mname" class="form-control" pattern="[A-Za-z']+"  title="Middle Name should have Alphabetic characters only" placeholder="" required>
                </div>
            </div>
            
            </div>
        </div>
        <div class="row" style="margin-top: 1em">
            <div class="col-md-6 col-xs-12">
                <label for="lname" class="control-label col-md-4">Last Name<span class="required">*</span></label>
			
                <div class="col-md-6 col-xs-12">
                    <input name="lname" id="lname" class="form-control" pattern="[A-Za-z']+"  title="Last Name should have Alphabetic characters only" placeholder="" required>
                </div>
              </div>
          
            <div class="col-md-6 col-xs-12">
                <label for="regNo" class="control-label col-md-4">Reg No<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="regNo" id="regno" class="form-control" pattern="[A-Z][0-9]+/[0-9]+\/[0-9]{2}$" title="Use this format A12/1234567/17" placeholder="" required>
                </div>
            </div>
            
        </div>
        <div class="row" style="margin-top: 1em">
            <div class="col-md-6 col-xs-12">
                <label for="faculty" class="control-label col-md-4">Faculty<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                    <input name="faculty" id="faculty" class="form-control" placeholder="" required> 
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <label for="department" class="control-label col-md-4">Department<span class="required">*</span></label>
                <div class="col-md-6 col-xs-12">
                       <input name="department" id="department" class="form-control" placeholder="" required>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 1em">
            <div class="col-md-6 col-xs-12">
                <label for="course" class="control-label col-md-4">Course<span class="required">*</span></label>

                <div class="col-md-6 col-xs-12">
                  <input name="course" id="course" class="form-control" placeholder="" required> 
                </div>
                </div>
                <div class="col-md-6 col-xs-12">
                <label for="level" class="control-label col-md-4">Level<span class="required">*</span></label>
			
                <div class="col-md-6 col-xs-12">
                <input name="level" id="level" class="form-control" placeholder="" required>
                </div>
              </div>
            </div>
            
			<div class="row" style="margin-top: 1em">
			 <div class="col-md-6 col-xs-12">
                <label for="points" class="control-label col-md-4">Points<span class="required">*</span></label>
			
                <div class="col-md-6 col-xs-12">
                    <input name="points" id="points" class="form-control" required>
                </div>
              </div>
				<div class="col-md-6 col-xs-12">
                <label for="graduationDate" class="control-label col-md-4">Graduation Date<span class="required">*</span></label>
			
                <div class="col-md-6 col-xs-12">
					 <div class='input-group date datepicker-input'>
                        <input type='text' class="form-control pull-right" name="completionDate" id="graduationDate"/>
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </div>
                    </div>               
                     </div>
              </div>
          	</div>
       
        <div class="row" style="margin-top: 1em">
            <div class="col-md-6 col-xs-12 form-required">
				<label for="student_photo" class="control-label col-md-4">Student Photo<span class="required">*</span></label>
				
                <div class="col-md-6 col-xs-12">
                    <div class="kv-avatar center-block" style="height:15em;width: 200px">
                        <input name="file" type="file" id="stud-avatar" class="file-loading">

                    </div>
                </div>
            </div>
           
        </div>
        </br>
		 
    </form>
    <div class="row" style="margin-top: 4em">
    	<form id="cert_form" action="<c:url value="/api/cert"/>" method="get">
    	<input type="hidden" name="regNo" id="certRegNo">
            <input type="submit" id="certButton" value="To See Certificate" class="btn btn-dark">
            </form>
       	</div>
</div>
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

 
  
    </body>
</html>
