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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h4 style="color: green">${successMsg }</h4>
	<h4 style="color: red">${errorMsg }</h4>

	<form action="login" method="post">
		<section class="vh-100 gradient-custom">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-dark text-white" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">

							<div class="mb-md-5 mt-md-4 pb-5">

								<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
								<p class="text-white-50 mb-5">Please enter your login and
									password!</p>

								<div class="form-outline form-white mb-4">
									<input type="text" name="username" id="typePasswordX"
										class="form-control form-control-lg" /> <label
										class="form-label" for="typePasswordX">User Name</label>
								</div>

								<div class="form-outline form-white mb-4">
									<input type="password" name="password" id="typePasswordX"
										class="form-control form-control-lg" /> <label
										class="form-label" for="typePasswordX">Password</label>
								</div>

								<p class="small mb-5 pb-lg-2">
									<a class="text-white-50" href="#!">Forgot password?</a>
								</p>

								<button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>

								<div class="d-flex justify-content-center text-center mt-4 pt-1">
									<a href="#!" class="text-white"><i
										class="fab fa-facebook-f fa-lg"></i></a> <a href="#!"
										class="text-white"><i
										class="fab fa-twitter fa-lg mx-4 px-2"></i></a> <a href="#!"
										class="text-white"><i class="fab fa-google fa-lg"></i></a>
								</div>

							</div>

							<div>
								<p class="mb-0">
									Don't have an account? <a href="#!"
										class="text-white-50 fw-bold">Sign Up</a>
								</p>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
	</form>
</body>
</html>