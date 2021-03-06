<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
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
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<title>Kodson plus</title>
</head>
<body class="login-body">
	<!--Login Wrapper-->
	<div class="container-fluid login-wrapper">
		<div class="login-box">
			<h1 class="text-center mb-5">
				<i class=" fa fa-user text-primary"></i> KODSON PLUS
			</h1>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-12 login-box-info">
					<h3 class="mb-4">Login</h3>
					<p class="mb-4">Hello welcome please this sytem contains
						company's official data please clear login details if you are not
						an authorized person thank you.</p>
					<p class="text-center">
						<a href="" class="btn btn-light">Clear login</a>
					</p>
				</div>
				<div class="col-md-6 col-sm-6 col-12 login-box-form p-4">
					<h3 class="mb-2">Login</h3>
					<small class="text-muted bc-description">Sign in with your
						credentials</small>


					<form action="login" class="mt-2" method="post">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fa fa-user"></i></span>
							</div>
							<input type="text" class="form-control mt-0"
								placeholder="Admin Name" aria-label="adminName"
								aria-describedby="basic-addon1" name="username">
						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fa fa-lock"></i></span>
							</div>
							<input type="password" class="form-control mt-0"
								placeholder="Password" aria-label="Password"
								aria-describedby="basic-addon1" name="password">
						</div>

						<div class="form-group">
							<button class="btn btn-theme btn-block p-2 mb-1" type="submit">Login</button>
							<a href=""> <small class="text-theme"><strong></strong></small>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!--Login Wrapper-->

	<!-- Page JavaScript Files-->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery-1.12.4.min.js"></script>
	<!--Popper JS-->
	<script src="assets/js/popper.min.js"></script>
	<!--Bootstrap-->
	<script src="assets/js/bootstrap.min.js"></script>

	<!--Custom Js Script-->
	<script src="assets/js/custom.js"></script>
	<!--Custom Js Script-->
</body>
</html>