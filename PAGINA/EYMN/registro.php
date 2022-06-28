<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>consulta db</title>
    <style type="text/css">
     
      table {
        border: solid 2px #7e7c7c;
        border-collapse: collapse;
                     
      }
     
      th, h1 {
        background-color: #edf797;
      }

      td,
      th {
        border: solid 1px #7e7c7c;
        padding: 2px;
        text-align: center;
      }


    </style>
</head>
<body>
    
</body>
</html>


<?php
$conn = mysqli_connect('localhost', 'root', '', 'eymn');


//hacemos llamado al imput de formuario
$Nombre_Real = $_POST["Nombre_Real"] ;
$Edad = $_POST["Edad"] ;
$Correo_Electronico = $_POST["correo_electrónico"] ;
$Telefono = $_POST["Telefono"] ;
$Nombre_Usuario = $_POST["Nombre_Usuario"] ;
$Direccion = $_POST["Direccion"] ;
$Clave = $_POST["Clave"] ;

//verificamos la conexion a base datos
if(!$conn) 
        {
            echo "No se ha podido conectar con el servidor" . mysql_error();
        }
  else
        {
            echo "<b><h3>Hemos conectado al servidor</h3></b>" ;
        }
        //indicamos el nombre de la base datos
        $datab = "eymn";
        //indicamos selecionar ala base datos
        $db = mysqli_select_db($conn,$datab);

        if (!$db)
        {
        echo "No se ha podido encontrar la Tabla";
        }
        else
        {
        echo "<h3>Tabla seleccionada:</h3>" ;
        }
        //insertamos datos de registro al mysql xamp, indicando nombre de la tabla y sus atributos
        $instruccion_SQL = "INSERT INTO persona (Nombre_Real, Edad, correo_electrónico, Telefono, Nombre_Usuario, Direccion, Clave)
                             VALUES ('$Nombre_Real','$Edad','$Correo_Electronico', '$Telefono', '$Nombre_Usuario', '$Direccion', '$Clave')";
                           
                            
        $resultado = mysqli_query($conn,$instruccion_SQL);

        //$consulta = "SELECT * FROM tabla where id ='2'"; si queremos que nos muestre solo un registro en especifivo de ID
        $consulta = "SELECT * FROM persona";
        
$result = mysqli_query($conn,$consulta);
if(!$result) 
{
    echo "No se ha podido realizar la consulta";
}
echo "<table>";
echo "<tr>";
echo "<th><h1>ID_P</th></h1>";
echo "<th><h1>Nombre_Real</th></h1>";
echo "<th><h1>Edad</th></h1>";
echo "<th><h1>Telefono</th></h1>";
echo "<th><h1>Nombre_Usuario</th></h1>";
echo "<th><h1>Direccion</th></h1>";
echo "<th><h1>Clave</th></h1>";
echo "</tr>";

while ($colum = mysqli_fetch_array($result))
 {
    echo "<tr>";
    echo "<td><h2>" . $colum['ID_P']. "</td></h2>";
    echo "<td><h2>" . $colum['Nombre_Real']. "</td></h2>";
    echo "<td><h2>" . $colum['Edad'] . "</td></h2>";
    echo "<td><h2>" . $colum['ID_Rv'] . "</td></h2>";
    echo "<td><h2>" . $colum['ID_Rp'] . "</td></h2>";
    echo "<td><h2>" . $colum['ID_Rc'] . "</td></h2>";
    echo "<td><h2>" . $colum['Telefono'] . "</td></h2>";
    echo "<td><h2>" . $colum['Nombre_Usuario'] . "</td></h2>";
    echo "<td><h2>" . $colum['Direccion'] . "</td></h2>";
    echo "<td><h2>" . $colum['Clave'] . "</td></h2>";
    echo "</tr>";
}
echo "</table>";

mysqli_close( $conn );

   //echo "Fuera " ;
   echo'<a href="INDEX.HTML"> Volver Atrás</a>';


?>