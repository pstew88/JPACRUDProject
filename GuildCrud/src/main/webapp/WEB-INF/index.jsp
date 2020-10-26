<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Unity</title>
</head>
<body>
<h1>Welcome to Unity</h1>
<br><br>
<form action="getId.do" method="GET">
  Search by Roster Number: <input type="text" name="id" />
  <input type="submit" value="Show Character" />
</form>
<form action="getName.do" method="GET">
  Search by Name: <input type="text" name="name" />
  <input type="submit" value="Show Character" />
</form>

<form action="getClass.do" method="GET">
  Search by Class: <input type="text" name="character" />
  <input type="submit" value="Show Character" />
</form>

<form action="getRole.do" method="GET">
  Search by Role: <input type="text" name="role" />
  <input type="submit" value="Show Character" />
</form>

<form action="getGroup.do" method="GET">
  Search by Group: <input type="text" name="raidGroup" />
  <input type="submit" value="Show Character" />
</form>

<form action="getRace.do" method="GET">
  Search by Race: <input type="text" name="race" />
  <input type="submit" value="Show Character" />
</form>

<form action="add.do" method="GET">
  <input type="submit" value="Add New Character" />
</form>

<!-- <form action="updateChar.do" method="GET">
  <input type="submit" value="Update Character" />
</form> -->

</body>
</html>