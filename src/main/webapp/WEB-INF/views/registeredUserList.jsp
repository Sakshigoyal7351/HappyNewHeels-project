<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="ISO-8859-1"> -->
  <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Registered Users List</title>
</head>
<jsp:include page="adminHeader.jsp" />
<body>
<!-- <div>

<form  action = "/admin/users/search" method ="post">
<h2> Registered User</h2>
<label for="SearchCriteria">Search</label>
			 <input type="text" name="searchId"  placeholder="Enter any value"> 
	
<button> Search </button>

</form>
		
</div>
 -->
 
 <div class="container">
 <h3>Registered User List </h3>
 <input class="form-control" id="myInput" type="text" placeholder="Search any value..">


<table class ="table table-striped" border="1" width="100%" >  
	
	<thead class="thead-dark">
	<tr>
	<th>Email Id<th>First Name</th><th>Last Name</th><th>Country</th>  
	<th>Gender</th><th>Date Of Birth</th>
	</tr> 
	</thead>
 	<tbody id="myTable">
	<c:forEach items="${userList}" var="user">
		<tr><td>${user.emailId}</td>
		<td>${user.firstName}</td>
		<td>${user.lastName}</td>
		<td>${user.country}</td>
		<td>${user.gender}</td>  
		<td>${user.dateOfBirth}</td>
	
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