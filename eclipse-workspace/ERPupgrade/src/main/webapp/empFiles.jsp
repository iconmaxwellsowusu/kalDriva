<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KODSON ERP</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/vendors/simple-datatables/style.css">

    <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/preloader.css">
    <link rel="shortcut icon" href="assets/images/profile.jpeg" type="image/x-icon">
    
    <link rel="stylesheet" href="assets/vendors/choices.js/choices.min.css" />
    
        <link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        
        
         <!-- Alertify CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
  <!-- Alertify js -->  
 <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
 
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 
   
    <style>
    
body{margin-top:20px;}
.preloader {
  position: fixed;
  left: 0;
  width: 0;
  height: 100%;
  width: 100%;
  text-align: center;
  z-index: 9999999;
  -webkit-transition: .9s;
  transition: .9s;
}

.preloader .loader {
  position: absolute;
  width: 80px;
  height: 80px;
  border-radius: 50%;
  display: inline-block;
  left: 0;
  right: 0;
  margin: 0 auto;
  top: 45%;
  -webkit-transform: translateY(-45%);
          transform: translateY(-45%);
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

.preloader .loader .loader-outter {
  position: absolute;
  border: 4px solid #ffffff;
  border-left-color: transparent;
  border-bottom: 0;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  -webkit-animation: loader-outter 1s cubic-bezier(0.42, 0.61, 0.58, 0.41) infinite;
          animation: loader-outter 1s cubic-bezier(0.42, 0.61, 0.58, 0.41) infinite;
}

.preloader .loader .loader-inner {
  position: absolute;
  border: 4px solid #ffffff;
  border-radius: 50%;
  width: 60px;
  height: 60px;
  left: calc(40% - 21px);
  top: calc(40% - 21px);
  border-right: 0;
  border-top-color: transparent;
  -webkit-animation: loader-inner 1s cubic-bezier(0.42, 0.61, 0.58, 0.41) infinite;
          animation: loader-inner 1s cubic-bezier(0.42, 0.61, 0.58, 0.41) infinite;
}

.preloader .loader .indicator {
  position: absolute;
  right: 0;
  left: 0;
  top: 50%;
  -webkit-transform: translateY(-50%) scale(1.5);
          transform: translateY(-50%) scale(1.5);
}

.preloader .loader .indicator svg polyline {
  fill: none;
  stroke-width: 2;
  stroke-linecap: round;
  stroke-linejoin: round;
}

.preloader .loader .indicator svg polyline#back {
  stroke: #ffffff;
}

.preloader .loader .indicator svg polyline#front {
  stroke: #1A76D1;
  stroke-dasharray: 12, 36;
  stroke-dashoffset: 48;
  -webkit-animation: dash 1s linear infinite;
          animation: dash 1s linear infinite;
}

.preloader::before, .preloader::after {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 60%;
  z-index: -1;
  background: #1A76D1;
  -webkit-transition: .9s;
  transition: .9s;
}

.preloader::after {
  left: auto;
  right: 0;
}

.preloader.preloader-deactivate {
  visibility: hidden;
}

.preloader.preloader-deactivate::after, .preloader.preloader-deactivate::before {
  width: 0;
}

.preloader.preloader-deactivate .loader {
  opacity: 0;
  visibility: hidden;
}

@-webkit-keyframes loader-outter {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}

@keyframes loader-outter {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}

@-webkit-keyframes loader-inner {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(-360deg);
            transform: rotate(-360deg);
  }
}

@keyframes loader-inner {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(-360deg);
            transform: rotate(-360deg);
  }
}

@-webkit-keyframes dash {
  62.5% {
    opacity: 0;
  }
  to {
    stroke-dashoffset: 0;
  }
}

@keyframes dash {
  62.5% {
    opacity: 0;
  }
  to {
    stroke-dashoffset: 0;
  }
}
    </style>
</head>

<body>

<div class="preloader">
    <div class="loader">
        <div class="loader-outter"></div>
        <div class="loader-inner"></div>

        <div class="indicator"> 
            <svg width="16px" height="12px">
                <polyline id="back" points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
                <polyline id="front" points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
            </svg>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
       
        <script src="component/jquery/jquery.js" type="text/javascript"></script>
        <script src="component/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="component/jquery.validate.min.js" type="text/javascript"></script>
        <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>
        
<script type="text/javascript">

