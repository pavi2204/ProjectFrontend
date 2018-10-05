<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <title>Classykik Shopping Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <c:url value="/resources/images/" var="images"></c:url>
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

.container img {vertical-align: left;}

.container .content {
    position: absolute;
    bottom: 0;
    background: rgba(0, 0, 0, 0.5); /* Black background with transparency */
    color: #f1f1f1;
    width: 57.7%;
    padding: 20px;
}



.column {
    float: left;
    width: 33.33%;
    padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
    content: "";
    clear: both;
    display: table;
}

  </style>
</head>
<body style="height:1280px">

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
  
<div class="container" style="margin-top:50px">
<div class="row"></div>    
</div>
<br><br>
<img src="${images}/shop.jpg" class="responsive">
 
<br>
<br>

<div class="container">
  <img src="${images}/couple.jpg" alt="couple" style="width:60%;">
  <div class="content">
    <h2>Casuals</h2>
    <p>Get flat 40% off.</p>
    
  </div>
</div>

<img src="${images }/beardo.jpg" align="right" width="340px" height="280px">


<br>
<br>
<br>
<img src="${images }/dressination.jpg" width="100%" height="280px"><br><br>

<br>
<br>
<div class="row">
  <div class="column">
    <img src="${images }/allensolly.JPG" width="100%" height="220px">
  </div>
  <div class="column">
    <img src="${images }/heels.jpg" style="width:100%">
  </div>
  <div class="column">
    <img src="${images }/manyavar.jpg" style="width:100%">
  </div>
</div>


<div class="footer">
<br>
  <p>@Copyrights reserved | Classykik</p>
</div>
</body>
</html>
