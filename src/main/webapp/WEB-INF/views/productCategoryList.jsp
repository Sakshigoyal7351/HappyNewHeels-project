<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          >
  
<title>Product Category List</title>
</head>
<body>
<jsp:include page="adminHeader.jsp" />
<div class="container">
	<a href="/admin/categories/add" style="margin: 20px 0" class="btn btn-primary">Add Category</a>
	<table class ="table table-striped" border="1" width="100%" >  
		
		<thead class="thead-dark">
		<tr>
		<th>Brand Name<th>Wear Type</th><th>Target group</th><th>Edit</th><th>Delete</th>
		</tr> 
		</thead>
	 
		<c:forEach  var="prodCategory" items="${categories}">
		
			<c:url var="editLink" value="/admin/category/Edit">
						<c:param name ="categoryId" value="${prodCategory.id}"/>
			</c:url>
			<c:url var="deleteLink" value="/admin/category/Delete">
						<c:param name ="categoryId" value="${prodCategory.id}"/>
			</c:url>
				
			<tr>
				<td>${prodCategory.brandName}</td>
				<td>${prodCategory.style}</td>
				<td>${prodCategory.targetGroup}</td>
				
				<td><a href="${editLink}">Edit</a></td>  
				<td><a href="${deleteLink}" onclick="if (!('are you sure you want to delete this todo?'))) return false">Delete</a></td>
			</tr>  
		
		</c:forEach>  
	</table> 
</div>
</body>
</html>