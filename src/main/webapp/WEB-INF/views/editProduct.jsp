<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<title>Edit Product</title>
</head>
<body>
<jsp:include page="adminHeader.jsp" />
	<div class="container">
	<h2>Edit Product Detail</h2>
			<form:form action="/admin/product/Edit/save" modelAttribute="product" method="post">
				<form:hidden path="productCode"/>
				
				<label for="productName">Product Name </label>
				<form:input path="productName"/> 
					
				
				 <label for="size">Size</label>
				 	<form:input path="size"/> 
						 
				
				<label for="price">Price </label>
				<form:input path="price"/> 
				
				<label for="productCategory" >Product Category</label>
				<select
						name="productCategory">
							<c:forEach items="${categories}" var="category">
						
								<c:choose>
									<c:when test="${category.id == product.productCategory.id}">
										<option value="${category.id}" selected="selected">
											${category.brandName} | ${category.style} | ${category.targetGroup}
										</option>
									</c:when>
									<c:otherwise>
										<option value="${category.id}">${category.brandName} | ${category.style} | ${category.targetGroup}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
					</select>
				
				<label for="image_Url">Image </label>
				<%-- <form:input path="image_Url"/>  --%>
				  <img class="" height="150px" width="150px" src='/productImages/${product.image_Url}' alt="${product.productName}">
				<!-- select from folder -->
				
				
				
			
			
				<input class="btn, btn-success btn-lg .btn-block" type="submit"
				name="Edit" value="Edit Product" > 
				
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