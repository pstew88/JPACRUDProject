<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="settings.css">
<meta charset="UTF-8">
<title>Show Character</title>
</head>
<body>

<div>
<c:choose>
<c:when test= "${not empty guild}">
  <p>Roster # ${guild.id} ${guild.name} ${guild.race} ${guild.character}</p>
  <p>Role: ${guild.role} Group: ${guild.raidGroup}</p>
<br>  
  <form action="SendToUpdate.do" method="GET">
		<button name="id" type="submit" value="${guild.id}">Update 
		Character</button>
</form>
  

  <form action="deleteChar.do" method="GET">
		<button name="id" type="submit" value="${guild.id}">Delete
			Character</button>
	</form>
  
</c:when>

<c:when test="${not empty guilds}">
<c:forEach items="${guilds}" var="guild">
  <h5>Roster # ${guild.id} ${guild.name} ${guild.race} ${guild.character})</h5>
  <p>Role: ${guild.role} Group: ${guild.raidGroup}</p>
</c:forEach>
</c:when>
</c:choose>

</div>

</body>
</html>