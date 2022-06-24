<?php  
$email=$_POST['Email'];

$conn = mysqli_connect('localhost', 'root', '', 'eymn');

$consulta="SELECT*FROM persona where Correo_electrónico='$email'";
$resultado=mysqli_query($conn,$consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
    $header= "Recupera tu contraseña en el siguiente enlace http://localhost:8080/PAGINA/clave.html";
        $mensajeCompleto = "\nAtentamente: El equipo de soporte de EYMN";

        $mail= @mail($destinatario, $mensajeCompleto, $header);
        echo "<script>alert('correo enviado exitosamente')</script>";
        echo"<script> setTimeout(\"location.href='INDEX.html'\",1000)</script>";
}else{
    ?>
    <?php
   echo "<script>alert('No se ha encontrado el correo electronico, verifiquelo nuevamente')</script>";
   include("Recuperar-contraseña.html");
}
mysqli_free_result($resultado);
mysqli_close($conn);