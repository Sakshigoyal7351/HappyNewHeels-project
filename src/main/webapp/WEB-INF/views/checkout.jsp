<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          >
   <!--  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css"> -->
<title>Checkout</title>
</head>
<body>
<jsp:include page="header.jsp" />

<div class="container">

    <!--Section: Block Content-->
    <section class="mt-5 mb-4">

        <!--Grid row-->
        <div class="row">

            <!--Grid column-->
            <div class="col-lg-8 mb-4">

                <!-- Card -->
                <div class="card wish-list pb-1">
                    <div class="card-body">

                        <h5 class="mb-2">Billing details</h5>

                        <!-- Grid row -->
                        <div class="row">

                            <!-- Grid column -->
                            <div class="col-lg-6">

                                <!-- First name -->
                                <div class="md-form md-outline mb-0 mb-lg-4">
                                    <label for="firstName">First name</label>
                                    <input type="text" id="firstName" required class="form-control mb-0 mb-lg-2">
                                </div>

                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-lg-6">

                                <!-- Last name -->
                                <div class="md-form md-outline">
                                    <label for="lastName">Last name</label>
                                    <input type="text" id="lastName" required class="form-control">
                                </div>

                            </div>
                            <!-- Grid column -->

                        </div>
                        <!-- Grid row -->



                        <!-- Country -->
                        <div class="d-flex flex-wrap">
                            <div class="select-outline position-relative w-100">
                                <label>Country - <strong>USA</strong></label>


                            </div>
                        </div>

                        <!-- Address Part 1 -->
                        <div class="md-form md-outline mt-2">
                            <label for="form14">Address (Line 1)</label>
                            <input type="text" required id="form14" placeholder="House number and street name" class="form-control">
                        </div>

                        <!-- Address Part 2 -->
                        <div class="md-form md-outline mt-2">
                            <label for="form15">Address (Line 2)</label>
                            <input type="text" id="form15" placeholder="Apartment, suite, unit etc. (optional)"
                                   class="form-control">
                        </div>

                        <!-- Postcode / ZIP -->
                        <div class="md-form md-outline mt-3">
                            <label for="form16">Postcode / ZIP</label>
                            <input type="text" maxlength="6" minlength="6" required id="form16" class="form-control">
                        </div>

                        <!-- Town / City -->
                        <div class="md-form md-outline mt-2">
                            <label for="form17">Town / City</label>
                            <input type="text" required id="form17" class="form-control">

                        </div>

                        <!-- Phone -->
                        <div class="md-form md-outline mt-2">
                            <label for="form18">Phone</label>
                            <input type="number" minlength="10" maxlength="10" required id="form18" class="form-control">
                        </div>

                        <!-- Email address -->
                        <div class="md-form md-outline mt-2">
                            <label for="form19">Email address</label>
                            <input type="email" required id="form19" class="form-control">
                        </div>

                        <!-- Additional information -->
                        <div class="md-form md-outline mt-2">
                            <label for="form76">Additional information</label>
                            <textarea id="form76" class="md-textarea form-control" rows="4"></textarea>
                        </div>



                    </div>
                </div>
                <!-- Card -->

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
                                <span>$${cartTotal}</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                                Shipping
                                <span>$${shipping}</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                <div>
                                    <strong>The total amount of</strong>
                                    <strong>
                                        (including VAT)
                                    </strong>
                                </div>
                                <span><strong>$${total}</strong></span>
                            </li>
                        </ul>

                        <form  method="post" action="/payNow" >
                            <button type="submit"  class="btn btn-primary btn-block waves-effect waves-light">Pay Now</button>
                        </form>

                    </div>
                </div>
                <!-- Card -->

               <!--  <!-- Card -->
               <!--  <div class="card mb-4">
                    <div class="card-body">

                        <a class="dark-grey-text d-flex justify-content-between" data-toggle="collapse" href="#collapseExample"
                           aria-expanded="false" aria-controls="collapseExample">
                            Add a discount code (optional)
                            <span><i class="fas fa-chevron-down pt-1"></i></span>
                        </a>

                        <div class="collapse" id="collapseExample">
                            <div class="mt-3">
                                <div class="md-form md-outline mb-0">
                                    <input type="text" id="discount-code" class="form-control font-weight-light"
                                           placeholder="Enter discount code">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  -->
                <!-- Card -->

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

    </section>
    <!--Section: Block Content-->


</div>





</body>
</html>