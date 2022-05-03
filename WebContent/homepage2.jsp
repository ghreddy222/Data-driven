<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body {
  font-family: Arial;
  color: #800000;
}

.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-color: #800000;
}

.right {
  right: 0;
  background-color: #8e959545;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}


#blink_me {
 border: 3px #ff00ff solid;
    
    animation: blink 1s;
    animation-iteration-count: infinite;
    height:240px;
    width:360px;
  
}

/* @keyframes blink {
  50% {
   border-color:#fff ;
  }
} */
.logo {
  background-image: url("bgimages/gitamlogo.png");
  background-position:left center;
  background-repeat: no-repeat;
padding: 0px;
 margin: 20px 131px;
  width: 430px;
  height: 150px;
}
h2{
color:white;
 text-align: left;
}
h4{color:white;
 text-align: left;}
h3{
color:white;
 text-align: left;
}
center{
 margin: opx;
}
</style>

</head>
<body>
<!-- <div class="logo"></div> -->

<div class="split left">
<div class="logo"></div>
  <div class="centered"><br><br>
  <center>
     <h2>GITAM Hyderabad</h2>
    <h4> Login Page</h4>
     <h3>Login from here to access</h3>
 
 

   
   </center>
   
  </div>
</div>

<div class="split right">
  <div class="centered">
  

          
    <button style="width:480px;height:50px;border-radius:px;background-color:white;margin-top:70px;"><a href="employlogin.jsp" style="text-decoration: none;color:black;" >Employee</a></button><br><br>
    <button style="width:480px;height:50px;border-radius:px;background-color:white"><a href="adminlogin.jsp" style="text-decoration: none;color:black;">Admin</a></button><br><br>

  </div>
</div>

</body>
</html>