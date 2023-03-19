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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title> Purchase Report</title>
</head>
<body>

<jsp:include page="adminHeader.jsp" />
<div class="container">
	<h3>Purchase Report</h3>
	 <input class="form-control" id="myInput" type="text" placeholder="Search..">
	
	<table class ="table table-striped" border="1" width="100%" >  
		
		<thead class="thead-dark">
		<tr>
		<th>Order No.<th>User Name</th><th>User Email Id</th><th>Product Name</th> 
		<th>Product Category</th><th>Order Date</th><th>Price</th>
		</tr> 
		</thead>
	 	<tbody id="myTable">
		<c:forEach items="${purchaseItemList}" var="p">
			<tr><td>${p.purchaseOrder.ID}</td>
			<td>${p.user.firstName}</td>
			<td>${p.user.emailId}</td>
			<td>${p.poduct.productName}</td>
			<td>${p.poduct.productCategory.brandName}</td>  
			<td>${p.purchaseOrder.date}</td>
			<td>${p.price}</td>
		
		</c:forEach>  
		</tbody>
	</table>  
</div>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>
</html>