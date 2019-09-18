<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.Employees,com.quinnox.mom.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Employee Details
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  
<body class="dark-edition">
  <div class="wrapper ">
  <!-- Modal -->
  <section style="background-color:#3C4858 !important">
 <div class="modal fade" id="modalConfirmDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
    <!--Content-->
    <div class="modal-content text-center" style="background-color:#3C4858 !important">
      <!--Header-->
      <div class="modal-header d-flex justify-content-center">
        <p class="heading" style="color:white;">Are you sure?</p>
        
      </div>
					<!--Body-->
                <!--      <div class="modal-body">

        <i class="fas fa-times fa-4x animated rotateIn" style="color:white;"></i>

      </div> -->
                    

					<!--Footer-->
					<div class="modal-footer ">
						
							<form action="DeactivateEmployee">
								<input hidden name="id" id="delid" />
								<button type="submit" class="btn btn btn-primary" >Yes</button>
							 <a href="" class="btn btn btn-secondary">No</a>
							</form>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		</section>
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
            <a class="nav-link" href="Dashboard.jsp">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="Userprofile.jsp">
              <i class="material-icons">person</i>
              <p>User Profile</p>
            </a>
          </li>
          <li class="nav-item active ">
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
          
          <li class="nav-item ">
            <a class="nav-link" href="MomGenerate.jsp">
              <i class="material-icons">dashboard</i>
              <p>Generate MOM</p>
            </a>
          </li>
          
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:void(0)">Employee Details</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation" data-target="#navigation-example">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <!-- <div class="collapse navbar-collapse justify-content-end">
            
            <ul class="navbar-nav">
              
              <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
              </li>
            </ul>
          </div> -->
          
        </div>
      </nav>
      <!-- End Navbar -->
      <%
		List<Employees> list =EmployeeDAO.getAllEmployees();
		
	%>
      <div class="content">
        <div class="">
          <div class="row">
            <div class="col-md-12 col-lg-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <center><h4 class="card-title ">EMPLOYEE DETAILS</h4></center>
                  <p class="card-category"></p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead class="black white-text">
                        <tr>
                          <th scope="col" style="text-align:center;">Employee ID</th>
                          <th scope="col" style="text-align:center;">Employee Name</th>
                          <th scope="col" style="text-align:center;">Employee Email</th>
                          <th scope="col" style="text-align:center;">Employee Password</th>
                          <th scope="col" style="text-align:center;">Designation</th>
                          <th scope="col" style="text-align:center;">Department ID</th>
                          
                          <th scope="col" style="text-align:center;">Edit Employee</th>
                          <th scope="col" style="text-align:center;">Deactivate</th>
                         
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                        <%for (Employees i : list) { %>
                          <td id="delid" style="text-align:center;"  name="emp_id" data-title="Employee ID">
							
                            <%=i.getEmp_id()%>
                          </td>
                          <td  style="text-align:center;"  data-title="Employee Name">
                            <%=i.getEmp_name()%> 
                          </td>
                          <td  style="text-align:center;" data-title="Employee Email">
                            <%=i.getEmp_email()%>
                          </td>
                          <td  style="text-align:center;" data-title="Employee Password">
                            <%=i.getEmp_pass()%>
                          </td>
                          <td  style="text-align:center;" data-title="Designation">
                            <%=i.getEmp_desgn()%>
                          </td>
                          
                          <td  style="text-align:center;" data-title="Department ID">
                            <%=i.getDept_id()%>
                          </td>
                          
                          <td style="text-align:center;" data-title=" Edit Employee">
                          <a class="btn btn-primary" href="update.jsp?id=<%=i.getEmp_id()%>">Edit</a>
                          </td>
                          
                          <!--  <td class="cell"  style="text-align:center;" data-title="Deactivate">
							<button id="table-remove">Deactivate</button>-->
                          <td   style="text-align:center;" data-title="Deactivate">
                          <a  type="button" class ="deactive-employee btn btn-primary table-remove" data-toggle="modal" data-target="modalConfirmDelete">Deactivate</a>   
                          </td>
                        </tr>
                        
             
                        <%
                      }
                    %>
                      </tbody>
                    </table>
                                                                        
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
      <div class="col-lg-12 mx-auto">
      <a href="empform.html" class="btn btn-lg btn-primary" style=";margin-top:-30px;margin-left:45%;">CREATE EMPLOYEE</a>
      </div>
      </div>
      
      <!--  -->
      <script>
        const x = new Date().getFullYear();
        let date = document.getElementById('date');
        date.innerHTML = '&copy; ' + x + date.innerHTML;
      </script>
    </div>
  </div>
 
  
 <!--  <script src="assets/demo/demo.js"></script> --> 
   <!--   Core JS Files   -->
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
  <script>  
$(document).ready(function(){
    	
    	$(".table-remove").on('click',function(){
			$("#modalConfirmDelete").modal('show');
			
			$tr = $(this).closest("tr");
			var data=$tr.children("td").map(function(){
				return $(this).text();
				
			}).get();
			
			$('#delid').val(parseInt(data[0]));
			
			
		});
    	
        
});
  </script>
  
 
</body>

</html>