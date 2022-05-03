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
  font-size:20px;  
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
<br>
<center>
<div class="myDiv2">
Firewall
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
<th>Location Total Count</th>
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
String libcount="";
String libcountsec="";
String libcountunuse="";
String libcountposs="";
String govthospcount="";
String powerstationcount="";
String eservicecount="";
String govtofficecount="";

float useint=0;
float possint=0;
float secint=0;
float abyb=0,multia=0,divb=0;
float solution=0;


%>

<%	

	 Connection d4 = Dbconn.create();
	 PreparedStatement p4 = d4.prepareStatement("SELECT count(location) FROM `cyber`.`empadd` where location='eservicecentre'");
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
	 PreparedStatement p = d.prepareStatement("SELECT count(location) FROM `cyber`.`empadd` where location='eservicecentre' and firewal='unusual'");
	 //PreparedStatement p = d.prepareStatement("SELECT * FROM `admission`.`adminaccepttbl`");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
				
			libcountunuse=rp.getString(1);		
											
	%>
	
	<%
	}		
	%> 
	
	<%	

	 Connection d2 = Dbconn.create();
	 PreparedStatement p2 = d2.prepareStatement("SELECT count(location) FROM `cyber`.`empadd` where location='eservicecentre' and firewal='secure'");
	 //PreparedStatement p = d.prepareStatement("SELECT * FROM `admission`.`adminaccepttbl`");
	ResultSet rp2 = p2.executeQuery();
	
		while (rp2.next()){
				
			libcountsec=rp2.getString(1);		
											
	%>
	
	<%
	}		
	%> 
	
	<%	

	 Connection d3 = Dbconn.create();
	 PreparedStatement p3 = d3.prepareStatement("SELECT count(location) FROM `cyber`.`empadd` where location='eservicecentre' and firewal='possible'");
	 //PreparedStatement p = d.prepareStatement("SELECT * FROM `admission`.`adminaccepttbl`");
	ResultSet rp3 = p3.executeQuery();
	
		while (rp3.next()){
				
			libcountposs=rp3.getString(1);		
											
	%>
	
	<%
	}		
	%> 
	
	<%
	
	/* abyb=Integer.parseInt(locatlist)/Integer.parseInt(osunuselist);
	multia=abyb*Integer.parseInt(osunuselist);
	divb=multia/Integer.parseInt(locatlist);
	finallist=String.valueOf(divb); */
	
	/* abyb=Integer.parseInt(locatlist)/Integer.parseInt(osunuselist);
	multia=abyb*Integer.parseInt(osunuselist);
	divb=multia/Integer.parseInt(locatlist);
	finallist=String.valueOf(divb); */
	
	
	%>
	
 <tr>
 	<%-- <td><%=locatlist%></td>  --%>
	  <td><%=locatlist%></td>  
	  <td><%=libcountunuse%></td>
	  <td><%=libcountsec%></td>
	  <td><%=libcountposs%></td>   
        </tr>
				
</table>

</center>





</body>
</html>