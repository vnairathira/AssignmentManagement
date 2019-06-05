<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>assignment-management</title>
<style>
* {
	box-sizing: border-box;
}

.navbar a {
	padding: 14px 16px;
	font-size: 17px;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.main {
	 padding: 20px;
	margin-left:350px;
	margin-top: 80px;
	height: 1000px;
}

.form-group, .input-group {
	dispaly: flex;
	flex-flow: row wrap;
	align-items: center;
}

.form-group label, .input-group label {
	margin: 5px 10px 5px 0;
}

.form-group input, .input-group input, .form-group select {
	vertical-align: middle;
	margin: 5px 10px 5px 0;
	padding: 10px;
	border: 1px solid #ddd;
}

@media ( max-width :800px) {
	.form-group input, .input-group input, .form-group select {
		margin: 10px 0;
	}
	.form-group, .input-group {
		flex-direction: column;
		align-items: stretch;
	}
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
		<div class="collapse navbar-collapse">
			<a class="active text-light" href="Index.jsp"><i
				class="fa fa-fw fa-home"></i>Home</a> <a class="text-light" href="#"><i
				class="fa fa-fw fa-upload"></i> Upload</a> <a class="text-light"
				href="SignUp.jsp"><i class="fa fa-fw fa-user"></i> Sign up</a> <a
				class="text-light" href="AdminSignIn.jsp"><i
				class="fa fa-fw fa-sign-in"></i> SignIn</a>
		</div>
	</nav>
	<div class="main" align="center">
		<form action="signUp" method="post" name="contactForm">
			<div class="container-fluid">
				<div class="row">
					<div class="jumbotron">
						<h1 class="text-center">Sign Up</h1>
						<br>

						<div class="input-group">
							<div class="input-group">
								<label class="input-group">Name</label>
							</div>
							<input type="text" class="form-control col-sm-5"
								placeholder="First name" name="fName" id="fName"> <input
								type="text" class="form-control col-sm-5"
								placeholder="Last name" name="lName" id="lName">
							<div class="error" id="nameErr"></div>
						</div>

						<div class="form-group row">
							<label for="email" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="EmailId@gmail.com">
							</div>
							<div class="error" id="emailErr"></div>
						</div>
						<div class="form-row">

							<div class="form-group col-sm-4">
								<label for="country">Country</label> <select name="country"
									id="country" class="form-control">
									<option value="">--Select--</option>
									<option value="ind">Ind</option>
									<option value="pak">pak</option>
									<option value="us">us</option>

								</select>
								<div class="error" id="coutryErr"></div>
							</div>

							<div class="form-group col-sm-2">
								<label for="code">Code</label> <input type="text"
									class="form-control" id="code" name="code">
							</div>

							<div class="form-group col-sm-5">
								<label for="phone">Phone</label> <input type="text"
									class="form-control" id="phone" name="phone"
									placeholder="Phone">
							</div>
							<div class="error" id="phoneErr"></div>
						</div>

						<div class="form-group row">
							<div class="col-sm-10 offset-sm-2">
								<button type="submit" class="btn btn-primary">Sign Up</button>
								<button type="reset" class="btn btn-outline-dark">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-bottom">
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ">
				<p class="text-light">Copyright &copy;
					assignment-management@2019</p>
			</div>
			<div class="col-md-6 text-md-right">
				<a href="#" class="text-light">Terms of Use</a> <span
					class="text-muted mx-2">|</span> <a href="#" class="text-light">Privacy
					Policy</a>
			</div>
		</div>
	</nav>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>