<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		    <link href="css/registro.css" rel="stylesheet" type="text/css">
		      <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">
		<title>Añadir usuario</title>
	</head>
	<body>
		<?php
			//realizamos la conexión con mysql
			$con = mysqli_connect('localhost', 'root', '', 'bd_intranet');

			//como la sentencia SIEMPRE va a buscar todos los registros de la tabla producto, pongo en la variable $sql esa parte de la sentencia que SI o SI, va a contener
			$sql = "SELECT * FROM users ORDER BY idUser ASC";

			//mostramos la consulta para ver por pantalla si es lo que esperábamos o no
			//echo "$sql<br/>";

			//lanzamos la sentencia sql
			$datos = mysqli_query($con, $sql);
			?>
			 <div id="login">
		<center><form action="insertar.users.php" method="GET">

			<fieldset class="clearfix">

			Nombre:<br/>
			<input type="text" name="nomUser" size="20" maxlength="25"><br/>
			Contraseña:<br/>
			<input type="password" name="password"><br/>
			Mail:<br/>
			<input type="text" name="mail"><br/>
			Teléfono:<br/>
			<input type="text" name="telf" maxlength="9"><br/>
			Tipo de usuario:
			<select name="privilegios">
				<option value="admin">Admin</option>
				<option value="member">Member</option>
				</select><br/><br/>
			</select>
			<input type="submit" value="Registrar">
			</br>
			<a href="gestusers.php"><input type="volver" value="Volver"></a>

			 </fieldset>

		</form></center>
		<div>
		<!--<a href="gestusers.php">Volver</a>!-->
	</body>
</html>