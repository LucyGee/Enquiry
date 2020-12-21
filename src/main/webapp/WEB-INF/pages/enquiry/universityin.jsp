<%-- 
    Document   : universityin
    Created on : Aug 1, 2020, 10:11:59 PM
    Author     : user
--%>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Universityin</title>
  <link rel="icon" type="image/jpg" href="images/graduation.jpg"/>
  <!-- Custom fonts for this theme -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="css/freelancer.css" rel="stylesheet">
  <link href="css/sb-admin-2.css" rel="stylesheet">
   <style>
        .hide {
          display: none
        }
    </style>
</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Verify </a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-danger rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
         
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">About</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="login.jsp">Sign in</a>
          </li>
        </ul>
      </div> 
    </div>
  </nav>
  <section class="page-section bg-primary text-white mb-0">
      <h1 style="text-align:center" class="masthead-heading text-uppercase mb-0"> University Student Registry</h1>
       <div class="row mt-3">
                <div class="col-md-2">  
                      </div>
        <div class="col-md-8">
        <form id="register_form" action="Input" method="post">
        <table class="table-responsive-md">
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
                         <select class="form-control" id="faculty" name="faculty">
                                <option value="Science">Science</option>
                                <option value="Education">Education</option>
                                <option value="Agriculture">Agriculture</option>
                                <option value="Engineering">Engineering</option>
                            </select>   
               </td>
               <td>
                    <label for="department" class="mt-3">Department</label>
                    <select class="form-control" id="department" name="department">
                                <option value="ComputerScience" faculty="Science">Computer Science</option>
                                <option value="BioChemistry" faculty="Science">Bio Chemistry</option>
                                <option value="CommunityDevelopment" faculty="Education" class="hide">Community Studies and Development</option>
                                <option value="Education" faculty="Education" class="hide">Education</option>
                                <option value="AnimalScience" faculty="Agriculture"  class="hide">Animal Science</option>
                                <option value="AgribusinessManagement" faculty="Agriculture" class="hide">Agribusiness Management</option>
                                <option value="AgriculturalEngineering" faculty="Engineering" class="hide">Agriculture Engineering</option>
                                <option value="ElectricalEngineering" faculty="Engineering" class="hide">Electrical Engineering</option>
                    </select>   
               </td>
               <td>
                   <label for="course" class="mt-3">Course</label>
                         <select class="form-control" id="course" name="course">
                                <option value="ComputerScience" department="ComputerScience">Computer Science</option>
                                <option value="AppliedComputerScience" department="ComputerScience">Applied Computer Science</option>
                                <option value="Biochemisry" department="BioChemistry" class="hide">Bio Chemistry</option>
                                <option value="BioMedical" department="BioChemistry" class="hide">BioMedical Studies and Technology</option>
                                <option value="CommunityDevelopment" department="CommunityDevelopment" class="hide">Community Studies and Development</option>
                                <option value="Mathematics" department="Education" class="hide">Mathematics</option>
                                <option value="AgriculturalEducation" department="Education" class="hide">Agricultural Education and Extension</option>
                                <option value="AnimalScience" department="AnimalScience" class="hide">Animal Science</option>
                                <option value="Vetinary" department="AnimalScience" class="hide">Veterinary Education</option>
                                <option value="AgribusinessManagement" department="AgribusinessManagement" class="hide">Agribusiness Management</option>
                                <option value="Agronomics" department="AgribusinessManagement" class="hide">Agronomics</option>
                                <option value="AgriculturalEngineering" department="AgriculturalEngineering" class="hide">Agricultural Engineering</option>
                                <option value="ElectricalEngineering" department="ElectricalEngineering" class="hide">Electrical Engineering</option>
                                <option value="InstrumentalEngineering" department="ElectricalEngineering" class="hide">Instrumental Engineering</option>
                            </select> 
               </td>
           </tr>
           <tr>
               <td>
                    <label for="regNo" class="mt-3">RegNo</label>
                    <input class="form-control" name="regNo" type="text" placeholder="S13/15308/16" pattern="[A-Z][0-9]+/[0-9]+\/[0-9]{2}$" title="Use this format A12/1234567/17" required>
               </td>
               <td>
                    <label for="awardLevel" class="mt-3">Award</label>
                    <select class="form-control" id="awardLevel" name="awardLevel">
                            <option value="First Class Honours">First Class Honours</option>
                           <option value="Second Class Upper Division"> Second Class Upper Division</option>
                           <option value="Second Class Lower Division">Second Class Lower Division</option>
                           <option value="Pass">Pass</option>
                       </select>   
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
           <tr>   
               <td>
                         <div class="mt-3">
                             <input type="submit" name="submit" value="SUBMIT" class="form-control btn-success">
                         </div>
               </td>
           </tr>
        </table>
                    </form>
                    </div>
               
                <div class="col-md-2">
                </div>
       </div>
        </div>
        </section>
        <script>
document.getElementById('faculty').addEventListener("change", function() {
  var val = this.value;
  var options = document.getElementById('department').options;
  var new_val = null;
  for (var i = 0 ; i < options.length; i++) {
    if (options[i].attributes["faculty"].value === val) {
      if (!new_val) {
        new_val = options[i].value;
      }
      options[i].classList.remove("hide");
    } else {
      options[i].classList.add("hide");
    }
  }
  document.getElementById('department').value = new_val;
});
       
document.getElementById('department').addEventListener("change", function() {
  var val = this.value;
  var options = document.getElementById('course').options;
  var new_val = null;
  for (var i = 0 ; i < options.length; i++) {
    if (options[i].attributes["department"].value === val) {
      if (!new_val) {
        new_val = options[i].value;
      }
      options[i].classList.remove("hide");
    } else {
      options[i].classList.add("hide");
    }
  }
  document.getElementById('course').value = new_val;
});

var loadFile=function(event){
    var myImage=document.getElementById('myImage');
    myImage.src=URL.createObjectURL(event.target.files[0]);
    myImage.onload=function(){
        URL.revokeObjectURL(myImage.src);
    };
};
        </script>       
              
  
    </body>
</html>
