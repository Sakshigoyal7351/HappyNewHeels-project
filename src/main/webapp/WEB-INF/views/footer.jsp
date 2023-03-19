<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
#bg {
	position: fixed;
	top: -50%;
	left: -50%;
	width: 200%;
	height: 200%;
}

#bg img {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	min-width: 50%;
	min-height: 50%;
}
</style>
	</head>
	<div id="bg">
		<img src="/images/background.jpg" alt="">
	</div>

<!-- <body>
  
    <div class="footer mt-5">
      <div class="container mt-4">
        <div class="row">
          <div class="col-sm-6 col-lg-3 text-center pr-5">
            <h5 class="font-weight-bold">SUBSCRIBE</h5>
            <p>to our Newsletter to receive the latest news, sales and promos</p>
            <form>
              <div class="form-group">
                <input type="email" class="form-control rounded-pill text-center footer-input" placeholder="Enter your email">
              </div>
              <button type="button" class="btn btn-primary btn-block rounded-pill">SUBSCRIBE</button>
            </form>
          </div>          
          <div class="col-6 col-lg-3 pl-3">
            <h6 class="font-weight-bold">Customer Service</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Help Center</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">How to buy</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Delivery</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">How to return</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Payment Method</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Shipping Method</a>
            </div>
          </div>
          <div class="col-6 col-lg-3 pl-3">
            <h6 class="font-weight-bold">Shoeapp</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">About Us</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Terms and Conditions</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Privacy Policy</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">FAQs</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Our Story</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Services</a>
            </div>
          </div>  
          <div class="col-sm-6 col-lg-3 pl-3">
            <h6 class="font-weight-bold ">Contact us</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <span class="list-group-item"><strong>Phone:</strong>   <div th:fragment="footer">
    <div class="footer mt-5">
      <div class="container mt-4">
        <div class="row">
          <div class="col-sm-6 col-lg-3 text-center pr-5">
            <h5 class="font-weight-bold">SUBSCRIBE</h5>
            <p>to our Newsletter to receive the latest news, sales and promos</p>
            <form>
              <div class="form-group">
                <input type="email" class="form-control rounded-pill text-center footer-input" placeholder="Enter your email">
              </div>
              <button type="button" class="btn btn-primary btn-block rounded-pill">SUBSCRIBE</button>
            </form>
          </div>          
          <div class="col-6 col-lg-3 pl-3">
            <h6 class="font-weight-bold">Customer Service</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Help Center</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">How to buy</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Delivery</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">How to return</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Payment Method</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Shipping Method</a>
            </div>
          </div>
          <div class="col-6 col-lg-3 pl-3">
            <h6 class="font-weight-bold">Shoeapp</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">About Us</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Terms and Conditions</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Privacy Policy</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">FAQs</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Our Story</a>
              <a href="javascript:void(0)" class="list-group-item list-group-item-action">Services</a>
            </div>
          </div>  
          <div class="col-sm-6 col-lg-3 pl-3">
            <h6 class="font-weight-bold ">Contact us</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <span class="list-group-item"><strong>Phone:</strong> 1-800-806-6453</span>
              <span class="list-group-item"><strong>Email:</strong> CustomerSupport@happyHeels.com</span>              
             
            </div>    
          </div>        
        </div>
      </div>
    </div>
    <div class="copyright">Copyright © 2021 SportyShoes Developer:<span class="text-info"> Remya Pillai</span></div>  
  
              <span class="list-group-item"><strong>Email:</strong> tusharkhillare2015@gmail.com</span>              
             
            </div>    
          </div>        
        </div>
      </div>
    </div>
    </div>
    <div class="copyright">Copyright © 2021 SportyShoes Developer:<span class="text-info">Tushar Khillare</span>
  </div>
  </div> -->
  </body>
</html>