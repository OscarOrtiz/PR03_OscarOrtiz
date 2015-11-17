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

      //como la sentencia SIEMPRE va a buscar todos los registros de la tabla producto, pongo en la variable $sql esa parte de la sentencia que SI o SI, va a contener
      $sql = "SELECT * FROM users ORDER BY idUser ASC";

      //mostramos la consulta para ver por pantalla si es lo que esperábamos o no
      //echo "$sql<br/>";

      //lanzamos la sentencia sql
      $datos = mysqli_query($con, $sql);
      ?>
    <form action="registrar-usuario.php" method="GET">
      Nombre:<br/>
      <input type="text" name="nomUser" size="20" maxlength="25"><br/>
      Password:<br/>
      <input type="password" name="password"><br/>
      </select><br/><br/>
      <input type="submit" value="Registrar">
    </form>
    <br/><br/>
    <a href="index.html">Volver</a>
  </body>
</html>