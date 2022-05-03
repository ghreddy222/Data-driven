<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>


	.blink{
		width:200px;
		height: 50px;
	    background-color: green;
		padding: 15px;	
		text-align: center;
		line-height: 50px;
		float:right;
		margin-right:50px;
		marging-top:60px;
		border-radius:8px;
	}
	
	.blink2{
		width:200px;
		height: 50px;
	    background-color: #0099ff;
		padding: 15px;	
		text-align: center;
		line-height: 50px;
		float:right;
		margin-right:50px;
		margin-top:60px;
		border-radius:8px;
		
	}
	
	#addlink{
	
		font-size: 20px;
		font-family: cursive;
		color: white;
		/* animation: blink 1.5s linear infinite; */
		text-decoration:none;
		background-color: #ff0000;
	
	}
	#viewlink{
	
		font-size: 20px;
		font-family: cursive;
		color: white;
		/* animation: blink 1.5s linear infinite; */
		text-decoration:none;
		background-color: #ff0000;
	
	}
	
	
	
/* @keyframes blink{
0%{opacity: 0;}
50%{opacity: .5;}
100%{opacity: 1;}
}
 */ 
#logoutlink{
background-color: #f44336;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin-left:1130px;
  border-radius:8px;
  margin-top:-60px;
}

</style>

</head>
<body>
<center>
<img src="bgimages/gitamlogo.png" alt="abcd" width="300" height="60"/>


<a href="emplogoutsuccess.jsp" id="logoutlink">Logout</a><br><br><br><br>

<!-- <div class="blink"><a href="employdataadd.jsp" id="addlink">Add Data</a></div><br>
<div class="blink2"><a href="employdataview.jsp" id="viewlink">View Data</a></div> -->
<a href="employdataadd.jsp" id="addlink">Add Data</a>
<a href="employdataview.jsp" id="viewlink">View Data</a>
</center>
</body>
</html>