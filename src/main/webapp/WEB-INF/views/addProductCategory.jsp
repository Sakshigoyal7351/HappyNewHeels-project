<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          >
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          >
  
<title>Add Product Category</title>
</head>
<jsp:include page="adminHeader.jsp" />
<body>
	<div class="container">
	<h2>Add Product Category</h2>
				<form  action="/categories/add" method="post" >
					<label for="brandName">Brand Name </label>
						<input type="text" id="brandName" name="brandName" required>
					
					 <label for="style">Style</label>
					 	<input type="text" id="style" name="style" required>
							 
					
					<label for="targetGroup">Target Group </label>
					<input type="text" id="targetGroup" name="targetGroup" required>
					
					
				
					<input class="btn, btn-success btn-lg .btn-block" type="submit"
					name="Add" value="Add Category" > 
					
					<div style="color:red">${errMessageAddCategory}</div>
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