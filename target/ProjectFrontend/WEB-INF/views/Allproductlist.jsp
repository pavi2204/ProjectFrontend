<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List.</title>
<link rel="stylesheet" type="text/css" href="../resources/test.css">
<link rZZzzel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>
  .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   height: 60px;
   color: white;
   text-align: center;
}
.responsive
{
width: 100%;
height: 300px;
}

.container {
    position: absolute;
    max-width: 800px;
    margin: 0 auto;
}
</style>
  <c:url value="/resources/images/" var="images"></c:url>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Classykik</a>
    </div>
    
     <ul class="nav navbar-nav">
      <c:forEach  items="${clist }" var="c">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="${pageContext.request.contextPath}/productlist/${c.id}">${c.category} <span class="caret"></span></a>
        <ul class="dropdown-menu">
      <li><center><c:forEach items="${c.products}" var="p">
      <li><a href="#">${p.productname}</a></li>
      <br></c:forEach></center></li>
      
          </ul>
      </li>
</c:forEach> 



    </ul>
 
    
  </div>
</nav>

<div class=container>
		<div class="container">
			<div class="row mar-bot-30">
				<div class="col-md-12">
					<div class="product-sec-tittle">
						<h2 style="text-align: center;" class="section-heading">
							<span>Feature</span> Product
						</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<c:if test="${empty productlist}">
					<center>
						<h3 style="color: red;">No Products</h3>
					</center>
				</c:if>
				<c:forEach items="${productlist}" var="p">

					<div class="featured-product">
						<div class="col-md-4">

							<div class="product-box hover-circle text-center" style="box-shadow: none; height: 460px;">

								<div class="product-item">
									<figure>
										<img id="images" src="${pageContext.request.contextPath}/resources/image/${p.image_name}"
											alt="product" />
									</figure>
									<p class="product-drisc">${p.product_description}</p>

									<h4 id="price" class="product-price">Price :${p.price}</h4>
									<a id="detail" href="${pageContext.request.contextPath}/productDescription/${p.product_Id}"
										class="btn btn-default buy-now">View details</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<br><br>
</body>
</html>