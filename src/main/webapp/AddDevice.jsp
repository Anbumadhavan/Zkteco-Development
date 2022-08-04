<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Device</title>
</head>
<body>
<h1 align="center">Add Device</h1><hr>

<h1>Insert Device Data in the Data Base :</h1>

<form action="addDevice">
    Enter ID : <input type="text" name="id" required placeholder="Enter ID"><br><br>
    Enter Device-Name : <input type="text" name="deviceName" minlength="3" maxlength="20" required placeholder="Enter Device-Name"><br><br>
    Enter Door-Name : <input type="text" name="doorName" minlength="3" maxlength="20" required placeholder="Enter floor-Name" ><br><br>
    Enter Date : <input type="date" name="date" min="2020-01-01" max="2025-12-31" required placeholder="Enter Date" ><br><br>
    Enter Entry : <input type="radio" name="entry" value="True">Enable
                  <input type="radio" name="entry" value="False">Disable <br><br>
    <input type="submit"><br> <br> <hr>
    
</form>
     <form action="/showDevice"  style="font-size: large;">
		Goto View Page : <input type="submit" value="Home">
	</form>
</body>
</html>