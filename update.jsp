<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.Employees,com.quinnox.mom.controller.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>

  </title>
  <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style_1.css">
  <!-- Your custom styles (optional) -->
  <link href="css/style.css" rel="stylesheet">
  <link href="admindash.css" rel="stylesheet" type="text/css">
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/updatemain.css">
  <style>
  input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0; 
}
  </style>
</head>
<script>
  function check_Alpha(letters){
    var regex = /^[a-zA-Z]+$/;
    if(regex.test(letters.name.value) == false){
   	$(".nm").html("<small style='color:red'>alpha only<small>");
   letters.name.focus();
   return false;
    }
    if(letters.name.value == " "){
      alert("Name Field cannot be left empty");
      letters.name.focus();
      return false;
    }
    return true;
  }
</script>

<body class="dark-edition">
   
 
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="assets/img/sidebar-2.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
        Tip 2: you can also add an image using data-image tag
    -->
   
      <div class="logo"><a href="#" class="simple-text logo-normal">
          ABC Ltd.
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="./dashboard.html" >
              <i class="material-icons" >dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="Userprofile.html">
              <i class="material-icons">person</i>
              <p>User Profile</p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" href="EmployeeDetails.jsp">
              <i class="material-icons">content_paste</i>
              <p>Employee Details</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="DepartmentDetails.jsp">
              <i class="material-icons">library_books</i>
              <p>Department Details</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    </div>
  
  
  
        <div class="modal-dialog cascading-modal modal-avatar modal-sm" role="document"> 
                <!--Content-->
                <div class="modal-content" style="width:600px;margin-left: -100px;background: #283048 !important;" >
                
                 <%
	String id = request.getParameter("id");
	Employees c = EmployeeDAO.getEmployeeById(Long.parseLong(id));
%>
   
                  <!--Body-->
                  <div class="modal-body text-center mb-1"  >
                  
                        <!-- <div class="card">
                                <div class="card-header card-header-primary"> -->
                   <h5 class="mt-1 mb-2 card card-header card-header-primary" style="color:white;font-weight:bold;text-transform:uppercase; background:#913f9e" data-color="purple">Update</h5> 
                  
                   <form action="EditEmployee"  onSubmit="return check_Alpha(this)">
        <input type="hidden" name="id" value="<%=c.getEmp_id()%>" />
			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input">
					<input id="name" class="input100" type="text" name="name" placeholder="Full name" value="<%=c.getEmp_name()%>" style="color:white !important;"  >
					<span class="focus-input100"></span>
					<label class="label-input100" for="name">
						<i class="fa fa-address-book"></i>
						<span class="lnr lnr-user"></span>
					</label>
					
				</div><span class="nm"></span>


				<div class="wrap-input100 validate-input">
					<input id="email" class="input100" type="email" name="email" placeholder="Eg. example@email.com" value="<%=c.getEmp_email()%>"  style="color:white !important;">
					<span class="focus-input100"></span>
					<label class="label-input100" for="email">
						<i class="fa fa-envelope-o"></i>
						
					</label>
				</div>


				<div class="wrap-input100 validate-input">
				
					<input id="pass" class="input100" type="password" name="password" placeholder="Password" value="<%=c.getEmp_pass() %>"  style="color:white !important;">
					<span class="focus-input100"></span>
					<label class="label-input100" for="password">
						<i class="fa fa-lock"  ></i>
					</label>
				</div>


				<div class="wrap-input100 validate-input">
					<input id="dept_id" class="input100" type="number" name="deptid" placeholder="Department ID" value="<%=c.getDept_id()%>"  style="color:white !important;">
					<span class="focus-input100"></span>
					<label class="label-input100 rs1" for="message">
						<i class="fa fa-address-card-o"></i>
					</label>
				</div>
				<div class="wrap-input100 validate-input">
					<input id="designation" class="input100" type="text" name="desgn" placeholder="Designation" value="<%=c.getEmp_desgn()%>" style="color:white !important;" >
					<span class="focus-input100"></span>
					<label class="label-input100" for="designation">
						<span class="lnr lnr-laptop" style="background-color:white !important;" ></span>
						<i class="fa fa-desktop"></i>
					</label>
				</div>
				
				<div class="container-contact100-form-btn">
					<button value="Submit" class="btn purple-gradient" onSubmit="return check_Alpha(this)">
						UPDATE
					</button>
				</div>
			</form>
		</div>
	</div>
</form>
                   
              </div>
              
              </div>
              

               
                                                
  
  </div>
 
 <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="https://unpkg.com/default-passive-events"></script>
  <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  
  <!-- Chartist JS -->
  <script src="assets/js/plugins/chartist.min.js"></script>
 
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-dashboard.js?v=2.1.0"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="assets/demo/demo.js"></script>
</body>

</html>