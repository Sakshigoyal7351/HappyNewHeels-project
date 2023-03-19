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
<title>Main Shop Page</title>
</head>
	<jsp:include page="header.jsp" />
<body>
    <div class="container" style="margin-top: 30px">
     <div class="row">
        <div class="col-sm-3">
        
           
          <div class="col-sm-10 sidenav">
            <h6 class="font-weight-bold">Category</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="/shop" class="list-group-item list-group-item-action">All Products</a>
              <a href="/shop/Gender/Men" class="list-group-item list-group-item-action">Men</a>
              <a href="/shop/Gender/Women" class="list-group-item list-group-item-action">Women</a>
              <a href="/shop/Kids/Boys" class="list-group-item list-group-item-action">Kids-Boys</a>
              <a href="/shop/Kids/Girls" class="list-group-item list-group-item-action">Kids-Girls</a>
              <a href="" class="list-group-item list-group-item-action"></a>
            </div>
          </div> 
          
          <div class="col-sm-10 sidenav">
            <h6 class="font-weight-bold">Brand</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="/shop/brand/Nike" class="list-group-item list-group-item-action">Nike</a>
              <a href="/shop/brand/Adidas" class="list-group-item list-group-item-action">Adidas</a>
              <a href="/shop/brand/NewBalance" class="list-group-item list-group-item-action">NewBalance</a>
            </div>
          </div> 
           
           <div class="col-sm-10 sidenav">
            <h6 class="font-weight-bold">Style</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="/shop/style/Running" class="list-group-item list-group-item-action">Running</a>
              <a href="/shop/style/Soccer" class="list-group-item list-group-item-action">Soccer</a>
              <a href="/shop/style/Basketball" class="list-group-item list-group-item-action">Basketball</a>
              <a href="/shop/style/Golf" class="list-group-item list-group-item-action">Golf</a>
               <a href="/shop/style/Gym" class="list-group-item list-group-item-action">Gym</a>
              <a href="/shop/style/BaseBall" class="list-group-item list-group-item-action">BaseBall</a>
            </div>
          </div> 
        </div>
       <div class="col-sm-9">
            <div class="card" style="margin-top: 20px" >
             <c:forEach  var="product" items="${products}">
             
                <div class="row no-gutters" style="margin-top: 20px">
                	
                    <div class="col-sm-5 d-flex justify-content-center">
                        <img class="" height="150px" width="150px" src='/productImages/${product.image_Url}' alt="${product.productName}">
                    </div>
                    <div class="col-sm-7 d-flex justify-content-center">
                        <div class="card-body">
                            <h4 class="card-title" >${product.productName}</h4>
                            <h5> <span>$${product.price}</span></h5>
                           <h5>Size:
              				  <span> ${product.size}</span>
            				</h5>
                            <a href="/shop/viewProduct/${product.productCode}" class="btn btn-primary">View Product</a>
                        </div>
                    </div>
                </div>
                 </c:forEach>  
            </div>
           
        </div>
    </div>
    </div>
</body>
</html>