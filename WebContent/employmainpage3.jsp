<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminMainpage</title>
   <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

<style>

ul {
    list-style-type: none;
    margin: 1px;
    padding: 11px;
    overflow: hidden;
    background: #8B0000;
    width: 100%;
}
li {
  float: right;
  padding-right:135px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}
p{
 margin: 16px 314px;
}
/* body {
  background-image: url("bgimages/bgimage1.jpeg");
  background-repeat: no-repeat; 
  background-size: cover;
} */

/* .grid-container {
  display: grid;
  grid-template-columns: 240px 1fr;
  grid-template-rows: 50px 1fr 50px;
  grid-template-areas:
    "sidenav header"
    "sidenav main"
    "sidenav footer";
  height: 100vh;
}

/* Give every child element its grid name */
/* .header {
  grid-area: header;
  background-color: #648ca6;
}
 */
.sidenav {
  grid-area: sidenav;
  background-color:#8B0000;
  
}
ol a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 10px 10px;
  text-decoration: none;
}

.main {
  grid-area: main;
  background-color: #dfe8e900;
}

.footer {
  grid-area: footer;
  background-color: #648ca6;
} */
</style>


</head>
<body>

<center>
<img src="bgimages/gitamlogo.png" alt="abcd" width="300" height="60"/>
</center>

<p>Note:-Welcome to GITAM HYDERABAD Portal<p>

<div class="grid-container">
  <header class="header">
  <ul>
<li><a href="emplogoutsuccess.jsp">Logout</a></li>
<li><a href="employdataview.jsp">View</a></li>
<li><a href="employdataadd.jsp">Add</a></li>
<li><a href="homepage2.jsp">Home</a></li>        
</ul>

  </header>
  <!-- <aside class="sidenav">
  <ol><a href="#"></a></ol>
  </aside> -->
  <main class="main"></main>
  <!-- <footer class="footer"></footer> -->
</div>

  

<!-- <ul>
<li><a href="homepage2.jsp">Logout</a></li>
<li><a href="employdataview.jsp">View</a></li>
<li><a href="employdataadd.jsp">Indoor</a></li>
<li><a href="homepage2.jsp">Home</a></li>        
</ul>
 -->
</body>
</html>