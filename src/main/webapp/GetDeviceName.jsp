<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Device Information</title>
<style>
	table, th{
	  border: 1px solid blue;
	  border-collapse: collapse;
	  align-items: center;
	}
	td {
			align-content: center;
	} 
  </style>

</head>
<body>
		<h1 align="center">Device Information</h1><br><hr><br>
<%--      Device ID : ${deviceList.id}, Device Name : ${deviceList.deviceName}, Door Name : ${deviceList.doorName}, Date : ${deviceList.date}, Entry : ${deviceList.entryAlias}
 --%>
 <%--  ${deviceList} --%>
  
  <%@ page import="java.util.*" %>
	<%@ page import="com.zkteco.springboot.model.*" %>
	<% @SuppressWarnings("unchecked") List<Device> deviceList=(List<Device>)request.getAttribute("deviceList"); %>
	<table border="1px" width="800" height="300" align="center" >
		<th>ID</th>
		<th>deviceName</th>
		<th>DoorName</th>
		<th>Date</th>
		<th>Entry</th>
	<% for(Device device :deviceList) {%>
	
	<tr>
		<td> <%=device.getId() %> </td>
		<td> <%=device.getDeviceName() %> </td>
		<td> <%=device.getDoorName() %> </td>
		<td> <%=device.getDate() %> </td>
		<td> <%=device.getEntryAlias() %> </td>

	</tr>
	
	<%} %>
		
	</table> <br> <br>
     <form action="Index" align ="center" style="font-size: large;">
		Goto Index Page : <input type="submit" value="Home">
	</form>
		
</body>
</html>