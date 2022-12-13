<?php 

if (!empty($_POST["btnregistrar"])) {
    if (!empty($_POST["tipo"]) and !empty($_POST["producto"]) and !empty($_POST["marca"]) and !empty($_POST["precio"]) and !empty($_POST["descuento"]) and !empty($_POST["descripcion"]) and !empty($_POST["imagen"]) and !empty($_POST["estado"])) {
        $ID_Pr = $_POST["ID_Pr"];
        $tipo=$_POST["tipo"];
        $nombre=$_POST["producto"];
        $marca=$_POST["marca"];
        $precio=$_POST["precio"];
        $descuento=$_POST["descuento"];
        $descripcion=$_POST["descripcion"];
        $imagen=$_POST["imagen"];
        $activo=$_POST["estado"];
        $id_categoria=$_POST["categoria"];
        $sql=$conexion->query("update productos set Tipo='$tipo', Nombre='$nombre', Marca='$marca', Precio='$precio', Descuento='$descuento', Descripcion='$descripcion', Imagen='$imagen', activo='$activo', id_categoria='$id_categoria' where ID_Pr=$ID_Pr");
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
            header("location:crud_productos.php");
        } else {
            echo "<div class='alert alert-danger'>Error al modificar</div>";
        }
    }else{
        echo "<div class='alert alert-warning'>Campos Vacíos</div>";
    }
}

?>