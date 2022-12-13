<?php 

if (!empty($_POST["btnregistrar"])) {
    if (!empty($_POST["tipo"]) and !empty($_POST["producto"]) and !empty($_POST["precio"]) and !empty($_POST["descuento"]) and !empty($_POST["imagen"]) and !empty($_POST["estado"])) {
        $ID_S = $_POST["ID_S"];
        $tipo=$_POST["tipo"];
        $nombre=$_POST["producto"];
        $precio=$_POST["precio"];
        $descuento=$_POST["descuento"];
        $imagen=$_POST["imagen"];
        $activo=$_POST["estado"];
        $id_categoria=$_POST["categoria"];
        $sql=$conexion->query("update servicios set Tipo='$tipo', Nombre='$nombre', Precio='$precio', Descuento='$descuento', Imagen='$imagen', activo='$activo', id_categoria='$id_categoria' where ID_S=$ID_S");
        $foto = $_FILES['imgs']['name'];

        if(isset($foto) && $foto != ""){ 
            $tipo = $_FILES['imgs']['type'];
            $temp = $_FILES['imgs']['tmp_name'];
    
            if( !((strpos($tipo, 'png') || strpos($tipo,'jpeg')))){
                echo  'solo se permite archivos png o jpeg';
            } else {
                move_uploaded_file($temp,'../img/'.$foto);
               } 
            }
        if($sql == 1) {
            header("location:crud_servicios.php");
        } else {
            echo "<div class='alert alert-danger'>Error al modificar</div>";
        }
    }else{
        echo "<div class='alert alert-warning'>Campos Vacíos</div>";
    }
}

?>