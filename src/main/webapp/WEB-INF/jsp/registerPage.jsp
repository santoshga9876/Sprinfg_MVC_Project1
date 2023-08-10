<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
<title>Register Form here</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="styles.css">

<style type="text/css">
/* Style the dropdown button */
.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 12px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
	position: relative;
	display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: #f1f1f1;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}

/* Styles for the navbar */
.navbar {
	background-color: #4CAF50;
	/* Replace this with your desired background color */
}

/* Styles for the navbar links (optional) */
.navbar ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
}

.navbar li {
	margin-right: 20px;
}

.navbar li a {
	text-decoration: none;
	color: white;
	padding: 10px;
}
</style>
</head>
<body>
	<div class="navbar">
		<div class="dropdown">
			<a href="bikeForm"><button class="dropbtn">Bike</button></a>

		</div>

		<div class="dropdown">
			<a href="scootersForm"><button class="dropbtn">Scooters</button></a>

		</div>

		<div class="dropdown">
			<button class="dropbtn">Bike Inventory Management</button>
			<div class="dropdown-content">
				<a href="bikinventoryForm"> Inventory Management </a> <a
					href="stokform">Bike Stock</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">Employee Management</button>
			<div class="dropdown-content">
				<a href="registerForm"> New Employee Register</a> <a
					href="updateForm">UpDate</a> <a href="selectById">Select By Id</a>
				<a href="deleteForm">Delete Employee</a> <a href="selectAllEmployee">All
					Employee</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">Sales</button>
			<div class="dropdown-content">
				<a href="salesRegistrationForm">sales Registration</a> <a
					href="salesDeleteForm">Delete Sales</a> 
					<a href="selectAllSales">All Sales</a>
			</div>
		</div>

		<a class="btn btn-primary" href="singout" role="button">LogOut</a>

	</div>

	<h4 style="color: green">${success }</h4>
	<h4 style="color: red">${error }</h4>


	<section class="h-100 h-custom" style="background-color: #8fc4b7;">
	<div class="container py-5 h-100">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-lg-8 col-xl-6">
				<div class="card rounded-3">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
						class="w-100"
						style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
						alt="Sample photo">
					<div class="card-body p-4 p-md-5">
						<h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Registration
							Information</h3>

						<form action="register" method="post" class="px-md-2">

							<div class="form-outline mb-4">
								<input type="text" name="fname" id="form3Example1q"
									class="form-control" /> <label class="form-label"
									for="form3Example1q">First Name</label>
							</div>

							<div class="form-outline mb-4">
								<input type="text" name="lname" id="form3Example1q"
									class="form-control" /> <label class="form-label"
									for="form3Example1q">Last Name</label>
							</div>

							<div class="form-outline mb-4">
								<input type="date" name="dob" id="form3Example1q"
									class="form-control" /> <label class="form-label"
									for="form3Example1q">Date Of Birth</label>
							</div>

							<div class="form-outline mb-4">
								<div class="form-group">
									<select type="text" name="gender" class="form-control"
										id="exampleFormControlSelect1">
										<option value="Gender" disabled>Select Gender</option>
										<option value="Female">Female</option>
										<option value="Male">Male</option>
										<option value="Other">Other</option>
									</select> <label for="exampleFormControlSelect1"> select Gender</label>
								</div>
							</div>

							<div class="form-outline mb-4">
								<div class="form-group">
									<select type="text" name="state" class="form-control"
										id="exampleFormControlSelect1">
										<option value="Maharastra">MH</option>
										<option value="Gujarat">GU</option>
										<option value="Karnataka">KA</option>
										<option value="Uttar Pradesh">UP</option>
										<option value="Haryana">HA</option>
									</select> <label for="exampleFormControlSelect1"> select State</label>
								</div>
							</div>

							<div class="form-outline mb-4">
								<input type="date" name="date" id="form3Example1q"
									class="form-control" /> <label class="form-label"
									for="form3Example1q">Date</label>
							</div>

							<div class="form-outline mb-4">
								<input type="text" name="password" id="form3Example1q"
									class="form-control" /> <label class="form-label"
									for="form3Example1q">password </label>
							</div>




							<button type="submit" class="btn btn-success btn-lg mb-1">Submit</button>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	</section>



</body>
</html>