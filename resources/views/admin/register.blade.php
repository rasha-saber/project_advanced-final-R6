<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login/Registeration</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
		rel="stylesheet">
	<link rel="stylesheet" href="assests/css/dataTables.dataTables.min.css">
	<link rel="stylesheet" href="assests/css/main.min.css">
	<link rel="stylesheet" href="assests/css/styles.css">
</head>

<body class="registeration-wrapper"
	style="background-image: linear-gradient(rgba(255, 255, 255, 0.735), rgba(0, 0, 0, 0.5))">

	<div class="container my-5 bg-white rounded-3">
		<div class="row">
			<div class="col-md-5 d-none d-md-block img-wrapper">
				<img src="{{asset('assests/images/rear-view-young-college-student.jpg')}}" alt="">
			</div>
			<div class="col-md-7">
				<form action="" class="text-center h-100 px-3 d-flex flex-column justify-content-center">
					<h3 class="fw-semibold mb-5">REGISERTATION FORM</h3>
					<div class="form-group d-flex mb-3">
						<input type="text" placeholder="First Name" class="form-control me-2" name="first_name">
						<input type="text" placeholder="Last Name" class="form-control" name="last_name">
					</div>
					<div class="input-group mb-3">
						<input type="text" placeholder="Username" class="form-control"name="username">
						<img src="{{asset('assests/images/user-svgrepo-com.svg')}}" alt="" class="input-group-text">
					</div>
					<div class="input-group  mb-3">
						<input type="text" placeholder="Email Address" class="form-control" name="email">
						<img src="{{asset('assests/images/email-svgrepo-com.svg')}}" alt="" class="input-group-text">
					</div>
					<div class="input-group mb-3">
						<input type="password" placeholder="Password" class="form-control" name="password">
						<img src="{{asset('assests/images/password-svgrepo-com.svg')}}" alt="" class="input-group-text">
					</div>
					<div class="input-group mb-5">
						<input type="password" placeholder="Confirm Password" class="form-control" name="password_confirmation">
						<img src="{{asset('assests/images/password-svgrepo-com.svg')}}" alt="" class="input-group-text">
					</div>
					<button class="btn btn-dark px-5 mb-2">
						REGISTER
						<img src="{{asset('assests/images/arrow-sm-right-svgrepo-com.svg')}}" alt="">
					</button>
					<a href="login.html" class="fw-semibold fs-6 text-decoration-none text-dark">Already have account?</a>
				</form>
			</div>
		</div>
	</div>

</body>

</html>