<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      >
<title>Login</title>
	<script type="text/javascript">
		function getEmailId() {
		var emailIdVar = document.getElementById('emailId').value;
		
		}
	</script>

</head>


	<jsp:include page="header.jsp" />
	<div class="container">
	
		
		<form method="post" action="login">
			<label for="usrname">Email Address</label>
			 <input type="text"
				id="emailId" name="emailId" required  > 
			<label for="psw">Password</label>
			<input type="password" id="password" name="password"
					
				required> 
				
			<input class="btn, btn-success btn-lg .btn-block" type="submit"
				name="Login" value="Login" > 
			<a class="action-label btn, .btn-link"
				href="/login/changePassword/${emailIdVar}" >Change Password </a> 
				&ensp;&ensp;&ensp;
			<a class="action-label btn, .btn-link" href="/register">Sign Up, its free</a>
			<div style="color:red">${errorMessage}</div>
		</form>
	</div>
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