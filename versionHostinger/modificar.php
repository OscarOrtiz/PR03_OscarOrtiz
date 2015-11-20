<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Modificar usuario</title>
		<link href="css/registro.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">

	</head>
	<body>
		<?php
			//realizamos la conexión con mysql
			$con = mysqli_connect('mysql.hostinger.es', 'u803182362_user', 'CumjI19a9j', 'u803182362_intra');

			//esta consulta devuelve todos los datos del producto cuyo campo clave (pro_id) es igual a la id que nos llega por la barra de direcciones
			$sql = "SELECT * FROM users WHERE idUser=$_REQUEST[id]";

			//mostramos la consulta para ver por pantalla si es lo que esperábamos o no
			//echo "$sql<br/>";

			//lanzamos la sentencia sql que devuelve el producto en cuestión
			$datos = mysqli_query($con, $sql);
			if(mysqli_num_rows($datos)>0){
				$prod=mysqli_fetch_array($datos);
				?>

			<div id="login">
				<center><form name="formulario1" action="modificar.users.php" method="get">
				<fieldset class="clearfix">

				<input type="hidden" name="idUser" value="<?php echo $prod['idUser']; ?>">
				Nombre:<br/>
				<input type="text" name="nomUser" size="20" maxlength="25" value="<?php echo $prod['nomUser']; ?>"><br/>
				Contraseña:<br/>
				<input type="password" name="password" value="<?php echo $prod['password']; ?>"><br/>
				Mail:<br/>
				<input type="text" name="mail" value="<?php echo $prod['mail']; ?>"><br/>
				Teléfono:<br/>
				<input type="text" name="telf" maxlength="9" value="<?php echo $prod['telf']; ?>"><br/>
				Tipo:<br/>
				<select name="privilegios">
				<option value="admin">Admin</option>
				<option value="member">Member</option>
				</select><br/><br/>
				<input type="submit" value="Modificar">
				</br>
				<a href="gestusers.php"><input type="volver" value="Volver"></a>
				</fieldset>

		</form></center>


				<?php
			} else {
				echo "Usuario con id=$_REQUEST[idUser] no encontrado!";
			}
			//cerramos la conexión con la base de datos
			mysqli_close($con);
		?>
		<br/><br/>
		<a href="gestusers.php">Volver</a>
	</body>
</html>