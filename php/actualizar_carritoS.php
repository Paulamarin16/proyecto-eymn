<?php 

require 'Conexion.php';
require 'config.php';

if(isset($_POST['action'])){

    $action = $_POST['action'];
    $ID_S = isset($_POST['ID_S']) ? $_POST['ID_S'] : 0;

    if($action == 'agregar') {
        $cantidad = isset($_POST['cantidad']) ? $_POST['cantidad'] : 0;
        $respuesta = agregar($ID_S, $cantidad);
        if($respuesta >0){
            $datos['ok'] = true;
        } else {
            $datos['ok'] = false;
        }
        $datos['sub'] = MONEDA . number_format($respuesta, 2, '.', ',');
    } else if($action == 'eliminar'){
        $datos['ok'] = eliminar($ID_S);
    } else {
        $datos['ok'] = false;
    }
} else {
    $datos['ok'] = false;
}

echo json_encode($datos);

function agregar($ID_S, $cantidad){

    $res = 0;
    if($ID_S > 0 && $cantidad > 0 && is_numeric(($cantidad))){
        if(isset($_SESSION['carrito']['productos'][$ID_S])){
            $_SESSION['carrito']['productos'][$ID_S] = $cantidad;

            $db = new Database();
            $con = $db->conectar();

            $sql = $con->prepare("SELECT  Precio, Descuento, Descripcion, Imagen FROM servicios WHERE ID_S=? AND activo=1
            LIMIT 1");
            $sql->execute([$ID_S]);
            $row = $sql->fetch(PDO::FETCH_ASSOC);
            $precio = $row['Precio'];
            $descuento = $row['Descuento'];
            $precio_desc = $precio - (($precio * $descuento) / 100);
            $res = $cantidad * $precio_desc;

            return $res;
        }
    } else {
        return $res;
    }
}

function eliminar($ID_S)
{
    if($ID_S > 0){
        if(isset($_SESSION['carrito']['productos'][$ID_S])) {
            unset($_SESSION['carrito']['productos'][$ID_S]);
            return true;
        }
    } else {
        return false;
    }
}