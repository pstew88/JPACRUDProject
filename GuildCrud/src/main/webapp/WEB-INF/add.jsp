<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Character</title>
</head>
<body>

	<p>
	<h2>Add Character</h2>
	<p>
	<form action="addChar.do" method="GET">

	<label
			for="name"> Create name </label> <input id="name" type="text" name="name" value="${guild.name}"
			required /> <br> 
			
			<label for="character">Select class
			 </label> 
			 <select name="character" id="character">
			<option value="Druid">Druid</option>
			<option value="Hunter">Hunter</option>
			<option value="Mage">Mage</option>
			<option value="Priest">Priest</option>
			<option value="Rogue">Rogue</option>
			<option value="Shaman">Shaman</option>
			<option value="Warlock">Warlock</option>
			
		</select> 
		<br> 
		<label for="role">Select role<select name="role" id="role">
			<option value="Dps">Dps</option>
			<option value="Tank">Tank</option>
			<option value="Healer">Healer</option>
			</select>
			<br>

			<label for="raidGroup"> Select raid group </label>
			<select name="raidGroup" id="raidGroup">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
		</select>
			<br>

			<label for="race">Select race
		</label>
			<select name="race" id="race">
				<option value="Orc">Orc</option>
				<option value="Troll">Troll</option>
				<option value="Undead">Undead</option>
				<option value="Tauren">Tauren</option>
				</select>
	
	<input type="submit" value="Create Character" />
			<input type="reset">
	
	</form>

</body>
</html>