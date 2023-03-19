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
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      >
<title>Add Product</title>
</head>
<body>
<jsp:include page="adminHeader.jsp" />
<div class="container">
<h2>Add New Product</h2>
			<form:form action="/admin/product/add" modelAttribute="product" method="post">
				<label for="productName">Product Name </label>
					<input type="text" id="productName" name="productName" required>
				
				 <label for="size">Size</label>
				 	<input type="text" id="size" name="size" required>
						 
				
				<label for="price">Price </label>
				<input type="text" id= "price" name="price" required>
				
				<label for="productCategory" >Product Category</label>
					<select class="form-control" id="productCategory"
						name="productCategory">
						
						<c:forEach items="${categories}" var="category">
							<option value="${category.id}">${category.brandName} | ${category.style} | ${category.targetGroup}</option>
						</c:forEach>
					</select>
				
				<label for="image_Url">Select Product Image </label>
				<!-- select from folder -->
				
                <div class="custom-file">
                    <input type="file"  class="custom-file-input" name="image_Url" accept="image/jpeg, image/png"  id="image_Url"/>
                    <label class="custom-file-label" for="image_Url">Choose file</label>
                </div>
                <div class="form-group">
                    <img src="#" id="imgPreview" height="100px" width="100px" src="/productImages/nike101.jpg" style="margin-top: 20px" alt=" ">
                </div>
                <input type="hidden" name="imgName" value="/productImages/nike101.jpg"> 
               
				
				<input class="btn, btn-success btn-lg .btn-block" type="submit"
				name="Add" value="Add Product" > 
				
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

input, select{
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

<script>
    function readURL(input){
        if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e){
                $('#imgPreview').attr('src', e.target.result).width(100).height(100);
            }
            reader.readAsDataURL(input.files[0])
        }
    }
    $('#image_Url').change(function(){
        readURL(this);
    });
    $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
</html>