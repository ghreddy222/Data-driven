<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
        
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>
body{
background-image:url("bgimages/gitambg1.jpg");
background-repeat: no-repeat;
background-size:cover;
}
.myDiv {
  border: px outset red;
  background-color:#ade6c96b;    
  border-radius: 1px;
  width:460px;
  height:350px;
  margin: auto;
  padding-top:30px;
  /* box-shadow: 25px 20px 20px #888888; */
  
}
.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: white; 
text-decoration:underline;
}
.myDiv3 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: white; 
}
.logo {
  background-image: url("bgimages/gitamlogo.png");
  background-position:75% 25%;
  background-repeat: no-repeat;

  padding: 0px;
 margin: 20px 478px;
  width: 420px;
  height: 150px;
}

body{

}

</style>



</head>
<body>
<div class="logo"></div>



<div class="myDiv">
<center>
<div class="myDiv2">
Employee Login
</div>
</center>
<center>
  <form action="Employloginservlet" method="post"><br>
  <lable> ENTER USERNAME:</lable><br>
  <input type="text" name="username" placeholder="Username" style="width:200px;height:40px;border-radius: 10px;text-align:center;"><br><br>
   <lable> ENTER PASSWORD:</lable><br>
  <input type="password" name="password" placeholder="Password" style="width:200px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;background-color:green; color:white;"  ><br><br>

   
   <div class="myDiv3">
New User <a href="employreg.jsp">Signup</a>
</div>
   
  </form>
  </center>
</div>


</body>
