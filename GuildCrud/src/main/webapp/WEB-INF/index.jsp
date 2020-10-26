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
  Search by Class: 
   <select name="character" id="character">
			<option value="Druid">Druid</option>
			<option value="Hunter">Hunter</option>
			<option value="Mage">Mage</option>
			<option value="Priest">Priest</option>
			<option value="Rogue">Rogue</option>
			<option value="Shaman">Shaman</option>
			<option value="Warlock">Warlock</option>
			
		</select> 
  <input type="submit" value="Show Characters" />
</form>

<form action="getRole.do" method="GET">
  Search by Role: 
  <select name="role" id="role">
			<option value="Dps">Dps</option>
			<option value="Tank">Tank</option>
			<option value="Healer">Healer</option>
			</select>
  <input type="submit" value="Show Characters" />
</form>

<form action="getGroup.do" method="GET">
  Search by Group: <select name="raidGroup" id="raidGroup">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
		</select>
  <input type="submit" value="Show Characters" />
</form>

<form action="getRace.do" method="GET">
  Search by Race: <select name="race" id="race">
				<option value="Orc">Orc</option>
				<option value="Troll">Troll</option>
				<option value="Undead">Undead</option>
				<option value="Tauren">Tauren</option>
				</select>
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