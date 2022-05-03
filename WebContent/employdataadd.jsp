<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #006400;
}

li {
  float: right;
  padding-right:95px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:green; 
}

table {
  
  width: 40%;
  border-spacing: 10px;
}
td {
  height: 50px;
   text-align: left;
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
Data Entry
</div>
</center>
 <center>
<form action="Employaddservlet" method="post">

<table>

<tr>
<td>Location</td>
<td>
<select name="location" style="text-align:center;width:180px;height:35px;border-radius: 10px;align:center;">
    <option value="library">Library</option>
    <!-- <option value="govthospital">GovtHospital</option>
    <option value="powerstation">PowerStation</option> -->
    <option value="eservicecentre">Lab</option>
    <!-- <option value="govtoffice">Govt Office</option>     -->
  </select>
  </td>
</tr>


<tr>
<td>Area</td>
<td>
<select name="area" style="text-align:center;width:180px;height:35px;border-radius: 10px;align:center;">
    <option value="area1">Area1</option>
    <option value="area2">Area2</option>
    <option value="area3">Area3</option>
    <option value="area4">Area4</option>
    <option value="area5">Area5</option>    
  </select>
  </td>
</tr>


<tr>
<td>System</td>
<td>
<select name="system" style="text-align:center;width:180px;height:35px;border-radius: 10px;align:center;">
    <option value="system1">System1</option>
    <option value="system2">System2</option>
    <option value="system3">System3</option>
    <option value="system4">System4</option>
    <option value="system5">System5</option>    
  </select>
  </td>
</tr>

<tr>
<td>Date</td>
<td><input type="date" name="dates"  style="width:180px;height:30px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>

<tr>
<td>Operation System</td>
<!-- <td><input type="text" placeholder="Student name" name="studentname" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td> -->
<td>
<input type="radio" name="osystem" value="secure">Secure
<input type="radio" name="osystem" value="unusual">Unusual
<input type="radio" name="osystem" value="possible">Possible to Hack
<br><br></td>
</tr>

<tr>
<td>Firewall</td>
<td>
<input type="radio" name="firewall" value="secure">Secure
<input type="radio" name="firewall" value="unusual">Unusual
<input type="radio" name="firewall" value="possible">Possible to Hack
<br><br></td>
</tr>


<tr>
<td>Database Setup</td>
<td>
<input type="radio" name="database" value="secure">Secure
<input type="radio" name="database" value="unusual">Unusual
<input type="radio" name="database" value="possible">Possible to Hack
<br><br></td>
</tr>


<tr>
<td>Hard Disk Access</td>
<td>
<input type="radio" name="hdisk" value="secure">Secure
<input type="radio" name="hdisk" value="unusual">Unusual
<input type="radio" name="hdisk" value="possible">Possible to Hack
<br><br></td>
</tr>



<tr>
<td colspan="2" style="text-align:center;"><input type="submit" value="Submit" style="width:110px;height:35px;border-radius: 10px;text-align:center; background-color: #006400;color:#fff;"><br><br></td>
</tr>

</table>
</form>



</center>


</body>
</html>