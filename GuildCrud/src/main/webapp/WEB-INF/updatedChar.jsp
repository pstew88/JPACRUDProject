<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="settings.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<c:choose>
    <c:when test="${not empty guild}">
    <p> Your Character has been updated</p>
     <p>Roster # ${guild.id} ${guild.name} ${guild.race} ${guild.character}</p>
  <p>Role: ${guild.role} Group: ${guild.raidGroup}</p>
     </c:when>
    <c:otherwise>
      <p>Your Character was not updated</p>
    </c:otherwise>
  </c:choose>
  
  <a href = "index.do">Return to home</a>
  
  
</body>
</html>