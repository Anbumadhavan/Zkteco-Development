<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Device</title>
</head>
<body>
	<h1 align="center">Device Information</h1><br><hr>
     Device ID : ${device.id}, Device Name : ${device.deviceName}, Door Name : ${device.doorName}, Date : ${device.date}, Entry : ${device.entryAlias}

     <br><br><br><form action="Index" style="font-size: large;">
		Goto Index Page : <input type="submit" value="Home">
	</form>
</body>
</html>