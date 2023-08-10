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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

	<div class="col">
		<div class="card">
					<img alt="card1" width="90%" height="400em" src="resources/images/chard1.jpg">
			<div class="card-body">
				<button>
					<a href="bike2Register">Buy Now</a>
				</button>
				<h1 class="text-primary bg-blue" >CB Shine</h1>
				<p class="card-text">Amazon Brand - Solimo Honda CB Shine Water Resistant Bike Cover (Silver) | Cover for BikeF</p>
			</div>
		</div>
	</div>
</body>
</html>