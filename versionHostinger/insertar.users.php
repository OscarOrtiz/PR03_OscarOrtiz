<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Ejemplo de formularios con datos en BD</title>
	</head>
	<body>
		<?php
			//realizamos la conexión con mysql
			$con = mysqli_connect('mysql.hostinger.es', 'u803182362_user', 'CumjI19a9j', 'u803182362_intra');
			$sql = "INSERT INTO users (nomUser,password, mail, telf, privilegios) VALUES ('$_REQUEST[nomUser]','$_REQUEST[password]','$_REQUEST[mail]', '$_REQUEST[telf]','$_REQUEST[privilegios]')";

			//echo $sql;

			//lanzamos la sentencia sql
			$datos = mysqli_query($con, $sql);

			header("location: gestusers.php")
		?>
	</body>
</html>