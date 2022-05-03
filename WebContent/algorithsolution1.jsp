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
<a href="adminmain.jsp">Back</a>
</div>

<br>
<center>
<div class="myDiv2">
Solution View(Library)
</div>
</center>
<br>
<iframe src="libraryalgosolu.jsp" height="150" width="320"></iframe>
<iframe src="libraryfirewall.jsp" height="150" width="320"></iframe>
<iframe src="librarydatabas.jsp" height="150" width="320"></iframe>
<iframe src="libraryharddisk.jsp" height="150" width="320"></iframe>
<!-- <iframe src="govthospalgosolu.jsp" height="180" width="350"></iframe>
<iframe src="powerstationalgosolu.jsp" height="180" width="350"></iframe> -->

<br><br>
<center>
<div class="myDiv2">
Solution View(e-Service Centre)<br><br>
</div>
</center>

<iframe src="eserviceosalgosolu.jsp" height="150" width="320"></iframe>
<iframe src="eservicefirealgosolu.jsp" height="150" width="320"></iframe>
<iframe src="eservicedbalgosolu.jsp" height="150" width="320"></iframe>
<iframe src="eserviceharddiskalgosolu.jsp" height="150" width="320"></iframe>
<!-- <iframe src="eservicealgosolu.jsp" height="180" width="350"></iframe>
<iframe src="govtofficalgosolu.jsp" height="180" width="320"></iframe> -->


<%-- <br><br><br>
<table>
<!-- <th>Username</th> -->
<th>e-Pass</th>
<th>Vaccine</th>
<th>Food</th>
<th>Circumstance</th>
<th>HealthConsultancy</th>
<th>Yourself</th>
<th>SocialNetwork</th>
<th>NewsChannel</th>
<!-- <th>Remarks</th> -->

<%
String idlist="";
String epasslist="";
String vacclist="";
String foodlist="";
String cicumlist="";
String consultlist="";
String yourslist="";
String sociallist=""; 
String chanellist="";
String unamelist="";

%>


<%	

	 Connection d = Dbconn.create();
	 PreparedStatement p = d.prepareStatement("SELECT * FROM `publicopinion`.`ngodatacheck`");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
					
			idlist=rp.getString(1);
			epasslist=rp.getString(2);
			vacclist=rp.getString(3);
			foodlist=rp.getString(4);
			cicumlist=rp.getString(5);
			consultlist=rp.getString(6);
			yourslist=rp.getString(7);
			sociallist=rp.getString(8);
			chanellist=rp.getString(9);
			unamelist=rp.getString(10);
			
											
	%>
	
	 <tr>
      <td><%=unamelist%></td>                      
      <td><%=epasslist%></td>
      <td><%=vacclist%></td>
      <td><%=foodlist%></td>
      <td><%=cicumlist%></td>
      <td><%=consultlist%></td>
      <td><%=yourslist%></td>
      <td><%=sociallist%></td>
      <td><%=chanellist%></td>
      <td><a href="ngocheck.jsp?namel=<%=unamelist%>"><button class="btn btn-danger">Send</button></a></td>
      <td><a href="ngocheck.jsp?namel=<%=unamelist%>">Send</a></td>
      </tr>
				
	<%
	}		
	%> 
</table>
 --%>



</body>
</html>