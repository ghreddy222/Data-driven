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
<div class="backtag">
<a href="employmainpage3.jsp">Back</a>
</div>
<br>
<center>
<div class="myDiv2">
Service Details
</div>


<%

String uname=session.getAttribute("emailkey").toString();

%>


<br><br><br>
<table>
<!-- <th>Pharmacyname</th> -->
<th>Location</th>
<th>Area</th>
<th>System</th>
<th>Date</th>
<th>OperatingSystem</th>
<th>Firewall</th>
<th>Database</th>
<th>Harddisk</th>


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

%>

<%	

	 Connection d = Dbconn.create();
	 PreparedStatement p = d.prepareStatement("SELECT * FROM `cyber`.`empadd`");
	 //PreparedStatement p = d.prepareStatement("SELECT * FROM `admission`.`adminaccepttbl`");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
					
			idlist=rp.getString(1);
			locatlist=rp.getString(2);
			arealist=rp.getString(3);
			systlist=rp.getString(4);
			datelist=rp.getString(5);
			oslist=rp.getString(6);
			firelist=rp.getString(7);
			dblist=rp.getString(8);
			hdisklist=rp.getString(9);
			
											
	%>
	
	 <tr>
		<td><%=locatlist%></td>                            
      <td><%=arealist%></td>
      <td><%=systlist%></td>
      <td><%=datelist%></td>
      <td><%=oslist%></td>
      <td><%=firelist%></td>
      <td><%=dblist%></td>
      <td><%=hdisklist%></td>
      
      <%-- <td class="text-right"><a href="delete?id=<%=id%>"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </a></td> --%>
    <%-- <td><a href='Deleteservletnew?id=<%=idlist%>' class="btn btn-danger">Remove</a></td> --%>
    <%-- <td class="text-right"><a href="delete?id=<%=id%>"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </a></td> --%>
      <%-- <td>
      <a href="firstdeletejsp.jsp?id=<%=idlist%>"><button class="btn btn-danger">Remove<i class="fa fa-trash"></i></button></a>
      <a href="firstupdatejsp.jsp?id=<%=idlist%>"><button class="btn btn-danger">Edit</button></a>
      </td> --%>  
        <%-- <td><a href="Deleteservletnew?id=<%=idlist%>"><button class="btn btn-danger">Remove</button></a></td> --%> 
       </tr>
				
	<%
	}		
	%> 

</table>

</center>





</body>
</html>