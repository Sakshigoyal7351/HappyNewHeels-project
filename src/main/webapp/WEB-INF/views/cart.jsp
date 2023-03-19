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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">

<title>Cart </title>
</head>
<body>

<jsp:include page="header.jsp" />
<main>
	
    <div class="container">
    	<div style="color:red">${errMessage}</div>

        <!--Section: Block Content-->
        <section class="mt-5 mb-4">

            <!--Grid row-->
            <div class="row">

                <!--Grid column-->
                <div class="col-lg-8">

                    <!-- Card -->
                    <div class="card wish-list mb-4">
                        <div class="card-body">

                            <h5 class="mb-4">Cart (<span >${cartItems.size()}</span> items)</h5>
							<c:forEach items="${cart_items}" var="item">
	                            	<c:url var="deleteItem" value="/cart/deleteItem">
										<c:param name ="productId" value="${item.productId}"/>
									</c:url>
                            <div class="row mb-4" >
                            	
                      			<div class="col-md-5 col-lg-3 col-xl-3">
                                    <div class="mb-3 mb-md-0">
                                        <img class="img-fluid w-100"
                                             src='/productImages/${item.image_Url}'
                                             src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12a.jpg" alt="Sample">

                                    </div>
                                  </div>
                                <div class="col-md-7 col-lg-9 col-xl-9">
                                    <div>
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <h5 >${item.name}</h5>
                                                <p class="mb-3 text-uppercase small">Quantity: <span> ${item.quantity}</span> </p>
                                          		
                                            </div>
                                            
                                        </div>
                                        <div class=" d-flex justify-content-between align-items-center">
                                            <div>
                                                <a  href="${deleteItem}"   type="button" class="card-link-secondary small text-uppercase mr-3"><i
                                                        class="fas fa-trash-alt mr-1"></i> Remove item </a>

                                            </div>
                                            <p class="mb-0	"><span><strong>Item Price: $<span >${item.price}</span></strong></span></p>
                                            
                                        </div>
                                    </div>
                                </div>
                                </div>
                                </c:forEach>
                                
                            
                           

                          

                        </div>
                    </div>




                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-4">

                    <!-- Card -->
                    <div class="card mb-4">
                        <div class="card-body">

                            <h5 class="mb-3">The total amount </h5>

                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                                    Amount Payable
                                    <span>$<span >${cartValue}</span></span>
                                </li>
                              
                            </ul>
							<c:if test = "${cartItems.size() > 0}">
									<a href="/checkout"  class="btn btn-primary btn-block waves-effect waves-light">go to
                                checkout</a>

							</c:if>
                           
                        </div>
                    </div>
                    <!-- Card -->

                  

                </div>
                <!--Grid column-->

            </div>
            <!--Grid row-->

        </section>
        <!--Section: Block Content-->

    </div>
</main>
<!--Main layout-->



</body>
</html>