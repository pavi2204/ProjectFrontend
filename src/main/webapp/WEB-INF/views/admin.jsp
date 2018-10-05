
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
 /* $(document).ready(function()
 {
            $("#carsForm").validate();
        }
         */
        
       
      <c:url value="/resources/images/" var="images"></c:url>    

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 20px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0.7, 0.8);
}

.container {
  padding: 0 20px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: #4ee5ce;
}
body
{
 background-image: url("${images}/adminpage.jpg");
 background-size: cover;
}




* {
    box-sizing: border-box;
}

body {
    font-family: Arial;
    margin: 0 auto; /* Center website */
    max-width: 800px; /* Max width */
    padding: 20px;
}

.heading {
    font-size: 25px;
    margin-right: 25px;
}

.fa {
    font-size: 25px;
}

.checked {
    color: orange;
}

/* Three column layout */
.side {
    float: left;
    width: 15%;
    margin-top:10px;
}

.middle {
    margin-top:10px;
    float: left;
    width: 70%;
}

/* Place text to the right */
.right {
    text-align: right;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* The bar container */
.bar-container {
    width: 100%;
    background-color: #f1f1f1;
    text-align: center;
    color: white;
}

/* Individual bars */
.bar-5 {width: 60%; height: 18px; background-color: #4CAF50;}
.bar-4 {width: 30%; height: 18px; background-color: #2196F3;}
.bar-3 {width: 10%; height: 18px; background-color: #00bcd4;}
.bar-2 {width: 4%; height: 18px; background-color: #ff9800;}
.bar-1 {width: 15%; height: 18px; background-color: #f44336;}

/* Responsive layout - make the columns stack on top of each other instead of next to each other */
@media (max-width: 400px) {
    .side, .middle {
        width: 100%;
    }
    .right {
        display: none;
    }
}





</style>
</head>
<body>

  <div class="container">
    
 <ul class="nav md-pills nav-justified pills-secondary">
    <li class="nav-item">
        <a class="nav-link " data-toggle="tab" href="#panel1" role="tab">Hello Admin</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#panel2" role="tab">Category</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#panel3" role="tab">Supplier</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#panel4" role="tab">Product</a>
    </li>
</ul>



  <div class="column">
    <div class="card">
      <img src="${images }/admin.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2><font color="white">Pavan Avantkar</font></h2>
        <p class="title">CEO and Founder</p>
        
        <p><font color="white">Amrita University</font></p>
        <div style="margin: 24px 0;">
        
    <a href="#"><font color="white"><i class="fa fa-facebook"></font></i></a> 
    <a href="#"><font color="white"><i class="fa fa-twitter"></font></i></a>  
    <a href="#"><font color="white"><i class="fa fa-instagram"></font></i></a>  
    <a href="#"><font color="white"><i class="fa fa-snapchat"></font></i></a>
    <a href="#"><font color="white"><i class="fa fa-github"></font></i></a>
    
 </div>
      
      </div>
    </div>
    <br>
    <span class="heading">User Rating</span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<p>4.1 average based on 254 reviews.</p>
<hr style="border:3px solid #f1f1f1">


  </div>
<!-- Tab panels -->
<div class="tab-content">

    <!--Panel 1-->
    <div class="tab-pane fade in show active" id="panel1" role="tabpanel">
        <br>

        <p><i><h3><center><font color="white">Hello Pavan! Lets get you started</font></center></h3></i></p>
        
        
        
        
      
  
  
  

    </div>
    <!--/.Panel 1-->

    <!--Panel 2-->
    <div class="tab-pane fade" id="panel2" role="tabpanel">
        <br>

        <div class="container">
  <h2><center><font color="white">Manage your Categories</font></center></h2>
  <br>
  <form action="${pageContext.request.contextPath}/admin/category" method="post" align="center">
    <div class="form-group">
      <label for="name"><font color="white">Category Name:</font></label>
      <input placeholder="Enter category"  name="category"></input>
    </div>
    <div class="form-group">
      <label for="description"><font color="white">Description:</font></label>
      <input placeholder="Enter description" name="description"></input>
    </div>
   
    <button class="btn btn-default">Submit</button>
  </form>
</div>
                       
                        

    </div>
    <!--/.Panel 2-->

    <!--Panel 3-->
     <div class="tab-pane fade" id="panel3" role="tabpanel">
        <br>

   
                        
                       
             <div class="container">
             <h2><center><font color="white">Manage your Suppliers</font></center></h2>
  <br>
     <f:form action="${pageContext.request.contextPath}/admin/supplier" method="post" modelAttribute="supplier" align="center">
    <div class="form-group">
      <label for="name"><font color="white">Supplier Name:</font></label>
      <f:input placeholder="Enter name"  path="Suppliername"></f:input>
    </div>
    <div class="form-group">
      <label for="address"><font color="white">Address:</font></label>
      <f:input placeholder="Address name:" path="Address"></f:input>
    </div>
   
    <f:button class="btn btn-default">Submit</f:button>
  </f:form> 
</div>
 
    </div>
    <!--/.Panel 3-->



    <!--Panel 4-->
    <div class="tab-pane fade" id="panel4" role="tabpanel">
        <br>

       <div class="container">
             <h2><center><font color="white">Manage your Products</font></center></h2>
  <br>
     <form action="${pageContext.request.contextPath}/admin/product" method="post" modelAttribute="product" align="center">
    <div class="form-group">
      <label for="name"><font color="white">Product Name:</font></label>
      <input placeholder="Enter name"  name="productname"></input>
    </div>
    <div class="form-group">
      <label for="company"><font color="white">Company:</font></label>
      <input placeholder="Company name:" name="company"></input>
    </div>
    <div class="form-group">
      <label for="price"><font color="white">Price:</font></label>
      <input placeholder="price:" name="price"></input>
    </div>
    
     <div class="form-group">
      <label for="address"><font color="white">Category:</font></label>
      <select name="category">
      <option value="">Select Category</option>
       <c:forEach  items="${clist }" var="c">
       
      <option value="${c.id }">${c.category}</option>
      </c:forEach>
      </select>

   </div>
   
   <div class="form-group">
      <label for="address"><font color="white">Supplier:</font></label>
      <select name="supplier">
      <option value="">Select Supplier</option>
       <c:forEach  items="${slist }" var="s">
       
      <option value="${s.id}">${s.suppliername}</option>
      </c:forEach>
      </select>

   </div>
    <button class="btn btn-default">Submit</button>
  </form> 
</div>

    </div>
    <!--/.Panel 4-->

</div>
</div>
</body>
</html>