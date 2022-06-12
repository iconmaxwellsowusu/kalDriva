<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="fuelError.jsp"%>
<%@page import="java.sql.*"%>

<% 
    
     if(request.getParameter("submit")!=null)
    {
    	
        String name = request.getParameter("Name");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String number1 = request.getParameter("Number1");
        String number2 = request.getParameter("Number2");
        String localAddress = request.getParameter("localAddress");
        String Mstatus = request.getParameter("Mstatus");
        String reference = request.getParameter("reference");
        String ssnit = request.getParameter("ssnit");
        String employeeid = request.getParameter("employee-id");
        String department = request.getParameter("department");
        String company = request.getParameter("company");
        String position = request.getParameter("position");
        String dateJ = request.getParameter("date-of-joining");
        String dateL = request.getParameter("date-of-leaving");
        String bStatus = request.getParameter("b-status");
        String bSalary = request.getParameter("basicSalary");

        String accountHolder = request.getParameter("accountHolder");
        String accountNumber = request.getParameter("accountNumber");
        String bankName = request.getParameter("bankName");
        String bankBranch = request.getParameter("bankBrach");
        String bankCode = request.getParameter("bankShortCode");
        
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/kodsonvms?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","kodson_maxwell","0040105715@Icon");
        pst = con.prepareStatement("insert into employee(Name,gender,email,phone1,phone2,localAddress,Mstatus,reference,ssnit,employeeid,department,position,dateJoining,dateLeaving,bStatus,basicSalary,company,AccountName,AccountNumber,BankName,BankBranch,BankShortCode)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1, name);
        pst.setString(2, gender);
        pst.setString(3, email);
        pst.setString(4, number1);
        pst.setString(5, number2);
        pst.setString(6, localAddress);
        pst.setString(7, Mstatus);
        pst.setString(8, reference);
        pst.setString(9, ssnit);
        pst.setString(10, employeeid);
        pst.setString(11, department);
        pst.setString(12, position);
        pst.setString(13, dateJ);
        pst.setString(14, dateL);
        pst.setString(15, bStatus);
        pst.setString(16, bSalary);
        pst.setString(17, company);
      
        pst.setString(18, accountHolder);
        pst.setString(19, accountNumber);
        pst.setString(20, bankName);
        pst.setString(21, bankBranch);
        pst.setString(22, bankCode);
        pst.executeUpdate();  
        
        %>
<script>   
         alert('Record Added');    
         
    </script>
<%             
    }
   %>

    <%
    if(request.getParameter("submi")!=null){
    	
    	String months = request.getParameter("month");
    	String departments = request.getParameter("department"); 
    	HttpSession sess = request.getSession(false);
    	sess.setAttribute("month", months);
    	sess.setAttribute("departments", departments);
    	
    	response.sendRedirect("addpayRoll.jsp");
    }
    
    %>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!--Meta Responsive tag-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!--Bootstrap CSS-->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<!--Custom style.css-->
<link rel="stylesheet" href="assets/css/quicksand.css">
<link rel="stylesheet" href="assets/css/style.css">
<!--Font Awesome-->
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/fontawesome.css">
<!--Animate CSS-->
<link rel="stylesheet" href="assets/css/animate.min.css">
<!--Chartist CSS-->
<link rel="stylesheet" href="assets/css/chartist.min.css">
<!--Morris Css-->
<link rel="stylesheet" href="assets/css/morris.css">
<!--Map-->
<link rel="stylesheet" href="assets/css/jquery-jvectormap-2.0.2.css">
<!--Bootstrap Calendar-->
<link rel="stylesheet" href="assets/js/calendar/bootstrap_calendar.css">
<!--Nice select -->
<link rel="stylesheet" href="assets/css/nice-select.css">


<!-- CSS -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
<!-- Default theme -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
<!-- Semantic UI theme -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css" />
<!-- Bootstrap theme -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" />

<!-- 
    RTL version
-->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.rtl.min.css" />
<!-- Default theme -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.rtl.min.css" />
<!-- Semantic UI theme -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.rtl.min.css" />
<!-- Bootstrap theme -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.rtl.min.css" />
	
	   <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet" />

<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<title>Kodson Plus</title>
</head>
<body>

	<%
        response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
    
    
        if(session.getAttribute("admin")==null && session.getAttribute("manager")==null && session.getAttribute("operations")==null){
              response.sendRedirect("index.jsp");   
        }
        
        %>

	<!--Page loader-->
	<div class="loader-wrapper">
		<div class="loader-circle">
			<div class="loader-wave"></div>
		</div>
	</div>
	<!--Page loader-->

	<!--Page Wrapper-->

	<div class="container-fluid">

		<!--Header-->
		<div class="row header shadow-sm">

			<!--Logo-->
			<div class="col-sm-3 pl-0 text-center header-logo">
				<div class="bg-theme mr-3 pt-3 pb-2 mb-0">
					<h3 class="logo">
						<a href="#" class="text-secondary logo"><i
							class="fa fa-users "></i> Add Employee<span class="small "></span></a>
					</h3>
				</div>
			</div>
			<!--Logo-->

			<!--Header Menu-->
			<div class="col-sm-9 header-menu pt-2 pb-0">
				<div class="row">

					<!--Menu Icons-->
					<div class="col-sm-4 col-8 pl-0">
						<!--Toggle sidebar-->
						<span class="menu-icon" onclick="toggle_sidebar()"> <span
							id="sidebar-toggle-btn"></span>
						</span>
						<!--Toggle sidebar-->
						<!--Notification icon-->
						<div class="menu-icon">
							<a class="" href="" onclick="toggle_dropdown(this); return false"
								role="button" class="dropdown-toggle"> <i class="fa fa-user"></i>
							</a>
							<div class="dropdown dropdown-left bg-white shadow border">
								<a class="dropdown-item"><strong>Reset Account</strong></a>
								<div class="dropdown-divider"></div>
								<a href="" class="dropdown-item" data-toggle="modal"
									data-target="#passmodal">
									<div class="media">
										<div
											class="align-self-center mr-3 rounded-circle notify-icon bg-primary">
											<i class="fa fa-bookmark"></i>
										</div>
										<div class="media-body">
											<h6 class="mt-0">
												<strong>Reset Account</strong>
											</h6>

										</div>
									</div>
								</a>
								<div class="dropdown-divider"></div>

								<a class="dropdown-item" data-toggle="modal"
									data-target="#outmodal">
									<div class="media">
										<div
											class="align-self-center mr-3 rounded-circle notify-icon bg-secondary">
											<i class="fa fa-link"></i>
										</div>
										<div class="media-body">
											<h6 class="mt-0">
												<strong>Logout</strong>
											</h6>
											<p>Click here to logout</p>

										</div>
									</div>
								</a>

								<div class="dropdown-divider"></div>

							</div>
						</div>
						<!--Notication icon-->

					</div>
					<!--Menu Icons-->

					<!--Search box and avatar-->
					<div
						class="col-sm-8 col-4 text-right flex-header-menu justify-content-end">
						<div class="search-rounded mr-3">
							<%
                                
                                String namee =(String) request.getSession().getAttribute("admin");
                                String man = (String) request.getSession().getAttribute("manager");
                                if ((request.getSession(false).getAttribute("admin")== null)) {
                                out.println("<b class=\"badge badge-primary\">"+"Welcome " + man + "</b>");
                                }else { 
                                	out.println("<span class=\"badge badge-primary\">"+"Welcome " + namee + "</span>");
                                }
                                
                                %>
							<input type="text" class="form-control search-box"
								placeholder="Enter Truck Number..." />
						</div>
						<div calss="input-group-btn">
							<button type="submit" value="search" class="btn btn-primary">
								<span class="fa fa-search"> search </span>
							</button>
						</div>
						<!-- ///////////////////////////////////////////////////////////////////////////////// -->
					</div>
					<!--Search box and avatar-->
				</div>
			</div>
			<!--Header Menu-->
		</div>
		<!--Header-->

		<!-- /////////////////////////////////////////////logout modal  //////////////////////////////////////////////////////////// -->

		<div class="modal fade" data-keyboard="false" data-backdrop="static"
			id="outmodal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">${msg}&times;</button>
						<h4 class="modal-title"></h4>
					</div>
					<div class="modal-body">
						<form action="logout" method="">
							<div class="form-row"></div>
							<button type="submit" id="logout" class="btn btn-danger">
								<i class="fa fa-warning"></i>Logout
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- /////////////////////////////////////////////Reset password modal  //////////////////////////////////////////////////////////// -->


    <!-- /////////////////////////////////////////////Reset password modal  //////////////////////////////////////////////////////////// -->

                   <div class="modal fade" data-keyboard="false" data-backdrop="static"
		id="empModal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
				<h4 class="modal-title">Select Month</h4>
					<button class="close" data-dismiss="modal">&times;</button>
					
				</div>
				<div class="modal-body">
					<form action="#" method="post">
						<div class="form-row">
							<!-- /////////////////////////   month and year selector ///////////////////////////////-->

							<script
								src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
							<script
								src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
							<script
								src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

							<div class="col-md-6 mb-3">
								<label>Select month</label>
								<div class='input-group date datepicker' id='table'>
									<input type="text" name="month" class="form-control" required />
									<span class="input-group-addon"> <span
										class="glyphicon glyphicon-calendar"></span>
									</span>
								</div>
							</div>


							<script>
								
								$('#table').datepicker({
									  format: 'MM/yyyy',
									  icons: {
									    time: 'fa fa-time',
									    date: 'fa fa-calendar',
									    up: 'fa fa-chevron-up',
									    down: 'fa fa-chevron-down',
									    previous: 'fa fa-chevron-left',
									    next: 'fa fa-chevron-right',
									    today: 'fa fa-screenshot',
									    clear: 'fa fa-trash',
									    close: 'fa fa-remove'
									  },
									  startView: "months",
									  minViewMode: "months"
									});
								
								</script>
							<!-- //////////////////////////////////////-------------------------//////////////////////// -->


											<div class="form-group floating-label col-md-6 mb-3">
                                   <select class="custom-select" name="department" required>
                                                          <%
											                  
                                                          String url ="jdbc:mysql://localhost/kodsonvms?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
										                  String username="kodson_maxwell";
										                  String password="0040105715@Icon";
											                  
											                       try{
											                    	   Class.forName("com.mysql.jdbc.Driver");
											                    	   Connection conn = (Connection) DriverManager.getConnection(url,username,password);
											                    	   Statement stt = conn.createStatement();
											                    	   String query ="SELECT DISTINCT(department) from employee";
											                    	   ResultSet rss = stt.executeQuery(query);
											                    	   
											                    	   while(rss.next()){
											                    		   
											                    		   %>
											                    		    
											                    		   <option><%=rss.getString(1) %></option>  
											                    		   <% 
											                    		   System.out.println();
											                    	   }
											                    	   
											                       }catch(Exception e){
											                    	   
											                       }
                                                          %>
                                                          
                                            </select>
                                    <label for="" class="mt-1">Select Department</label>
                                </div>

						</div>

						<button class="btn btn-primary" type="submit" id="submit"
							name="submi">proceed to Create paySlip</button>

					</form>
				</div>
			</div>
		</div>
	</div>

		<!-- /////////////////////////////////////////////Reset password modal  //////////////////////////////////////////////////////////// -->

		<div class="modal fade" data-keyboard="false" data-backdrop="static"
			id="passmodal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">${msg} &times;</button>
						<h4 class="modal-title"></h4>
					</div>
					<div class="modal-body">
						<form action="ResetAdminpass" method="post">
							<div class="form-row">
								<div class="col-md-6 mb-3">
									<label for="validationDefault01">User Name</label> <input
										type="text" class="form-control" id="validationDefault01"
										placeholder="" required name="username_">
								</div>
								<div class="col-md-6 mb-3">
									<label for="validationDefault02">Current password</label> <input
										type="password" id="inputPassword6"
										class="form-control mx-sm-2"
										aria-describedby="passwordHelpInline" required name="oldpass">
								</div>

								<div class="col-md-6 mb-3">
									<label for="validationDefault02">New password</label> <input
										type="password" id="inputPassword6"
										class="form-control mx-sm-2"
										aria-describedby="passwordHelpInline" name="newpass_">
								</div>

								<div class="col-md-6 mb-3">
									<label for="validationDefault02">Repeat password</label> <input
										type="password" id="inputPassword6"
										class="form-control mx-sm-2"
										aria-describedby="passwordHelpInline" name="Repeatpass">
								</div>

							</div>

							<button class="btn btn-primary" type="submit">Reset</button>
							<input class="btn btn-primary" type="reset" value="Clear form">
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- /////////////////////////////////////////////Reset password modal  //////////////////////////////////////////////////////////// -->


		<!--Main Content-->

		<div class="row main-content">
			<!--Sidebar left-->
			<div class="col-sm-3 col-xs-6 sidebar pl-0">
				<div class="inner-sidebar mr-3">
					<!--Image Avatar-->
					<div class="avatar text-center">
						<img src="logo.jpeg" alt="" class="rounded-circle" />
						<p>
							<strong>Kodson Plus</strong>
						</p>
						<span class="text-primary small"><strong>HR Admin
								Page</strong></span>
					</div>
					<!--Image Avatar-->

                    <!--Sidebar Navigation Menu-->
                    <div class="sidebar-menu-container">
                        <ul class="sidebar-menu mt-4 mb-4">
                        <!--//////////////////////// General Manager/Director //////////////////////////-->
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('dashboard'); return false" class=""><i class="fa fa-user mr-3"> </i>
                                    <span class="none">General Manager/Director <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="dashboard">
                                    <li class="child"><a href="gmHome.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Home/Dashboard</a></li>

                                </ul>
                            </li>
                           
                           <!--//////////////////////// Operations //////////////////////////-->
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('ul_element'); return false" class=""><i class="fa fa-cogs mr-3"></i>
                                    <span class="none">Operations Manager <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="ul_element">
                                    <li class="child"><a href="driverManager.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Manage Trucks,BVO's and Assistants</a></li>

                                </ul>
                            </li>
                            
                            <!--//////////////////////// HR-Manager //////////////////////////-->
                            
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('form_element'); return false" class=""><i class="fa fa-pencil-square mr-3"></i>
                                    <span class="none">HR-Admin <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="form_element">
                            <li class="parent">
                                <a href="DashBoard.jsp"><i class="fa fa-dashboard mr-3"> </i>
                                    <span class="none">PayRoll Dashboard </span>
                                </a>
                              
                            </li>
                                    <li class="child"><a href="AddEmployee.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Add Employee</a></li>
                                    <li class="child"><a href="ManageEmployee.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Manage Employee</a></li>
                                    <li class="child"><a href="CreateDepartment.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Add Department</a></li>
                                    <li class="child"><a href="ManageDepartment.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Add Position</a></li>
                                    <li class="child"><a href="DailyAttendace.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Daily Attendance</a></li>
                                    <li class="child"><a href="AttendanceReport.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Attendance Report</a></li>
                                    <li class="child"><a href="AddLeave.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Add leave</a></li>
                                    <li class="child"><a href="ManageLeave.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Manage Leave</a></li>
                                    <li class="child"><a href="AddLeaveType.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Add Leave Type</a></li>
                                    <li class="child"><a href="ManageLeaveType.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Manage Leave Type</a></li>
                                                                <li class="parent">
                                <a href="Diduction.jsp"><i class="fa fa-minus mr-3"> </i>
                                    <span class="none">Deductions </span>
                                </a>
                              
                            </li>
                            
                           <li class="parent">
                                <a href="Loan.jsp"><i class="fa fa-money mr-3"> </i>
                                    <span class="none">Loans/Surcharges </span>
                                </a>
                              
                            </li>
                            
                                    <li class="child"><a href="#" class="ml-4" data-dismiss="modal" data-toggle="modal" data-target="#empModal"><i class="fa fa-angle-right mr-2"></i> Create PaySlip</a></li>
                                    <li class="child"><a href="PaySlipList.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> PaySlip List</a></li> 
                                    
                                   <li class="parent"><a href="pettyDash.jsp" class=""><i
									class="fa fa-dashboard mr-3"> </i> <span class="none">PettyCash Dashboard
								</span> </a></li>

							<li class="parent"><a href="addCategory.jsp" class=""><i
									class="fa  fa-cubes mr-3"></i> <span class="none">Categories
								</span> </a></li>
							<li class="parent"><a href="addCredit.jsp" class=""><i
									class="fa fa-puzzle-piece mr-3"></i> <span class="none">Credit
								</span> </a></li>
							<li class="parent"><a href="addDebit.jsp" class=""><i
									class="fa fa-pencil-square mr-3"></i> <span class="none">Debit
								</span> </a></li>                                  
                                </ul>
                            </li>
                            
                            <!--//////////////////////// Maintenance Manager //////////////////////////-->
                            
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('editors'); return false" class=""><i class="fa fa-wrench mr-3"></i>
                                    <span class="none">Maintenance Manager <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="editors">
                           <li class="parent">
                                <a href="mDash.jsp"  class=""><i class="fa fa-dashboard mr-3"> </i>
                                    <span class="none">Dashboard </span>
                                </a>
                               
                            </li>
                                    <li class="child"><a href="clients.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Add A Client</a></li>
                                    <li class="child"><a href="clientService.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Client Services</a></li>
                                    <li class="child"><a href="expensesCategory.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Add Expenses Category</a></li>
                                    <li class="child"><a href="expenses.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Add Expenses</a></li>
                                    <li class="child"><a href="expensesReport.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Expenses Report</a></li>
                                    <li class="child"><a href="fixtyre.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Tyre Fixing</a></li>
                               <li class="parent">
                                <a href="tools.jsp" class=""><i class="fa fa-wrench mr-3"></i>
                                    <span class="none">Tools <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                
                            </li>
                            
                                    <li class="child"><a href="itemPrices.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Add Stock Item</a></li>
                                    <li class="child"><a href="itemRequest.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Request Item From Head Office</a></li>
                                    <li class="child"><a href="itemService.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Item Service</a></li>
                            
                            <li class="parent">
                                <a href="NumberPlate.jsp" class=""><i class="fa fa-minus-square mr-3"></i>
                                    <span class="none">Number Plate</span>
                                </a>
                            </li>
                            
                                    <li class="child"><a href="generalServicing.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> General Servicing</a></li>
                                    <li class="child"><a href="engineOil.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Engine Oil</a></li>
                                    <li class="child"><a href="monthlyHubGreasing.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Monthly Hub Greasing</a></li>
                                    <li class="child"><a href="spillKit.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Spill Kit</a></li>
                                    <li class="child"><a href="sprayingPlan.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Spraying Plan</a></li>
                                    <li class="child"><a href="spareTyre.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Spare Tyre</a></li>
                             
                                    <li class="child"><a href="fireExtinguiser.jsp" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Fire Extinguisher</a></li>
                                    
                            <li class="parent">
                                <a href="itemPrices.jsp" class=""><i class="fa fa-columns mr-3"> </i>
                                    <span class="none">Item Prices </span>
                                </a>
                            </li>
                            
                            <li class="parent">
                                <a href="upholsry.jsp" class=""><i class="fa fa-clipboard mr-3"> </i>
                                    <span class="none">Upholsry </span>
                                </a>
                            </li>
                            
                            <li class="parent">
                                <a href="coolant.jsp" class=""><i class="fa fa-tint mr-3"> </i>
                                    <span class="none">Coolant </span>
                                </a>
                            </li>
                            <li class="parent">
                                <a href="transitBreadown.jsp" class=""><i class="fa fa-chain-broken mr-3"> </i>
                                    <span class="none">Transit Breakdown </span>
                                </a>
                            </li>
                            <li class="parent">
                                <a href="BrvHistory.jsp" class=""><i class="fa fa-book mr-3"> </i>
                                    <span class="none">BRV history </span>
                                </a>
                            </li>
                            <li class="parent">
                                <a href="batteryManage.jsp" class=""><i class="fa fa-flash (alias) mr-3"> </i>
                                    <span class="none">Battery Management </span>
                                </a>
                            </li>
                            
                                    
                                </ul>
                            </li>
                            
                            <!--//////////////////////// Statutory Obligations //////////////////////////-->
                            
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('tables'); return false" class=""><i class="fa  fa-sliders mr-3"></i>
                                    <span class="none">Statutory Obligations/Compliance <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="tables">
                            <li class="parent">
                                <a href=" Sta_ob.jsp " ><i class="fa fa-shield"></i>
                                    <span class="none">  Statutory_Obligations </span>
                                </a>
                            </li>
                                </ul>
                            </li>
                            
                                            <!--//////////////////////// Fuel Management //////////////////////////-->
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('charts'); return false" class=""><i class="fa fa-pie-chart mr-3"></i>
                                    <span class="none">Fuel Management <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="charts">
                            <li class="parent">
                                <a href="fuelDash.jsp" class=""><i class="fa fa-dashboard mr-3"> </i>
                                    <span class="none">Fuel Management Dashboard </span>
                                </a>
                                
                            </li>
                            
                            <li class="parent">
                                <a href="fuelDischarged.jsp" class=""><i class="fa fa-truck mr-3"></i>
                                    <span class="none">Fuel Discharged </span>
                                </a>
                            </li>
                            <li class="parent">
                                <a href="fuelDispensed.jsp" class=""><i class="fa fa-plus-circle mr-3"></i>
                                    <span class="none">Fuel Dispensed </span>
                                </a>
                                
                            </li>
                                </ul>
                            </li>
                            
                                         <!--//////////////////////// ProcureMent //////////////////////////-->
 
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('ecommerce'); return false" class=""><i class="fa fa-shopping-cart mr-3"></i>
                                    <span class="none">Procurement/Stores <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="ecommerce">
                            <li class="parent">
                                <a href="dash_board.jsp" return false" class=""><i class="fa fa-dashboard mr-3"> </i>
                                    <span class="none">Dashboard </span>
                                </a>
                                
                            </li>
                            
                            <li class="parent">
                                <a href="addSupplier.jsp" class=""><i class="fa fa-truck mr-3"></i>
                                    <span class="none">Add Suppliers </span>
                                </a>
                            </li>
                            <li class="parent">
                                <a href="addItem.jsp" class=""><i class="fa fa-plus-circle mr-3"></i>
                                    <span class="none">Add Items </span>
                                </a>
                                
                            </li>
                            <li class="parent">
                                <a href="purchaseItem.jsp"  class=""><i class="fas fa-handshake mr-3"></i>
                                    <span class="none">Purchase Items </span>
                                </a>
                               
                            </li>
                            <li class="parent">
                                <a href="sellitem.jsp" class=""><i class="fa fa-bullhorn mr-3"></i>
                                    <span class="none">Sell Items</span>
                                </a>
                                
                            </li>
                            <li class="parent">
                                <a href="myStock.jsp" class=""><i class="fa fa-cubes mr-3"></i>
                                    <span class="none">MyStock</span>
                                </a>
                                
                            </li>
                                </ul>
                            </li>
                            
                            <!--//////////////////////// Journey Planner //////////////////////////-->
                            
                            
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('maps'); return false" class=""><i class="fa fa-map mr-3"></i>
                                    <span class="none">Journey Planner <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="maps">
                            <li class="parent">
                                <a href=" journey.jsp " ><i class="fa fa-road"></i>
                                    <span class="none">  Journey plan </span>
                                </a>
                            </li>
                                </ul>
                            </li>
                            
                                                   <!--//////////////////////// Trips //////////////////////////-->
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('pages'); return false" class=""><i class="fa fa-road mr-3"></i>
                                    <span class="none">Trip Management <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="pages">
							<li class="parent"><a href="trips.jsp "><i
									class="fa fa-road"></i> <span class="none"> Trips </span> </a></li>
                                </ul>
                            </li>


                        </ul>
                    </div>
                    <!--Sidebar Naigation Menu-->
				</div>
			</div>
			<!--Sidebar left-->

			<!-- /////////////////////////////////////////////logout modal  //////////////////////////////////////////////////////////// -->

			<div class="modal fade" data-keyboard="false" data-backdrop="static"
				id="outmodal" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button class="close" data-dismiss="modal">${msg}
								&times;</button>
							<h4 class="modal-title"></h4>
						</div>
						<div class="modal-body">
							<form action="logout" method="">
								<div class="form-row"></div>
								<button type="submit" id="logout" class="btn btn-danger">
									<i class="fa fa-warning"></i>Logout
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /////////////////////////////////////////////Reset password modal  //////////////////////////////////////////////////////////// -->


			<!-- /////////////////////////////////////////////Reset password modal  //////////////////////////////////////////////////////////// -->

			<div class="modal fade" data-keyboard="false" data-backdrop="static"
				id="passmodal" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button class="close" data-dismiss="modal">${msg}
								&times;</button>
							<h4 class="modal-title"></h4>
						</div>
						<div class="modal-body">
							<form action="ResetAdminpass" method="post">
								<div class="form-row">
									<div class="col-md-6 mb-3">
										<label for="validationDefault01">User Name</label> <input
											type="text" class="form-control" id="validationDefault01"
											placeholder="" required name="username_">
									</div>
									<div class="col-md-6 mb-3">
										<label for="validationDefault02">Current password</label> <input
											type="password" id="inputPassword6"
											class="form-control mx-sm-2"
											aria-describedby="passwordHelpInline" required name="oldpass">
									</div>

									<div class="col-md-6 mb-3">
										<label for="validationDefault02">New password</label> <input
											type="password" id="inputPassword6"
											class="form-control mx-sm-2"
											aria-describedby="passwordHelpInline" name="newpass_">
									</div>

									<div class="col-md-6 mb-3">
										<label for="validationDefault02">Repeat password</label> <input
											type="password" id="inputPassword6"
											class="form-control mx-sm-2"
											aria-describedby="passwordHelpInline" name="Repeatpass">
									</div>

								</div>

								<button class="btn btn-primary" type="submit">Reset</button>
								<input class="btn btn-primary" type="reset" value="Clear form">
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /////////////////////////////////////////////Reset password modal  //////////////////////////////////////////////////////////// -->

			<!--Content right-->
			<div class="col-sm-9 col-xs-12 content pt-3 pl-0">
				<div class="row mt-3">
					<div class="col-sm-12">
						<!--Default elements-->
						<div
							class="mt-1 mb-3 p-3 button-container bg-white border shadow-sm">

							<div class="dropdown-divider" style="border-color: orange;"></div>

							<h5 align="center">Employee Details</h5>

							<div class="dropdown-divider" style="border-color: orange;"></div>

							<div class="d-flex justify-content-center">

								<form action="#" method="post">

									<div class="form-row">
										<div class="col-md-4 mb-3">
											<label> Name</label> <input type="text" class="form-control"
												placeholder="" name="Name" id="Name" required>
										</div>

										<div class="form-group floating-label col-md-4 mb-3">
											<select name="gender" id="gender" class="custom-select"
												required>
												<option value=""></option>
												<option value="male">Male</option>
												<option value="female">Female</option>
											</select> <label for="" class="mt-1">Gender</label>
										</div>

										<div class="col-md-4 mb-3">
											<label>Email</label>
											<div>
												<input type="email" id="email" class="form-control"
													data-validation="email" name="email" />
											</div>
										</div>

										<div class="col-md-4 mb-3">
											<label>Phone Number 1</label>
											<div>
												<input type="text" id="Number1" class="form-control"
													data-validation="number" name="Number1" />
											</div>
										</div>

										<div class="col-md-4 mb-3">
											<label>Phone Number 2</label>
											<div>
												<input type="text" id="Number2" class="form-control"
													data-validation="number" name="Number2" />
											</div>
										</div>

										<div class="col-md-4 mb-3">
											<label>Local Address</label>
											<div>
												<textarea rows="1.5" class="form-control" id="localAddress"
													placeholder="" name="localAddress"></textarea>
											</div>
										</div>

										<div class="form-group floating-label col-md-4 mb-3">
											<select name="Mstatus" id="Mstatus" class="custom-select"
												required>
												<option value=""></option>
												<option value="single">Single</option>
												<option value="married">Married</option>
											</select> <label for="" class="mt-1">Marital Status</label>
										</div>
										<div class="col-md-4 mb-3">
											<label for="validationCustom05">Reference </label> <input
												type="text" class="form-control" placeholder=""
												id="reference" name="reference" value="Reference">
										</div>

										<div class="col-md-4 mb-3">
											<label for="validationCustom05">SSNIT Number</label> <input
												type="text" class="form-control" placeholder="" name="ssnit"
												id="ssnit" value="--">
										</div>
									</div>

									<!--///////////////////////////////////////   add dimacation lines-->
									<div class="dropdown-divider" style="border-color: orange;"></div>
									<h5 align="center">Company Details</h5>
									<div class="dropdown-divider" style="border-color: orange;"></div>
									<div class="form-row">


										<div class="form-group floating-label col-md-4 mb-3">
											<select name="company" id="company" class="custom-select"
												required>
												<option value=""></option>
												<option value="KODSON PLUS">KODSON PLUS</option>
												<option value="KTC">KTC</option>
												<option value="KGL CONSTRUCTION">KGL CONSTRUCTION</option>
												<option value="MANNER LOGISTICS">MANNER LOGISTICS</option>
												<option value="JUST GRACE">JUST GRACE</option>
												<option value="UNIQUE TIMES">UNIQUE TIMES</option>
												<option value="LIDA GHANA">LIDA GHANA</option>
												<option value="FUEL STATION">FUEL STATION</option>
											</select> <label for="" class="mt-1">Select Company</label>
										</div>




										<div class="form-group floating-label col-md-4 mb-3">
                                   <select class="custom-select"name="department" required>
                                                          <%
											                  
											                
											                  
											                       try{
											                    	   Class.forName("com.mysql.jdbc.Driver");
											                    	   Connection conn = (Connection) DriverManager.getConnection(url,username,password);
											                    	   Statement stt = conn.createStatement();
											                    	   String query ="select * from department";
											                    	   ResultSet rss = stt.executeQuery(query);
											                    	   
											                    	   while(rss.next()){
											                    		   
											                    		   %>
											                    		    
											                    		   <option><%=rss.getString("departmentName") %></option>  
											                    		   <% 
											                    		   System.out.println();
											                    	   }
											                    	   
											                       }catch(Exception e){
											                    	   
											                       }
                                                          %>
                                                          
                                            </select>
                                    <label for="" class="mt-1">Select Department</label>
                                </div>

									
										<div class="form-group floating-label col-md-4 mb-3">
                                   <select class="custom-select"name="department" required>
                                                          <%
											                  
											                
											                  
											                       try{
											                    	   Class.forName("com.mysql.jdbc.Driver");
											                    	   Connection conn = (Connection) DriverManager.getConnection(url,username,password);
											                    	   Statement stt = conn.createStatement();
											                    	   String query ="select * from positions";
											                    	   ResultSet rss = stt.executeQuery(query);
											                    	   
											                    	   while(rss.next()){
											                    		   
											                    		   %>
											                    		    
											                    		   <option><%=rss.getString("positionName") %></option>  
											                    		   <% 
											                    		   System.out.println();
											                    	   }
											                    	   
											                       }catch(Exception e){
											                    	   
											                       }
                                                          %>
                                                          
                                            </select>
                                    <label for="" class="mt-1">Select Position</label>
                                </div>
										<!--////////////////// date picker //////////////////////// -->
										<div class="col-md-4 mb-3 input-with-post-icon datepicker">
											<label for="example">Date of Joining</label> <input
												placeholder="Select date" type="date" id="date-of-joining"
												class="form-control" name="date-of-joining" value=" ">
										</div>

										<!--////////////////// date picker //////////////////////// -->
										<div class="col-md-4 mb-3 input-with-post-icon datepicker">
											<label for="example">Date of Leaving</label> <input
												placeholder="Select date" type="date" id="date-of-leaving"
												class="form-control" name="date-of-leaving">
										</div>

										<div class="form-group floating-label col-md-4 mb-3">
											<select name="b-status" id="b-status" class="custom-select">
												<option value=""></option>
												<option value="active">Active</option>
												<option value="not-active">Not Active</option>
											</select> <label for="" class="mt-1">Status</label>
										</div>
									</div>

									<!--///////////////////////////////////////   add dimacation lines-->
									<div class="dropdown-divider" style="border-color: orange;"></div>
									<h5 align="center">Financial Details</h5>
									<div class="dropdown-divider" style="border-color: orange;"></div>

									<div class="form-row">


										<div class="col-md-4 mb-3">
											<label for="validationCustom03">Basic Salary</label> <input
												type="text" id="basicSalary" name="basicSalary"
												class="form-control" data-validation="number" required />
										</div>


									</div>

									<!--///////////////////////////////////////   add dimacation lines-->
									<div class="dropdown-divider" style="border-color: orange;"></div>
									<h5 align="center">Bank Details</h5>
									<div class="dropdown-divider" style="border-color: orange;"></div>

									<div class="form-row">

										<div class="col-md-4 mb-3">
											<label for="validationCustom03">Account Holders Name</label>
											<input type="text" class="form-control" placeholder=""
												name="accountHolder" id="accountHolder">
										</div>

										<div class="col-md-4 mb-3">
											<label for="validationCustom03">Bank Account Number</label> <input
												type="text" id="accountNumber" class="form-control"
												data-validation="number" name="accountNumber" />
										</div>

										<div class="col-md-4 mb-3">
											<label for="validationCustom03">Bank Name</label> <input
												type="text" class="form-control" placeholder=""
												name="bankName">
										</div>

										<div class="col-md-4 mb-3">
											<label for="validationCustom05">Bank Branch</label> <input
												type="text" class="form-control" placeholder=""
												name="bankBrach" id="bankBrach">
										</div>

										<div class="col-md-4 mb-3">
											<label for="validationCustom03">Bank Short Code</label> <input
												type="text" id="bankShortCode" class="form-control"
												data-validation="number" name="bankShortCode" />
										</div>
									</div>

									<div align="right">
										<button type="submit" id="submit" name="submit" value="submit"
											class="btn btn-primary">Submit</button>
										<button onclick="alertMe()" type="Cancel"
											class="btn btn-primary" data-dismiss="modal">Cancel</button>
									</div>
								</form>
							</div>
						</div>
						<!--/Default elements-->

					</div>
				</div>

               <script type="text/javascript">
      
      function testDelete(id){
    	  var doit = confirm("Do you want to delete data");
    	      if(doit){
    	    	  var jspLink = "deleteClientService.jsp?id="+id;
    	    			  window.location.href=jspLink;
    	      }else
    	    	  alert("Cancelled");
      }

</script>

				<!--Footer-->
				<div class="row mt-5 mb-4 footer">
					<div class="col-sm-8">
						<span>&copy; All rights reserved 2019 designed by <a
							class="text-info" href="#">A-Fusion</a></span>
					</div>
					<div class="col-sm-4 text-right">
						<a href="#" class="ml-2">Contact Us</a> <a href="#" class="ml-2">Support</a>
					</div>
				</div>
				<!--Footer-->

			</div>
		</div>

		<!--Main Content-->

	</div>

	<!--Page Wrapper-->
	<script
		src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	<!-- Page JavaScript Files-->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery-1.12.4.min.js"></script>
	<!--Popper JS-->
	<script src="assets/js/popper.min.js"></script>
	<!--Bootstrap-->
	<script src="assets/js/bootstrap.min.js"></script>
	<!--Sweet alert JS-->
	<script src="assets/js/sweetalert.js"></script>
	<!--Progressbar JS-->
	<script src="assets/js/progressbar.min.js"></script>
	<!--Flot.JS-->
	<script src="assets/js/charts/jquery.flot.min.js"></script>
	<script src="assets/js/charts/jquery.flot.pie.min.js"></script>
	<script src="assets/js/charts/jquery.flot.categories.min.js"></script>
	<script src="assets/js/charts/jquery.flot.stack.min.js"></script>
	<!--Sparkline-->
	<script src="assets/js/charts/sparkline.min.js"></script>
	<!--Morris.JS-->
	<script src="assets/js/charts/raphael.min.js"></script>
	<script src="assets/js/charts/morris.js"></script>
	<!--Chart JS-->
	<script src="assets/js/charts/chart.min.js"></script>
	<!--Chartist JS-->
	<script src="assets/js/charts/chartist.min.js"></script>
	<script src="assets/js/charts/chartist-data.js"></script>
	<script src="assets/js/charts/demo.js"></script>
	<!--Maps-->
	<script src="assets/js/maps/jquery-jvectormap-2.0.2.min.js"></script>
	<script src="assets/js/maps/jquery-jvectormap-world-mill-en.js"></script>
	<script src="assets/js/maps/jvector-maps.js"></script>
	<!--Bootstrap Calendar JS-->
	<script src="assets/js/calendar/bootstrap_calendar.js"></script>
	<script src="assets/js/calendar/demo.js"></script>
	<!--Nice select-->
	<script src="assets/js/jquery.nice-select.min.js"></script>

	<!--Custom Js Script-->
	<script src="assets/js/custom.js"></script>
</body>
</html>