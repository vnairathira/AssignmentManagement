<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<style>
.navbar a{
padding :14px 16px;
font-size:17px;
}
</style>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- <link rel="stylesheet" href="style.css"> -->
    <title>assignment-management</title>
    
<style>
.container {
	padding: 20px;
	margin-top: 80px;
	height: 1000px;
}

.navbar a {
	padding: 14px 16px;
	font-size: 17px;
}
.form-group label,.input-group label{
margin:5px 10px 5px 0;
}
.form-group input,.input-group input,.form-group select{

vertical-align:middle;
margin:5px 10px 5px 0;
padding:10px;
border: 1px solid #ddd;
}


.jumbotron {
	padding: 20px;
	margin-top: 80px;
	height: 500px;
	
	 margin-left: auto;
  margin-right: auto;
  width: 40%;
}
</style>    
    
    </head>
<body>

<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
<div class="collapse navbar-collapse">
  <a class="active text-light" href="#"><i class="fa fa-fw fa-home"></i>Home</a> 
  <a  class="text-light" href="#"><i class="fa fa-fw fa-upload"></i> Upload</a> 
  <a  class="text-light" href="SignUp.jsp"><i class="fa fa-fw fa-user"></i> Sign up</a>
  <a  class="text-light" href="#"><i class="fa fa-fw fa-sign-in"></i> Login</a>
</div>
</nav>


    	<!-- Demo Content -->
	<div class="container">
		<div class="jumbotron">
			<h2 align="center">Reset Password</h2><br>
			<div class="bs-example">
				<form action="#"
					class="needs-validation" method="post" novalidate>
					<div class="form-group col-sm-10">
						<label for="oldPwd">Old password</label> <input type="password"
							class="form-control" id="oldPwd" placeholder="Old password" required>
						
					</div>
					<div class="form-group col-sm-10">
						<label for="newPwd">New Password</label> <input type="password"
							class="form-control" id="newPwd" placeholder="New Password"
							required>
					</div>
					<div class="form-group col-sm-10">
						<label for="cnfrmPwd">Confirm Password</label> <input type="password"
							class="form-control" id="cnfrmPwd" placeholder="Confirm Password"
							required>
					</div>
					
					<div class="form-group">
						<label class="form-check-label"><input type="checkbox">
							Remember me</label>
					</div>
				<div class="form-group row">
								<div class="col-sm-10 offset-sm-2">
									<button type="submit" class="btn btn-primary">Change</button>
									<button type="reset" class="btn btn-outline-dark">Close</button>
								</div>
							</div>
				</form>

			</div>
		</div>

	</div>
    
 
 
    <nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-bottom">
        <div class="collapse navbar-collapse" id="navbarCollapse">
<div class="navbar-nav ">
				<p class="text-light">Copyright &copy; assignment-management@2019</p>
			</div>
			<div class="col-md-6 text-md-right">
			<a href="#" class="text-light">Terms of Use</a>
			<span class="text-muted mx-2">|</span>
			<a href="#" class="text-light">Privacy Policy</a>
			</div>
             </div>
    </nav>

    

    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>