<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
	<h2>Edit film</h2>
	<p>
	<form action="updateChar.do" method="GET">

		<input id="id" type="hidden" name="id" value="${guild.id}" /> <label
			for="name"> Change name from <b><u>${guild.name}</u></b> to
		</label> <input id="name" type="text" name="name" value="${guild.name}"
			required /> <br> 
			
			<label for="character">Change class
			from <b><u>${guild.character}</u></b> to
		</label> <select name="character" id="character">
			<option value="${guild.character}" selected>${guild.character}</option>
			<option value="Druid">Druid</option>
			<option value="Hunter">Hunter</option>
			<option value="Mage">Mage</option>
			<option value="Priest">Priest</option>
			<option value="Rogue">Rogue</option>
			<option value="Shaman">Shaman</option>
			<option value="Warlock">Warlock</option>
		</select> <br> 
		<label for="role">Change role from <b><u>${guild.role}</u></b>to</label>
		 <select name="role" id="role">
			<option value="${guild.role}" selected>${guild.role}</option>
			<option value="Dps">Dps</option>
			<option value="Tank">Tank</option>
			<option value="Healer">Healer</option>
			</select>
			<br>

			<label for="raidGroup"> Change raid group from <b><u>${guild.raidGroup}</u></b>to</label>
			<select name="raidGroup" id="raidGroup">
				<option value="${guild.raidGroup}" selected>${guild.raidGroup}</option>
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

			<label for="race">Change race from <b><u>${guild.race}</u></b>
				to
		</label>
			<select name="race" id="race">
				<option value="${guild.race}" selected>${guild.race}</option>
				<option value="Orc">Orc</option>
				<option value="Troll">Troll</option>
				<option value="Undead">Undead</option>
				<option value="Tauren">Tauren</option>
				</select>
	</form>

</body>
</html>