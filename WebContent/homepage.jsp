
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
   background: linear-gradient(to bottom, #0000ff 0%, #00ff00 100%);
}

li {
  float: right;
  padding-right:185px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;

  text-decoration: none;
}

body {
  background-image: url("bgimages/bgimage2.jpg");
  background-repeat: no-repeat; 
  background-size: cover;
}

</style>


</head>
<body>

<ul>
<li><a href="adminlogin.jsp">Admin</a></li>
<li><a href="employlogin.jsp">Staff</a></li>        
</ul>

</body>
</html>