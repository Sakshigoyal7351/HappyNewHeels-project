<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

  <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" type="text/javascript"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.12.1/jquery-ui.min.js" type="text/javascript"></script>
    <link href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>
.navbar {
  z-index: 2;
}
</style>

<nav class="navbar navbar-dark bg-dark navbar-expand-sm " >
    <div class="container-fluid">
<!-- <nav class="navbar navbar-dark bg-dark navbar-expand-sm"> -->
<a class="navbar-brand" href="#">
    <img src="/images/shoeLogo.jpg" width="60" height="60" class="d-inline-block align-top" alt="Happy Heels">
    Happy Heels
  </a>
 <ul class="nav nav-pills" role="tablist">
    <li  class="nav-item"><a class="nav-link" href="/admin">Dashboard</a></li>  
    <c:if test = "${not empty userEmailId }">
	    <li><span class="badge badge-warning" style = "font-size: x-large;">Hi! ${userName}</span></li>
	    <li class="nav-item"><a class="nav-link" href="/logout">
	    <img src="/images/Logout.png" width="30" height="30" class="d-inline-block align-top" alt="">
	    Logout</a>
	    </li>
 	</c:if>
 
 </ul>
</div>
 </nav>


</html>