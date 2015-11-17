<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Ejemplo de formularios con datos en BD</title>
	</head>
	<body>
		<?php
			//realizamos la conexión con mysql
			$con = mysqli_connect('localhost', 'root', '', 'bd_intranet');
			$sql = "INSERT INTO producto (nomUser,password) VALUES ('$_REQUEST[nomUser]', '$_REQUEST[password]')";

			//echo $sql;

			//lanzamos la sentencia sql
			$datos = mysqli_query($con, $sql);

			header("location: index.html")
		?>
	</body>
</html>