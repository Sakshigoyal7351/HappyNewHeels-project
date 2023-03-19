<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/link>

</head>

<script type="text/javascript">
var check = function() {
  if (document.getElementById('password').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'Password matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'Password not matching';
  }
}
  </script>
<body>


<jsp:include page="header.jsp" />
<div class="container">
	<h2>  Change Password </h2>
	 	<form action="/login/changePassword" method="post" >
	 	<%-- <form:form action="/login/changePassword/" method="post" modelAttribute="user">
            <form:label path="emailId">Email Address </form:label> <form:input type="text" path="emailId" />
            <form:label path="password">Password: </form:label>
            	 <form:input type="text" path="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
		    	title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" 
		    />
            <input type="submit" value="submit"/>
        </form:form> --%>
 		
		    <label for="usrname">Email Address </label>
		     <input type="text" id="emailId" name="emailId" required>
		     <%-- <input type="text" id="emailId" placeholder= ${emailIdVal }
                                   class="form-control"> --%>
		
		    <label for="psw">Password</label>
		    <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
		    	title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" 
		    required>
		    <label for="psw">Confirm Password</label>
		    <input type="password" id="confirm_password" name="confirm_password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
		    	title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" 
		    required onkeyup='check();'>
		    <span id='message'></span>
		      
		     <input class="btn, btn-success btn-lg .btn-block" type="submit"
				name="Reset" value="Reset Password" > 
				
			<a class="action-label btn, .btn-link"
			href="/home">Back to Home Page</a> 
	     <div style="color:green">${changePasswordMsg}</div>
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