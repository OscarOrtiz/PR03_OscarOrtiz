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
			$sql = "UPDATE users SET nomUser='$_REQUEST[nomUser]', mail='$_REQUEST[mail]', telf='$_REQUEST[telf]', password='$_REQUEST[password]', privilegios='$_REQUEST[privilegios]' WHERE idUser=$_REQUEST[idUser]";

			//echo $sql;

			//lanzamos la sentencia sql
			$datos = mysqli_query($con, $sql);

			header("location: gestusers.php")
		?>
	</body>
</html>