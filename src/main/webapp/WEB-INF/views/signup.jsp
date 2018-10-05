<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
<style>
body
{
    width: 90%;
    height: 300px;
    background-image: url('qq.jpg');
    background-size: cover;
font-family: Arial, Helvetica, sans-serif;
}



input[type=text], input[type=password] {
    width: 250%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}


button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:0.8;
}


.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}


.cancelbtn, .signupbtn {
  float: center;
  width: 30%;
  
}


.container {
    padding: 16px;
}


.clearfix::after {
    content: "";
    clear: both;
    display: table;
}


@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}

.login {
float: center;
padding: 30px 220px;
}

.loginbutton
{
    float:center;
    width:70%;
    background-color: #28b1ed;
    color: white;
    padding: 15px 130px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    
    
}

.signup {
float: center;
padding: 30px 0px;
}

.signupbtn
{
    float:center;
    width:70%;
    background-color: #43d86b;
    color: white;
    padding: 15px 155px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    
    
}
</style>
</head>
<body>
<font face=" "align="center"><h1><i><b><center><h2>Registration Portal</h2></center></b></i></h1></font>

<br>
<font face=" " align="center"><h3>Please enter the details correctly.</font></h3>
    

<f:form action="register" style="border:1px solid #ccc" method="post" modelAttribute="register">
  <div class="text-centered">
    
    <table>
     <tr>
    
    <th><label for="name"><b>Name:</b></label></th>
    <td><f:input placeholder="Enter Name" path="name" required="required"></f:input></td>
    </tr>

    <tr>
    
    <th><label for="email"><b>Email:</b></label></th>
    <td><f:input placeholder="Enter Email" path="email" align="middle" required="required"></f:input></td>
    </tr>
    
    <tr>
    <th><label for="mobilenumber"><b>Mobile number:</b></label></th>
    <td><f:input placeholder="mobilenumber" path="mobilenumber" align="middle" required="required"></f:input></td>
    </tr>
    
    <tr>
    <th><label for="username"><b>Username:</b></label></th>
    <td><f:input placeholder="Enter username" path="username" align="middle" required="required"></f:input></td>
    
    </tr>
    
    <tr>
    <th><label for="psw"><b>Password:</b></label></th>
    <td><f:password placeholder="Enter Password" path="password" align="middle" required="required"></f:password></td>
    </tr>
    </table>
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Conditions</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      </div>
      <div class="signup">
      <a href="${pageContext.request.contextPath}/classy" class="signupbtn" role="button">Sign up</a>  
    </div>
    </div>
  </div>
</f:form>
<p>If you already have an account click here</p> 
<div class="login">

 <a href="login.jsp" class="loginbutton" role="button">Login</a>

</div>
</body>
</html>