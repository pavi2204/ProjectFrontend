
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Add Page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
 $(document).ready(function()
 {
            $("#carsForm").validate();
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

<!-- Tab panels -->
<div class="tab-content">

    <!--Panel 1-->
    <div class="tab-pane fade in show active" id="panel1" role="tabpanel">
        <br>

        <p>Hello Admin! Find your updates here.</p>

    </div>
    <!--/.Panel 1-->

    <!--Panel 2-->
    <div class="tab-pane fade" id="panel2" role="tabpanel">
        <br>

        <div class="container">
  <h2><center>Manage your Categories</center></h2>
  <br>
  <f:form action="${pageContext.request.contextPath}/category" method="post" modelAttribute="cat">
    <div class="form-group">
      <label for="name">Category Name:</label>
      <f:input placeholder="Enter category"  path="category"></f:input>
    </div>
    <div class="form-group">
      <label for="description">Description</label>
      <f:input placeholder="Enter description" path="description"></f:input>
    </div>
   
    <f:button class="btn btn-default">Submit</f:button>
  </f:form>
</div>
                       
                        

    </div>
    <!--/.Panel 2-->

    <!--Panel 3-->
     <div class="tab-pane fade" id="panel3" role="tabpanel">
        <br>

   
                        
                       
             <div class="container">
             <h2><center>Manage your Suppliers</center></h2>
  <br>
  <f:form action="/action_page.php" method="post" modelAttribute="supplier">
    <div class="form-group">
      <label for="name">Supplier Name:</label>
      <f:input placeholder="Enter name"  path="Suppliername"></f:input>
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
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

       

    </div>
    <!--/.Panel 4-->

</div>
</div>
</body>
</html>
