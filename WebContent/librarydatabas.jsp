<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="https://cdn.zingchart.com/zingchart.min.js"></script>
<title>Insert title here</title>

<style>

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:red; 
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
 color: red;
}

.backtag{
float:right;
margin-right:20px;
font-size:20px;
}

</style>


</head>
<body>
<!-- <div class="backtag">
<a href="adminmain.jsp">Back</a>
</div> -->
<center>
<div class="myDiv2">
Database
</div>


<%-- <%

String uname=session.getAttribute("emailkey").toString();

%>
 --%>

<br>
<table>
<!-- <th>Pharmacyname</th> -->
<!-- <th>Location</th>
<th>Area</th>
<th>System</th>
<th>Date</th>
<th>OperatingSystem</th>
<th>Firewall</th>
<th>Database</th>
<th>Harddisk</th> -->
<!-- <th>Count</th> -->
<th>Unusual</th>
<th>Secure</th>
<th>Possible</th>
<!-- <th>Solution</th> -->


<%
String idlist="";
String locatlist="";
String arealist="";
String systlist="";
String datelist="";
String oslist="";
String firelist="";
String dblist="";
String hdisklist=""; 
String osunuselist="";
String osseclist="";
String possiblist="";
String finallist="";
String finallist2="";
String finallist3="";

float useint=0;
float possint=0;
float secint=0;
float abyb=0,multia=0,divb=0;
float abyb2=0,multia2=0,divb2=0;
float abyb3=0,multia3=0,divb3=0;
float solution=0;



%>

<%	

	 Connection d4 = Dbconn.create();
	 PreparedStatement p4 = d4.prepareStatement("SELECT count(location) FROM `cyber`.`empadd` where location='library'");
	 //PreparedStatement p = d.prepareStatement("SELECT * FROM `admission`.`adminaccepttbl`");
	ResultSet rp4 = p4.executeQuery();
	
		while (rp4.next()){
				
			locatlist=rp4.getString(1);		
											
	%>
	
	<%
	}		
	%> 

<%	

	 Connection d = Dbconn.create();
	 PreparedStatement p = d.prepareStatement("SELECT count(*) FROM `cyber`.`empadd` where location='library' and dbsetup='unusual'");
	 //PreparedStatement p = d.prepareStatement("SELECT * FROM `admission`.`adminaccepttbl`");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
				
			osunuselist=rp.getString(1);		
											
	%>
	
	<%
	}		
	%> 
	
	<%	

	 Connection d2 = Dbconn.create();
	 PreparedStatement p2 = d2.prepareStatement("SELECT count(*) FROM `cyber`.`empadd` where location='library' and dbsetup='secure'");
	 //PreparedStatement p = d.prepareStatement("SELECT * FROM `admission`.`adminaccepttbl`");
	ResultSet rp2 = p2.executeQuery();
	
		while (rp2.next()){
				
			osseclist=rp2.getString(1);		
											
	%>
	
	<%
	}		
	%> 
	
	<%	

	 Connection d3 = Dbconn.create();
	 PreparedStatement p3 = d3.prepareStatement("SELECT count(*) FROM `cyber`.`empadd` where location='library' and dbsetup='possible'");
	 //PreparedStatement p = d.prepareStatement("SELECT * FROM `admission`.`adminaccepttbl`");
	ResultSet rp3 = p3.executeQuery();
	
		while (rp3.next()){
				
			possiblist=rp3.getString(1);		
											
	%>
	
	<%
	}		
	%> 
	
	<%
	
	/* abyb=Integer.parseInt(locatlist)/Integer.parseInt(osunuselist);
	multia=abyb*Integer.parseInt(osunuselist);
	divb=multia/Integer.parseInt(locatlist);
	finallist=String.valueOf(divb); */
	try{
		abyb=Integer.parseInt(locatlist)/Integer.parseInt(osunuselist);
		multia=abyb*Integer.parseInt(osunuselist);
		divb=multia/Integer.parseInt(locatlist);
		finallist=String.valueOf(divb);
		
	}catch(ArithmeticException e){
		e.printStackTrace();
	}
	
	
	
	
	%>
	
	<%
	try{
	abyb2=Integer.parseInt(locatlist)/Integer.parseInt(osseclist);
	multia2=abyb2*Integer.parseInt(osseclist);
	divb2=multia2/Integer.parseInt(locatlist);
	finallist2=String.valueOf(divb2);
}catch(ArithmeticException e){
	e.printStackTrace();
}
	
	%>
	
	<%
	try{
	abyb3=Integer.parseInt(locatlist)/Integer.parseInt(possiblist);
	multia3=abyb3*Integer.parseInt(possiblist);
	divb3=multia3/Integer.parseInt(locatlist);
	finallist3=String.valueOf(divb3);

}catch(ArithmeticException e){
	e.printStackTrace();
}
	
	%>
	
 <tr>
 	<%-- <td><%=locatlist%></td> 
	  <td><%=osunuselist%></td>  
	  <td><%=osseclist%></td>
	  <td><%=possiblist%></td> --%>
	  <td><%=finallist%></td>   
	  <td><%=finallist2%></td>   
	  <td><%=finallist3%></td>   
        </tr>
				
</table>

</center>





</body>
</html>