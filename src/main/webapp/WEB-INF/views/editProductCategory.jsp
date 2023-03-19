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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          >
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          >
  
<title>Edit Product Category </title>
</head>
<body>
	<div class="container">
			<form:form action="/category/update/save" modelAttribute="productCategory" method="post">
				<form:hidden path="id"/>
				
				<label for="brandName">Brand Name </label>
					<form:input path="brandName"/> 
				
				 <label for="style">Style</label>
				 	<form:input path="style"/> 
				
				<label for="targetGroup">Target Group </label>
					<form:input path="targetGroup"/> 
				
				<input class="btn, btn-success btn-lg .btn-block" type="submit"
				name="Edit" value="Edit Category" > 
				
				<div style="color:red">${errMessageAddCategory}</div>
			 </form:form>
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