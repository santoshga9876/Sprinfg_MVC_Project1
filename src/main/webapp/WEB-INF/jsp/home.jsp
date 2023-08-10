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

<title>Dropdown Menu Example</title>
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

	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="false">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img alt="sdasdas" width="100%" height="80%" src="resources/images/bgbanner.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>First slide label</h5>
					<p>Some representative placeholder content for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img alt="sdasdas" width="100%" height="80%" src="resources/images/K200banner.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Second slide label</h5>
					<p>Some representative placeholder content for the second
						slide.</p>
				</div>
			</div>
			<div class="carousel-item">
			<img alt="sdasdas" width="100%" height="80%" src="resources/images/spbanner.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Third slide label</h5>
					<p>Some representative placeholder content for the third slide.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
</body>
</html>
