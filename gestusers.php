<link rel="stylesheet" href="css/tablareservas.css">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<style>
	    	a {color: blue;}
	    </style>
<?php
	session_start();
	$con = mysqli_connect('localhost', 'root', '', 'bd_intranet');
	$sql = "SELECT * FROM users ORDER BY estado DESC";

?>
<!DOCTYPE HTML>
<HTML>
	<head>
		<title></title>
		<meta charset='utf-8'>
   		<meta http-equiv="X-UA-Compatible" content="IE=edge">
   		<meta name="viewport" content="width=device-width, initial-scale=1">
   		<link rel="stylesheet" href="css/menu.css">
   		<link href="css/paginausuario.css" rel="stylesheet" type="text/css">
   		<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   		<script src="js/script.js"></script>
   		<link rel="stylesheet" href="css/nav.css">
   		
		
	</head>
	
	<body>
	<?php
if(!empty($_SESSION['usuario'])){		//Aqui introducimos lo que puede ver un usuario con una cuentra normal
	$privilegios=$_SESSION['usuario'];	//Guardamos la variable usuario en $privilegios para que no haya diferencias entre usuario y administrador en el resto del codigo
}else if(!empty($_SESSION['admin'])){ 	//Aqui introducimos lo que vera el administrador
	$privilegios=$_SESSION['admin'];	//Guardamos la variable admin en $privilegios para que no haya diferencias entre usuario y administrador en el resto del codigo
}	
?>
		<div class="header">
			<nav id="menu_gral">
		  		<ul>
			    	<li><a href="#"><?php
			    		echo  $privilegios;
						?></a>
        		<ul><!-- Segundo nivel desplegable -->
         			<li><a href="logout.php">Logout</a></li>
        		</ul>
    				</li>
			</nav>
			<img src="images/logo_2.png">
		</div>
		<div class="header-cont"></div>
			<div id='cssmenu'>
				<ul>
   			<li><a href='paginausuario_reservar.php'><span>Reservar</span></a></li>
   			<li><a href='paginausuario_historial.php'><span>Historial</span></a></li>
			</ul>
			</div>  
		<div class="contenido">
			<center>
				<?php
					$datos = mysqli_query($con, $sql);
				?>
					<table class="mytable">
						<tr>
							<th>Nombre</th>
							<th>Mail</th>
							<th>Teléfono</th>
							<th>Privilegios</th>
							<th>Estado</th>
							<th>Opciones</th>
						</tr>
				<?php
				while ($prod = mysqli_fetch_array($datos)){
				echo "<tr>";
					echo "<td>$prod[nomUser]</td>";
					echo "<td>"."$prod[mail]"."</td>";
					echo "<td>"."$prod[telf]"."</td>";
					echo "<td>"."$prod[privilegios]"."</td>";
					
					if ($prod['estado']==1) {
						echo "<td>Habilitado</td>";
					}else{
						echo "<td>Deshabilitado</td>";
					}
					if ($prod['estado']==1) {
					echo "<td>";
					echo "<a href='modificar.php?id=$prod[idUser]'><img src='images/iconos/Pencil_2.png'></a>";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					//echo "<a href='eliminar.php?id=$prod[idUser]'><img src='images/iconos/Trash.png'></a>";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					echo "<a href='deshabilitar.php?id=$prod[idUser]'><img src='images/iconos/Error_Symbol.png'></a>";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					}else{
						echo "<td>";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
					echo "&nbsp";
						echo "<a href='activar.php?id=$prod[idUser]'><img src='images/iconos/Checkmark.png'></a>";
					}
				echo "</td></tr>";
				}
				?>		
				</table>
				<br/><a href='insertar.php'><img src='images/iconos/add.png'></a><br/>
			</center>
		</div>
<br/>
		<div class="footer">
		</div>

	</body>


</HTML>