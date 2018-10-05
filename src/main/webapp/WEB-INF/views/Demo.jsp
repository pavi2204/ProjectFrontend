<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dresstination</title>
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

* {
    box-sizing: border-box;
}



/* The actual timeline (the vertical ruler) */
.timeline {
    position: relative;
    max-width: 750px;
    margin: 0 auto;
}

/* The actual timeline (the vertical ruler) */
.timeline::after {
    content: '';
    position: absolute;
    width: 5px;
    background-color: white;
    top: 0;
    bottom: 0;
    left: 50%;
    margin-left: -3px;
}

/* Container around content */
.container {
    padding: 10px 40px;
    position: relative;
    background-color: inherit;
    width: 50%;
}

/* The circles on the timeline */
.container::after {
    content: '';
    position: absolute;
    width: 25px;
    height: 25px;
    right: -17px;
    background-color: white;
    border: 4px solid #FF9F55;
    top: 15px;
    border-radius: 50%;
    z-index: 1;
}

/* Place the container to the left */
.left {
    left: -25.7%;
}

/* Place the container to the right */
.right {
    left: 25.55%;
}

/* Add arrows to the left container (pointing right) */
.left::before {
    content: " ";
    height: 0;
    position: absolute;
    top: 22px;
    width: 0;
    z-index: 1;
    right: 30px;
    border: medium solid white;
    border-width: 10px 0 10px 10px;
    border-color: transparent transparent transparent white;
}

/* Add arrows to the right container (pointing left) */
.right::before {
    content: " ";
    height: 0;
    position: absolute;
    top: 22px;
    width: 0;
    z-index: 1;
    left: 30px;
    border: medium solid white;
    border-width: 10px 10px 10px 0;
    border-color: transparent white transparent transparent;
}

/* Fix the circle for containers on the right side */
.right::after {
    left: -16px;
}

/* The actual content */
.content {
    padding: 20px 30px;
    background-color: white;
    position: relative;
    border-radius: 6px;
}

/* Media queries - Responsive timeline on screens less than 600px wide */
@media screen and (max-width: 600px) {
  /* Place the timelime to the left */
  .timeline::after {
    left: 50px;
  }
  
  /* Full-width containers */
  .container {
    width: 100%;
    padding-left: 70px;
    padding-right: 25px;
  }
  
  /* Make sure that all arrows are pointing leftwards */
  .container::before {
    left: 60px;
    border: medium solid white;
    border-width: 10px 10px 10px 0;
    border-color: transparent white transparent transparent;
  }

  /* Make sure all circles are at the same spot */
  .left::after, .right::after {
    left: 15px;
  }
  
  /* Make all right containers behave like the left ones */
  .right {
    left: 0%;
  }
}
</style>
</head>
<body>
<div class="topnav">
  <a class="active" href="#home">Dresstination</a>
  <a href="${pageContext.request.contextPath}/helpdesk">Help Desk</a>
  <a href="#giftcards">Gift Cards</a>
  <div class="topnav-right">
  <a href="${pageContext.request.contextPath}/admin/category">Admin</a>
  </div>
</div>
<div id="mySidenav" class="sidenav">
  <a href="${pageContext.request.contextPath}/login" id="login">Login</a>
  <a href="${pageContext.request.contextPath}/signup" id="signup">Signup</a>
  
</div>

<div class="parallax"></div>

<div style="height:1000px;background-color:black;font-size:36px">
<center><font color="white">Welcome to Dresstination.</font></center>


<div class="timeline">
  <div class="container left">
    <div class="content">
      <img src="${images}/bro.jpg" width="240px" height="130px">
      <h5><center><b>Mens Clothing</b></center></h5>
    </div>
  </div>
  <div class="container right">
    <div class="content">
      <img src="${images}/lady.jpg" width="240px" height="130px">
      <h5><center><b>Womens Clothing</b></center></h5>
    </div>
  </div>
  <div class="container left">
    <div class="content">
      <img src="${images}/kids.jpg" width="260px" height="130px">
      <h5><center><b>Kids Clothing</b></center></h5>
    </div>
  </div>
  </div>
 <br>
  
<p><font color="white"><h2><center>Scroll up to Signin</center></h2></font></p>



<div class="footer">
  <h4>@ Copyrights reserved | Dresstination.com</h4>
</div>
</body>
</html>