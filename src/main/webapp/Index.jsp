<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Device Index</title>
</head>
<body>

<h1 align="center">CRUD Operation</h1><hr>

<h1>Insert Device Data in the Data Base :</h1>

<form action="addDevice">
    Enter ID : <input type="text" name="id" required placeholder="Enter ID" autocomplete="off"><br><br>
    Enter Device-Name : <input type="text" name="deviceName" minlength="3" maxlength="20" required placeholder="Enter Device-Name"><br><br>
    Enter Door-Name : <input type="text" name="doorName" minlength="3" maxlength="20" required placeholder="Enter floor-Name" pattern=".*floor" ><br><br>
    Enter Date : <input type="date" name="date" min="2020-01-01" max="2025-12-31" required placeholder="Enter Date" ><br><br>
    Enter Entry : <input type="radio" name="entry" value="True" >Enable
                  <input type="radio" name="entry" value="False" >Disable <br><br>
    <input type="submit"><br>

</form> <hr>


<h1>Display Device Information By ID :</h1>
     <form action="getDevice">
        Enter ID : <input type="text" name="id" required placeholder="Enter ID"> <br><br>
        <input type="submit"><br>
     </form><hr>
     
     <h1>Display Device Information By Name :</h1>
     <form action="getDeviceName">
        Enter Name : <input type="text" name="deviceName" required placeholder="Enter Name"> <br><br>
        <input type="submit"><br>
     </form><hr>
     


<h1>Enter Device Details to Update :</h1>
<form action="updateDevice">
   Enter ID : <input type="text" name="id" required placeholder="Enter ID"> <br><br>
   <input type="submit"><br>
</form><hr>

<h1>Enter Device Details to Delete :</h1>
<form action="delDevice">
   Enter ID : <input type="number" name="id" required placeholder="Enter ID"> <br><br>
   <input type="submit"><br>

</form><hr>


<h1>Display All Device Information :</h1>
     <form action="showDevice">
      Get All Details : <input type="submit"><br>
     </form><hr>


</body>
</html>