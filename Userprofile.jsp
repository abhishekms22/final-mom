<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.Employees,com.quinnox.mom.controller.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
User Profile
  </title>
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
</head>

<body class="dark-edition">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
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
            <a class="nav-link" href="./dashboard.html">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="Userprofile.jsp">
              <i class="material-icons">person</i>
              <p>User Profile</p>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="AdminDashboard.jsp">
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
          
           <li class="nav-item">
                  <a class="nav-link" href="MomGenerate.jsp">
                    <i class="material-icons">content_paste</i>
                    <p>Generate MoM</p>
                  </a>
                </li>
        </ul>
      </div>
    </div>
    
    <% 
     
    String sid =session.getAttribute("id").toString();
    int id = Integer.parseInt(sid);
   
    Employees i =EmployeeDAO.getEmployeeById(id);
    System.out.println(i.getEmp_id());
    %>
    
    
   <section>
   <br> <br>
        <div class="modal-dialog cascading-modal modal-avatar modal-sm" role="document"> 
                <!--Content-->
                <div class="modal-content" style="width:600px;margin-left: -100px;background: #283048 !important;" >
                
                  <!--Header-->
                  <div class="modal-header">
                    <img src="assets/img/img_avatar.png" alt="avatar" class="rounded-circle img-responsive">
                  </div>
                  <!--Body-->
                  <div class="modal-body text-center mb-1"  >
                  
                        <!-- <div class="card">
                                <div class="card-header card-header-primary"> -->
                    <h5 class="mt-1 mb-2 card card-header card-header-primary" style="color:white;font-weight:bold;text-transform:uppercase; background:#913f9e" data-color="purple">MY PROFILE</h5>
                    <table>
                 <div class="row">
                   <div class="col-6">
                      <div class="list-group-flush">
                          <div class="list-group-item" style="text-align: left;">
                            <p class="mb-0" id="p">Employee ID</p>
                          </div>
                        
                          <div class="list-group-item" style="text-align: left;">
                              <p class="mb-0" id="p">Employee Name</p>
                          </div>
                          <div class="list-group-item" style="text-align: left;">
                              <p class="mb-0" id="p">Employee Email</p>
                          </div>
                          <div class="list-group-item" style="text-align: left;">
                              <p class="mb-0" id="p">Employee Designation</p>
                          </div>
                          <div class="list-group-item" style="text-align: left;">
                              <p class="mb-0" id="p">Department ID</p>
                          </div>
                         
                          
                         
                        </div>
                    
                   </div>
                  
                   
                  
                   <div class="col-6">
                      <div class="list-group-flush">
                          <div class="list-group-item" style="text-align: left;">
                            <p class="mb-0">	<%=i.getEmp_id()%></p>
                          </div>
                          <div class="list-group-item" style="text-align: left;">
                              <p class="mb-0"><%=i.getEmp_name()%></p>
                          </div>
                          <div class="list-group-item" style="text-align: left;">
                              <p class="mb-0"><%=i.getEmp_email()%></p>
                          </div>
                          <div class="list-group-item" style="text-align: left;">
                              <p class="mb-0"><%=i.getEmp_desgn()%></p>
                          </div>
                          <div class="list-group-item" style="text-align: left;">
                              <p class="mb-0"><%=i.getDept_id()%></p>
                          </div>
                         
                          
                          
                        </div>
                       
                   </div>
                    
                 </div>
                  
                 
                  </div>
              
                </div>
            
            </table>
              </div>
              
              </div>
              

               
                                                
  
  </div>
 
 
  
</body>

</html>