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
	margin-top: 80px;
	height: 1500px;
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
<body onload='document.form1.text1.focus()'>
<div class="mail">
<h2>Input Password and Submit [8 to 15 characters which contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character]</h2>
<form name="form1" action="#">
<ul>
<li><input type='text' name='text1'/></li>
<li class="rq">*Enter numbers only.</li>
<li>&nbsp;</li>
<li><input type="submit" name="submit" value="Submit" onclick="allnumericplusminus(document.form1.text1)" /></li>
<li>&nbsp;</li>
</ul>
</form>
</div>
<script src="check-password-4.js">
function CheckPassword(inputtxt) 
{ 
var decimal=  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
if(inputtxt.value.match(decimal)) 
{ 
alert('Correct, try another...')
return true;
}
else
{ 
alert('Wrong...!')
return false;
}
} 

</script>




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