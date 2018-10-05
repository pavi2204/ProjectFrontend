<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Classykik</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<c:url value="/resources/images/" var="images"></c:url>
<style>
.topnav {
  overflow: hidden;
  background-color: #0c0200;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #d15353;
  color: black;
}

.topnav a.active {
  background-color: #2f4da8;
  color: white;
}
.topnav-right {
  float: right;  
  font-variant: small-caps;
  color: red;
  
}

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   height: 87px;
   background-color: #000000;
   color: white;
   text-align: center;
}



.parallax {
    /* The image used */
    background-image: url("${images}/guccii.jpg");
    

    /* Set a specific height */
    min-height: 500px; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}


#mySidenav a {
    position: absolute;
    left: -80px;
    transition: 0.3s;
    padding: 15px;
    width: 100px;
    text-decoration: none;
    font-size: 20px;
    color: white;
    border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
    left: 0;
}

#login {
    top: 280px;
    background-color: #4CAF50;
}

#signup {
    top: 350px;
    background-color: #2196F3;
}

.carousel-inner img {
      width: 100%; 
      min-height: 200px;
    }
</style>
</head>
<body>
<div class="topnav">
  <a class="active" href="#home">Classykik</a>
  <a href="helpdesk.jsp">Help Desk</a>
  <a href="#giftcards">Gift Cards</a>
  <div class="topnav-right"> 
  <a href="developer.jsp">Admin</a>
  </div>
  
</div>
<div id="mySidenav" class="sidenav">
  <a href="login.jsp" id="login">Login</a>
  <a href="${pageContext.request.contextPath}/signup" id="signup">Signup</a>
  
</div>

<div class="parallax"></div>

<div style="height:1000px;background-color:black;font-size:36px">
<center><font color="white">Welcome to Classykik.</font></center>

<br>
<div class="container">
<div class="row">
  <div class="col-lg-8 ">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="${images}/bae.jpg" alt="Image">
          <div class="carousel-caption">
            <h3><font color="black">Ladies dresses</font></h3>
            
          </div>      
        </div>

        <div class="item">
          <img src="${images}/man.jpg" alt="Image">
          <div class="carousel-caption">
            <h3><font color="black">Man up</font></h3>
            </div>      
        </div>
      
      <div class="item">
          <img src="${images}/kid.jpeg" alt="Image">
          <div class="carousel-caption">
            <h3><font color="black">The cute kiddo</font></h3>
            </div>      
        </div>
      </div></div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  

<div class="col-sm-4">
    <div class="well">
      <p>Kik for classy..</p>
    </div>
</div> 
<div class="col-sm-2"> 
    <div class="well">
       <img src="${images}/mainlogo.png" width="120px" height="120px">
    </div>
</div>
</div>
</div>


<p><font color="white"><h2><center>Scroll up to Signin / Login..</center></h2></font></p>

<div class="container text-center">    
  <h3><font color="white">Powered by our sponsors</font></h3>
  <br>
  <div class="row">
    <div class="col-sm-3">
      <img src="${images}/adidas.jpeg" class="img-responsive" width="70px" height="70px" alt="Image">
      <font color="white"><h4>Adidas</h4></font>
    </div>
    <div class="col-sm-2"> 
      <img src="${images}/zara.jpg" class="img-responsive" width="70px" height="70px" alt="Image">
       <font color="white"><h4>Zara</h4></font>   
    </div>
    <div class="col-sm-2"> 
      <img src="${images}/fastrack.jpg" class="img-responsive" width="50px" height="45px" alt="Image">
       <font color="white"><h4>Fastrack</h4></font>
    </div>
    <div class="col-sm-2"> 
      <img src="${images}/mancompany.jpg" class="img-responsive" width="50px" height="50px" alt="Image">
       <font color="white"><h4>The man company</h4></font>

<div class="footer">
  <h4>@ Copyrights reserved | Classykik.com</h4>
</div>
</body>
</html>