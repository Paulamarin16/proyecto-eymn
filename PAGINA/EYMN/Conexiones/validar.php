<?php  
$email=$_POST['Email'];
$contraseña= $_POST['Clave'];
session_start();
$_SESSION['Email']=$email;

$conn = mysqli_connect('localhost', 'root', '', 'eymn');

$consulta="SELECT*FROM persona where Correo_electrónico='$email' and Clave='$contraseña'";
$resultado=mysqli_query($conn,$consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
    header("location:TARJETA DE CREDITO.HTML");
}else{
    ?>
    <?php
    echo"<script> alert('Por favor verifique sus datos de inicio de sesion')</script>";
    include("INICIAR SESION.HTML");
}
mysqli_free_result($resultado);
mysqli_close($conn);