<?php


require 'config.php';

if(isset($_POST['ID_S'])) {

    $ID_S = $_POST['ID_S'];
    $token = $_POST['token'];

    $token_tmp = hash_hmac('sha1', $ID_S, KEY_TOKEN);

    if ($token == $token_tmp) {

        if(isset($_SESSION['carrito']['productos'][$ID_S])) {
            $_SESSION['carrito']['productos'][$ID_S] += 1;
        } else {
            $_SESSION['carrito']['productos'][$ID_S] = 1;
        }

        $datos['numero'] = count($_SESSION['carrito']['productos']);
        $datos['ok'] = true;

    } else {
        $datos['ok'] = false;
    }
} else {
    $datos['ok'] = false;
}

echo json_encode($datos);