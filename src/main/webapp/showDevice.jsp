<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Device Details</title>
<style>
	table, th{
	  border: 1px solid red;
	  border-collapse: collapse;
	  align-items: center;
	}
	td {
			align-content: center;
	} 
  </style>
</head>
<body>
	<h1 align="center">All Device Information</h1> <br><hr><br><br>
	
	<h1><form action="AddDevice.jsp" align="center" style="font-size: large;">
		Add Device Details : <input type="submit" value="Add" formtarget="_blank">
	</form></h1>
	
	 <%-- Device ID : ${deviceList.id}, Device Name : ${deviceList.deviceName}, Door Name : ${deviceList.doorName}, Date : ${deviceList.date}, Entry : ${deviceList.entryAlias} --%>
	<%-- ${deviceList} <br> --%>
	<%@ page import="java.util.*" %>
	<%@ page import="com.zkteco.springboot.model.*" %>
	<% @SuppressWarnings("unchecked") List<Device> deviceList=(List<Device>)request.getAttribute("deviceList"); %>
	<table border="1px" width="800" height="300" align="center" >
		<th>ID</th>
		<th>deviceName</th>
		<th>DoorName</th>
		<th>Date</th>
		<th>Entry</th>
		<th>Delete</th>
		<th>Update</th>
	<% for(Device device :deviceList) {%>
	
	<tr>
		<td> <%=device.getId() %> </td>
		<td> <%=device.getDeviceName() %> </td>
		<td> <%=device.getDoorName() %> </td>
		<td> <%=device.getDate() %> </td>
		<td> <%=device.getEntryAlias() %> </td>
		<td><form action="Delete.jsp" align="center" ><input type="submit" value="Delete" formtarget="_blank"></form></td>
		<td><form action="Update.jsp" align="center" ><input type="submit" value="Update" formtarget="_blank"></form></td>
	</tr>
	
	<%} %>
		
	</table> <br> <br>
	
	<form action="Index" align="center" style="font-size: large;">
		Goto Index Page : <input type="submit" value="Home" formtarget="_blank">
	</form>

</body>
</html>