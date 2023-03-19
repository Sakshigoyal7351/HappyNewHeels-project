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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
    <title>Happy Heels</title>
</head>
<body>
<jsp:include page="adminHeader.jsp" />
<div class="jumbotron text-center">
    <h1 class="display-4">Welcome  Admin</h1>
    <p>Easily manage website data</p>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 pt-3" >
            <div class="card" style="background-color:white;">
                <div class="card-body">
                    <h4 class="card-title">Categories</h4>
                    <p class="card-text">Manage the categories section here.</p>
                    <a href="/admin/categories" class="card-link btn btn-primary">Manage</a>

                </div>
            </div>
        </div>
        <div class="col-sm-3 pt-3" >
            <div class="card" style="background-color:white;">
                <div class="card-body">
                    <h4 class="card-title">Products</h4>
                    <p class="card-text">Manage all the products here.</p>
                    <a href="/admin/products" class="card-link btn btn-primary">Manage</a>

                </div>
            </div>
        </div>
        
        <div class="col-sm-3 pt-3" >
            <div class="card" style="background-color:white;">
                <div class="card-body">
                    <h4 class="card-title">Registered Users</h4>
                    <p class="card-text">See All Registered Users Here.</p>
                    <a href="/admin/userList" class="card-link btn btn-primary">List Users</a>

                </div>
            </div>
        </div>
        
        <div class="col-sm-3 pt-3" >
            <div class="card" style="background-color:white;">
                <div class="card-body">
                    <h4 class="card-title">Purchase Report</h4>
                    <p class="card-text">See Purchase Report Here</p>
                    <a href="/admin/purchaseReport" class="card-link btn btn-primary">Purchase Report</a>

                </div>
            </div>
        </div>

    </div>
</div>

</body>

</html>