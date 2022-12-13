<?php

define("CLIENT_ID", "AU8CImo_9pXhpQ4-xOyFHUmTu8djgED5ixHXdrsTxh2zO8ThV44DIEiyVaOPcnZy0LphAeyOWJ9n08Vr");
define("CURRENCY", "MXN");
define("KEY_TOKEN", "ARP.wqc-354*");
define("MONEDA", "$");

session_start();

$num_cart = 0;

if (isset($_SESSION['carrito']['productos'])){
    $num_cart = count($_SESSION['carrito']['productos']);
}
?>