$(window).on('load', function() {
    //for use in production please remove this setTimeOut
    setTimeout(function(){ 
        $('.preloader').addClass('preloader-deactivate');
    }, 30);
    
   
    //uncomment this line for use this snippet in production
    //	$('.preloader').addClass('preloader-deactivate');
});
</script>

    <div id="app">
    
    <!-- start side bar -->
    
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
                            <a href="index.html"><img src="assets/images/profile.jpeg" alt="Logo" srcset="" style="width:150px; height:120px;" ></a>
                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">
                        <li class="sidebar-title">Menu</li>

                        <li class="sidebar-item  ">
                            <a href="hrDashboard.jsp" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-stack"></i>
                                <span>Employee</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="addEmployee.jsp">Add Employee</a>
                                </li>
                               
                                <li class="submenu-item ">
                                    <a href="activateEmp.jsp">Activate Employee</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="deactivateEmp.jsp">Deactivate Employee</a>
                                </li>
                                
                                <li class="submenu-item ">
                                    <a href="empCard.jsp">Generate Employee ID Card</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="empFiles.jsp">Upload Employee File</a>
                                </li>
                               
                            </ul>
                        </li>

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-collection-fill"></i>
                                <span>Departments</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="department.jsp">Add Department</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="position.jsp">Add Position</a>
                                </li>
                               
                            </ul>
                        </li>

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-grid-1x2-fill"></i>
                                <span>Attendance</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a >1</a>
                                </li>
                                <li class="submenu-item ">
                                    <a>2</a>
                                </li>
                                <li class="submenu-item ">
                                    <a>3</a>
                                </li>
                                <li class="submenu-item ">
                                    <a>4</a>
                                </li>
                             
                            </ul>
                        </li>

                        <li class="sidebar-title">Loans,Surcharges &amp; Repayments</li>

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-hexagon-fill"></i>
                                <span>Loan/Surcharge</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="loan.jsp">Add Loan</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="surcharge.jsp">Add SurCharge</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="loanReports.jsp">Report</a>
                                </li>
                               
                            </ul>
                        </li>

                    

                        <li class="sidebar-title">Payroll,Payslip &amp; Reports</li>

                        

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-pentagon-fill"></i>
                                <span>Payroll</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="createPay.jsp">Create PaySlip</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="paySlip.jsp">PaySlip List</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="taxR.jsp">Tax Return</a>
                                </li>
                                
                                <li class="submenu-item ">
                                    <a href="payR.jsp">PaySlip Report</a>
                                </li>
                                
                                <li class="submenu-item ">
                                    <a href="debtR.jsp">Debt Report</a>
                                </li>
                            </ul>
                        </li>

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-egg-fill"></i>
                                <span>Petty Cash</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="pettyCash.jsp">Petty cash </a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="credit.jsp">Add Credit</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="debit.jsp">Add Debit</a>
                                </li>
                                
                                 <li class="submenu-item ">
                                    <a href="category.jsp">Add Category</a>
                                </li>
                            </ul>
                        </li>


                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>
        
        <!-- end side bar -->
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <div class="page-heading">
                <div class="page-title">
                    <div class="row">
                        <div class="col-12 col-md-6 order-md-1 order-last">
                            <h3>Employee</h3>
                           
                        </div>
                        <div class="col-12 col-md-6 order-md-2 order-first">
                            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Employee</li>
                                </ol>
                                
                            <button type="button" class="btn btn-primary ml-1 change"
                                  data-bs-dismiss="modal">
                                  <span class="d-none d-sm-block"><i class="fa-solid fa-arrow-left"></i><i class="fa-solid fa-hand-pointer"></i><i class="fa-solid fa-arrow-right"></i>  Toggle Between Issued and Unissued Letters</span>
                                  
                                  
                              </button>
                                
                            </nav>
                            

                            
                        </div>
                    </div>
                </div>
                
                <br>
                
                	<script type="text/javascript">
												getall();
												getallL();
												function getall()
									            {
									                
									                $('#tbl-student').dataTable().fnDestroy();
									                $.ajax({
									                    
									                    url: "empData.jsp",
									                    type : "GET",
									                    dataType : "JSON",
									                    data:{"option":'get'},
									                    
									                    success:function(data)
									                    {
									                        
									                       $('#tbl-student').dataTable({
									                           "aaData":data,
									                           "scrollX": false,
									                           
									                           
									                           "aoColumns":
									                                   [
									                              
									                                	   {"sTitle": "Number","mData": "number"},
									                                    
									                                    {
									                                        "sTitle":
									                                        "ID",
									                                        "mData": "ssnit",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                            
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Name",
									                                        "mData": "name",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Account",
									                                        "mData": "account",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Bank",
									                                        "mData": "bank",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "SSNIT",
									                                        "mData": "ssnit",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Department",
									                                        "mData": "department",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Position",
									                                        "mData": "position",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                  
									                                   {
									                                        "sTitle":
									                                        "Status",
									                                        "mData": "status",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                    
									                                  
									                                   ]
									                       });
									                      
									                    }  
									                  
									                });
									                
									            }
												
												function getallL()
									            {
									                
									                $('#tbl-student1').dataTable().fnDestroy();
									                $.ajax({
									                    
									                    url: "empData.jsp",
									                    type : "GET",
									                    dataType : "JSON",
									                    data:{"option":'getL'},
									                    
									                    success:function(data)
									                    {
									                        
									                       $('#tbl-student1').dataTable({
									                           "aaData":data,
									                           "scrollX": false,
									                           
									                           
									                           "aoColumns":
									                                   [
									                              
									                                	   {"sTitle": "#","mData": "number"},
									                                    
									                                    {
									                                        "sTitle":
									                                        "Name",
									                                        "mData": "name",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                            
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Date",
									                                        "mData": "date",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Description",
									                                        "mData": "desc",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   
									                                   {
									                                        "sTitle":
									                                        "Phone",
									                                        "mData": "phone",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Company",
									                                        "mData": "company",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Position",
									                                        "mData": "position",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Department",
									                                        "mData": "depart",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a data-bs-toggle="modal" data-bs-target="#xlarge1" style="cursor:pointer;" onclick="update('+ids+')">'+mData+'</a>';
									                                        }
									                                   },
									                                  
									                                   {
									                                        "sTitle":
									                                        "File",
									                                        "mData": "letter",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a style="cursor:pointer;" onclick="down('+ids+')"><img src="assets/images/pdf-flat.png" width=20 height=20></a>';
									                                        }
									                                   },
									                                   {
									                                        "sTitle":
									                                        "Action",
									                                        "mData": "letter",
									                                        "render" : function(mData,type,row,meta)
									                                        {
									                                        	var ids =row["id"];
									                                        	return '<a style="cursor:pointer; color:red" onclick="del('+ids+')"><i class="fa-regular fa-trash-can"></i></a>';
									                                        }
									                                   }, 
									                                  
									                                   ]
									                       });
									                      
									                    }  
									                  
									                });
									                
									            }
												
												function update(ids){
													sessionStorage.setItem("id",ids);
													$.ajax({
										        		  
										        		  type:"POST",
										        		  url:"empData.jsp",
										        		  data:{"myid" :ids,"option":'show'},
										        		  
										        		  success:function(msg){
										        			  var obj = JSON.parse(msg);
										        			
										        			  $("#Name1").val(obj[0].name);
										        			  $("#gender1").val(obj[0].gender);
										        			  $("#Mstatus1").val(obj[0].Mstatus);
										        			  $("#email1").val(obj[0].email);
										        			  $("#Number11").val(obj[0].Number1);
										        			  $("#Number21").val(obj[0].Number2);
										        			  $("#adr").val(obj[0].localAddress);
										        			  $("#refrence1").val(obj[0].reference);
										        			  $("#ssnit1").val(obj[0].ssnit);
										        			  $("#company1").val(obj[0].company);
										        			  $("#department1").val(obj[0].department);
										        			  $("#position1").val(obj[0].position);
										        			  $("#date-of-joining1").val(obj[0].dateofjoining);
										        			  $("#date-of-leaving1").val(obj[0].dateofleaving);
										        			  $("#b-status1").val(obj[0].bStatus);
										        			  $("#basicSalary1").val(obj[0].basicSalary);
										        			  $("#accountHolder1").val(obj[0].accountHolder);
										        			  $("#accountNumber1").val(obj[0].accountNumber);
										        			  $("#bankName1").val(obj[0].bankName);
										        			  $("#bankBranch1").val(obj[0].bankBranch);
										        			  $("#bankShortCode1").val(obj[0].bankShortCode);
										        			  
										        			  $("#hes").val(obj[0].name);
										        			  
										        		  },
										        		  error(err){
										        			  alertify.error('Error');
										        		  }
										        		  
										        		  
										        	  })
												}
												
												
												 function add(){
													 var form = $('#fileUploadForm')[0];
													 var data = new FormData(form); 
										        	  $.ajax({
										        		  
										        		  type:"POST",
										        		  url:"letter",
										        		  enctype: 'multipart/form-data',
										        		  
										        	       processData: false,
										        	       contentType: false,
										        	       data:data,
										        		  /* data:{"Name":$("#Name1").val() ,"Number1":$("#Number11").val(),
										        			  "company":$("#company1").val(),"department":$("#department1").val(),
										        			  "position":$("#position1").val(),
										        			  "desc":$("#desc").val(),"file":$("#file").val(),"option":'add'}, */
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  
										        			  var obj = JSON.parse(msg);
										        			  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
										        			  getall();
										        			  getallL();
										        		  },
										        		  error(err){
										        			  alertify.error('Error');
										        		  }
										        		  
										        		  
										        	  })
										        	  
										          }
												 
												 
												 
												 
												 function down(id){
													alert(id);
										        	  $.ajax({
										        		  type:"GET",
										        		  url:"download",
										        		  data:{"myid":id}, 
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  
										        			  var obj = JSON.parse(msg);
										        			  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
										        			  getall();
										        		  },
										        		  error(err){
										        			  alertify.error(' file not seen ');
										        		  }
										        		  
										        		  
										        	  })
										        	  
										          }
												 
												 function del(id){
													 var doit = confirm("Do you want to delete data");
								            	      if(doit){
								            	    
								            	    	  gone(id);  
								            	    	  
								            	      }else
								            	    	  alertify.error(' Canceled ');
												 }
												 
								            	 function gone(id){   	
												 
														alert(id);
													
											        	  $.ajax({
											        		  type:"GET",
											        		  url:"delete.jsp",
											        		  data:{"myid" :id,"option":'delete'},
											        		 
											        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
											        		  success:function(msg){
											        			  
											        			  //var obj = JSON.parse(msg);
											        			  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
											        			  getallL();
											        		  },
											        		  error(err){
											        			  alertify.error(' file not seen ');
											        		  }
											        		  
											        		  
											        	  })
											        	  
											          }
												 
												 
												 function edit(){
										        	  
												      var id = sessionStorage.getItem("id");
												      
										        	  $.ajax({
										        		  
										        		  type:"POST",
										        		  url:"empData.jsp",
										        		  data:{"myid" :id,"Name":$("#Name1").val() ,"gender":$("#gender1").val(),"Mstatus":$("#Mstatus1").val(),"email":$("#email1").val(),"Number1":$("#Number11").val(),
										        			  "Number2":$("#Number21").val() ,"adr":$("#adr1").val(), "refrence":$("#refrence1").val(),"ssnit":$("#ssnit1").val(),"company":$("#company1").val(),"department":$("#department1").val(),
										        			  "position":$("#position1").val(),"date-of-joining":$("#date-of-joining1").val(),"date-of-leaving":$("#date-of-leaving1").val(),"b-status":$("#b-status1").val(),"basicSalary":$("#basicSalary1").val(),"accountHolder":$("#accountHolder").val()
										        			  ,"accountNumber":$("#accountNumber1").val(),"bankName":$("#bankName1").val(),"bankBranch":$("#bankBranch1").val(),"bankShortCode":$("#bankShortCode1").val(),"option":'edit'},
										        		 
										        			  /*------------------------------------   Ajax call area  ------------------------------------------------*/
										        		  success:function(msg){
										        			  var obj = JSON.parse(msg);
										        			  var notification = alertify.notify('Success', 'success', 5, function(){  console.log('dismissed'); }); alertify.set('notifier','position', 'top-right');
										        			  getall();
										        		  },
										        		  error(err){
										        			  alertify.error('Error');
										        		  }
										        		  
										        		  
										        	  })
										        	  
										          }
												
												</script>
                

                 <!--Modal Xl size -->
                                       
              
              <!-- End extra large modal -->
              
              <!--Extra Large Modal -->
              <div class="modal fade text-left w-100" id="xlarge1" tabindex="-1"
                  role="dialog" aria-labelledby="myModalLabel16" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-scrollable modal-xl"
                      role="document">
                      <div class="modal-content">
                          <div class="modal-header">
                              <h4 class="modal-title" id="myModalLabel130">Employee Name :  <input class="form-control" id="hes" readonly></h4>
                              <button type="button" class="close" data-bs-dismiss="modal"
                                  aria-label="Close">
                                  <i data-feather="x"></i>
                              </button>
                          </div>
                          <div class="modal-body">
                          
                           <form method="POST" enctype="multipart/form-data" id="fileUploadForm">
                                                        <div class="form-group row  container justify-content-center">
                                   <!-- Employee Details  -->
                                        
										
									
									  <div class="col-md-4 mb-3">
											<label> Name</label> <input type="text" class="form-control"
												placeholder="" name="Name" id="Name1" required>
										</div>
                                       

                                           <div class="col-md-4 mb-3">
											<label>Phone Number 1</label>
											<div>
												<input type="text" id="Number11" class="form-control"
													data-validation="number" name="Number11" />
											</div>
										</div>
                                            
                                     
                                            
                                        <div class="form-group floating-label col-md-4 mb-3">
                                        <label for="" class="mt-1"> Company</label>
											<input name="company" id="company1" class="form-control"
												>
												
										</div>
                                            
                                       <div class="form-group floating-label col-md-4 mb-3">
										<label for="" class="mt-1"> Position</label>
                                   <input  name="position" id="position1" class="form-control">
                                </div>
										
                                            
                                        <div class="form-group floating-label col-md-4 mb-3">
										<label for="" class="mt-1"> Department</label>
                                         <input  name="department" id="department1" class="form-control">
                                    
                                          </div>
                                            
                                            <div class="col-md-4 mb-3">
                                                <label>Write Letter Description</label>
                                                    <textarea class="form-control" name="desc" id="desc"></textarea>
                                            </div>
                                            
                                            
                                             <div class="col-md-4 mb-3">
                                                <label>Add/upload Letter </label>
                                                    <input type="file" class="form-control" name="file" id="file">
                                            </div>
                                            
                                            </div>
                                                       
                                                       
                                        </form>
                          
                          
                          

                          </div>
                          <div class="modal-footer">
                              <button type="button" class="btn btn-light-secondary"
                                  data-bs-dismiss="modal">
                                  <i class="bx bx-x d-block d-sm-none"></i>
                                  <span class="d-none d-sm-block">Close</span>
                              </button>
                              <button type="button" class="btn btn-primary ml-1"
                                  data-bs-dismiss="modal" onclick="add()">
                                  <i class="bx bx-check d-block d-sm-none"></i>
                                  <span class="d-none d-sm-block">Submit</span>
                              </button>
                          </div>
                      </div>
                  </div>
              </div>
              
              <!-- End extra large modal -->
              
            </div>
                
                
                <div class="noL">
                <section class="section">
                    <div class="card">
                        <div class="card-header">
                            Employees List
                        </div>
                        <div class="card-body">
                       
                    <table id="tbl-student" class="table table-hover table table-sm" cellpadding="0" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                             
                            </tr>  
                        </thead>  
                    </table>  
                
                        </div>
                    </div>

                </section>
                </div>
                
                
                <div class="letter">
                 <section class="section">
                    <div class="card">
                        <div class="card-header">
                            Employees List
                        </div>
                        <div class="card-body">
                       
                    <table id="tbl-student1" class="table table-hover table table-sm" cellpadding="0" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                            </tr>  
                        </thead>  
                    </table>  
                
                        </div>
                    </div>

                </section>
            </div>
           </div> 
<script type="text/javascript">

$(function(){
	  $('div.noL').hide();// hide it initially
	  $('button.change').on('click', function(){
	     $('div.letter, div.noL').toggle();
	  });
	});


</script>
            

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                   
                </div>
            </footer>
        </div>
   
    <script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/vendors/simple-datatables/simple-datatables.js"></script>
    <script>
        // Simple Datatable
        let table1 = document.querySelector('#table1');
        let dataTable = new simpleDatatables.DataTable(table1);
    </script>

    <script src="assets/vendors/choices.js/choices.min.js"></script>
    <script src="assets/js/pages/form-element-select.js"></script>

    <script src="assets/js/main.js"></script>
</body>

</html>