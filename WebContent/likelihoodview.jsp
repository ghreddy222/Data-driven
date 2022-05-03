<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

.myDiv2 {
  font-size:20px;  
  font-style: italic;
font-weight: bold;
color:orange; 
}

table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: orange;
}

.backtag{
float:right;
margin-right:50px;
font-size:30px;
}

</style>


</head>
<body>

<div class="backtag">
<a href="adminmain1.jsp">Back</a>
</div>

<br>
<center>
<div class="myDiv2">
Likelihood DataView(Library)
</div>
<br>
<iframe src="librarylike.jsp" height="180" width="320"></iframe>
<iframe src="libraryfirecount.jsp" height="180" width="320"></iframe>
<iframe src="librarydbcount.jsp" height="180" width="320"></iframe>
<iframe src="librarydiskcount.jsp" height="180" width="320"></iframe>
<!-- <iframe src="govthosplike.jsp" height="180" width="320"></iframe>
<iframe src="powerstationlike.jsp" height="180" width="320"></iframe> -->

<br><br>
<center>
<div class="myDiv2">
Likelihood DataView(Lab)
</div>
<iframe src="eserviceoscount.jsp" height="180" width="320"></iframe>
<iframe src="eservicefirecount.jsp" height="180" width="320"></iframe>
<iframe src="eservicedbcount.jsp" height="180" width="320"></iframe>
<iframe src="eservicediskcount.jsp" height="180" width="320"></iframe>
</center>


</body>
</html>