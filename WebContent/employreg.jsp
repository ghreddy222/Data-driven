<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%-- <%@page import="dbconn.Dbconn"%> --%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
    
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
  
  background-color: #fcff331a;    
  border-radius: px;
  width:420px;
  height:450px;
  margin: auto;
  padding-top:30px;
  box-shadow: 25px 20px 20px #888888;
  
}
.myDiv2 {
  font-size:25px;  

font-weight: bold;
color: #009933; 
}
.logo {
  background-image: url("bgimages/gitamlogo.png");
  background-position:75% 25%;
  background-repeat: no-repeat;

  padding: 0px;
 margin: 20px 470px;
  width: 420px;
  height: 150px;
}


</style>


</head>
<body>
<div class="logo"></div>



<div class="myDiv">
<br><br><br>
<center>
<div class="myDiv2">
Employee Register
</div>
</center>
<br><br>


<center>
  <form action="Employregservlet" method="post">
  <input type="text" name="username" placeholder="Username" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="phonenumber" placeholder="Phonenumber" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="email" placeholder="Emaiid" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="password" placeholder="Password" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px; background-color:brown;color:white;"><br><br>
 
  </form>
  </center>
</div>



</body>
</html>


