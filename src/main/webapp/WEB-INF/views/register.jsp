<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>New Customer Register</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
			<h3>Now let's make you a Happy Heels Member.</h3>
			<form action="/register/save" method="post" >
				<label for="usrname">Email Id </label>
				<input type="text" id="emailId" name="emailId" required placeholder="Email Id">
				 <label for="psw">Password</label>
				 <input type="password" id="psw" name="password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required placeholder="Password"> 
				
				<label for="firstName">First Name </label>
				<input type="text" id="firstName" name="firstName" required placeholder="First Name">
				
				<label for="lastName">Last Name</label>
				<input type="text" id="lastName" name="lastName" required placeholder="Last Name">
				
				<label for="country">Country </label>
				<input type="text" id="country" name="country" required placeholder="Country">
				
				<label for="dateOfBirth" class="text-dark">Date Of Birth</label> 
				<input name="dateOfBirth" type="text" 
					id="dateOfBirth" required="required" placeholder="Date of Birth YYYY/MM/DD"/>
					
					<div>
						<label for="gender" class="text-dark ">Gender</label>
					<div class="form-check-inline">
							<label class="radio-inline form-check-label"><input class="form-check-input" type="radio" value="M" name="gender" checked="checked" />Male</label>
						</div>
						<div class="form-check-inline">
							<label class="radio-inline form-check-label"><input  class="form-check-input" type="radio" value="F" name="gender" />Female</label>
						</div>
						
					</div>	
			
				<input class="btn, btn-success btn-lg .btn-block" type="submit"
				name="SignUp" value="Create Account" > 
				
				<div style="color:red">${errMessageSignIn}</div>
			</form>
		</div>
			<script>
	$(function() {
		$("#dateOfBirth").datepicker({
			dateFormat: 'yy/mm/dd',
	        changeMonth: true,
	        changeYear: true,
	        inline: true,
			minDate: 0
		});
	});
</script>
</body>


<style>
/* Style all input fields */
 label, .action-label {
	font-size: x-large;
	color: black;
}

input {
	width: 100%;
	padding: 12px;
	border: 3px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
} 


/* Style the container for inputs */
.container {
	/* width: 50%;
	margin-left: 25%;
	margin-top: 8% */
	position: relative;
	z-index: 2;
	width: 500px;
	margin: 50px auto;
	padding: 20px;
	background: white;
	opacity: 90%;
}
 

.btn {
	background-color: #04AA6D;
	color: #0099CC;
	border: 2px solid #0099CC;
	border-radius: 6px;
	text-transform: uppercase;
}


</style>
</html>