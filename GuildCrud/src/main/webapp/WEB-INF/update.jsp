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
	<form action="UpdateFilm.do" method="GET">

		<input id="id" type="hidden" name="id" value="${guild.id}" />
			
		<label for="name"> Change name from <b><u>${guild.name}</u></b> to</label>
		<input id="name" type="text" name="name" value="${guild.name}" required/>
<br>
		<label for="character"> Change class from <b><u>${guild.character}</u></b> to</label>
		<input id="character" size="100" type="text" name="character" value="${guild.character}" required/>
<br>
		<label for="role">Change role from <b><u>${guild.role}</u></b> to</label>
		<input id="role" type="text" name="role" value="${guild.roll}" required/>
<br>
		<label for="raidGroup"> Change raid group from <b><u>${guild.raidGroup}</u></b> to </label>
		<select name="raidGroup" id="raidGroup">
			<option value="${guild.raidGroup}" selected>${guild.raidGroup}</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
		</select>
<br>
		<label for="rentalDuration"> Change rental duration from <b><u>${film.rentalDuration} days</u></b> to</label>
		<input id="rentalDuration" type="number" min="0" max="255" name="rentalDuration" value="${film.rentalDuration}" required/>
<br>
		<label for="rentalRate"> Change rental rate from <b><u>$${film.rentalRate}</u></b> to</label>
		<input id="rentalRate" type="number" min="0" max="99.99" step="0.01" name="rentalRate" value="${film.rentalRate}" required/>
<br>
		<label for="length"> Change length from <b><u>${film.length} minutes</u></b> to</label>
		<input id="length" type="number" min="0" max="65535" name="length" value="${film.length}" required/>
<br>
		<label for="replacementCost"> Change replacement cost from <b><u>$${film.replacementCost}</u></b> to</label>
		<input id="replacementCost" type="number" min="0" max="999.99" step="0.01" name="replacementCost" value="${film.replacementCost}" required/>
<br>
		<label for="rating">Change rating from <b><u>${film.rating}</u></b> to</label>
		<select name="rating" id="rating">
			<option value="${film.rating}" selected>${film.rating}</option>
			<option value="G">G</option>
			<option value="PG">PG</option>
			<option value="PG13">PG-13</option>
			<option value="R">R</option>
			<option value="NC17">NC-17</option>
		</select>		
	<br> 
		<label for="specialFeatures">Change special features from <b><u>${film.specialFeatures}</u></b> to</label> 
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "0" /> None
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "trailers" /> Trailers
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "commentaries" /> Commentaries
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "deleted scenes" /> Deleted Scenes
			<input id ="specialFeatures" type="radio" name="specialFeatures" value= "behind the scenes" /> Behind the Scenes
	<br>
			<input type="submit" value="Update Film" />
			<input type="reset">

	</form>

</body>
</html>