<?php

require 'Conexion.php';
require 'config.php';
$db = new Database();
$con = $db->conectar();


$sql = $con->prepare("SELECT ID_Pr, Nombre, Precio, Imagen FROM productos WHERE activo=1 LIMIT 1");
$sql->execute();
$resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcur icon" type="image/x-icon" href="../img/imgpag/LOGO SIN FONDO.png"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/0364addf50.js" crossorigin="anonymous"></script>
    <title>Página de inicio</title>
    <link rel="stylesheet" href="../estilos/estilos-pinicio.css">
    <link rel="stylesheet" href="../estilos/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
    rel="stylesheet" 
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
    crossorigin="anonymous">
</head>
<body>
    <header>
        <div class="collapse" id="navbarHeader">
          <div class="container">
            <div class="row">
              <div class="col-sm-8 col-md-7 py-4">
                <h4 class="text-black">Sobre Nosotros</h4>
                <p class="text-muted">EYMN es una plataforma de compra y venta de productos, actualmente contamos con la sección de moda, las demás estarán disponibles pronto al igual que la posibilidad de vender sus propios productos.</p>
              </div>
              <div class="col-sm-4 offset-md-1 py-4">
                <h4 class="text-black">Comience Ahora</h4>
                <ul class="list-unstyled">
                    <li><a href="../php/servicios.php" class="text-black">Servicios</a></li>
                  <li><a href="../html/REGISTRO.HTML" class="text-black">Registrarse</a></li>
                  <li><a href="../html/INICIAR SESION.html" class="text-black">Iniciar Sesión</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="navbar">
          <div class="container">
            <a href="../INDEX.HTML" class="navbar-brand">
              <h2 class="font">EYMN</h2>
            </a>
            <div class="buscar">
                <input type="text" placeholder="Buscar" required />
                <div class="btns">
                  <i class="fas fa-search icon"></i>
                </div>
              </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          </div>
        </div>
      </header>
        <div class="navegar2">
            <div class="btn_menu">
                <i class="fas fa-bars" id="btn_menu"></i>
            </div>
            <div class="back-menu" id="back-m"></div>
            <nav id="menu">
                <div class="logo-menu">
                <img src="../img/imgpag/LOGO SIN FONDO.png" alt="">
                </div>
                    <ul> 
                        <li> <a href="../php/celulares.php"><img src="../img/celulares.jpg"><p><br>Celulares</p></a> </li> 
                        <li> <a href="../php/moda.php"><img src="../img/ropa.jpg"><p><br>Moda</p></a> </li>
                        <li> <a href="../php/electronicos.php"><img src="../img/electrodomesticos.jpg"><p><br>Electronicos</p></a> </li>
                        <li> <a href="../php/hogar.php"><img src="../img/Hogar.jpg"><p><br>Hogar</p></a> </li>
                        <li> <a href="../php/electrodomesticos.php"><img src="../img/electro.jpg"><p><br>Electrodomesticos</p></a> </li>
                        <li> <a href="../php/accesorios.php"><img src="../img/accesorios.jpg"><p><br>Accesorios</p></a> </li>
                        <li> <a href="../php/juguetes.php"><img src="../img/juguetes.jpg"><p><br>Juguetes</p></a> </li>
                        <li> <a href="../php/muebles.php"><img src="../img/muebles.jpg"><p><br>Muebles</p></a> </li>
                        <li> <a href="../php/flores.php"><img src="../img/flores.jpg"><p><br>Flores</p></a> </li>
                    </ul>
            </nav>
        </div>
        <br>            
    <div class="separar"> 
    </div>
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="../img/Banner1.png"class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="../img/Banner2.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="../img/Banner3.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="../img/Banner4.png" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
        <div class="title-cards">
            <h2>Ofertas</h2>
        </div>

        <div class="sub">
            <H3><a href="#">Ver todas</a></H3>
        </div>

    <div class="container-card">
    <?php foreach ($resultado as $row) { ?>
        <div class="card">
            <figure>
                <img src="../img/Falda Negra.jpg">
            </figure>
            <div class="contenido-card">
                <h3>Falda Negra</h3>
                <p>Falda Negra con un estilo sencillo, perfecto para toda chica.</p>
                <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 6; ?>&token=<?php echo
                      hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN); ?>" class="btn btn-primary">Leer Màs</a>
            </div>
        </div>
        <div class="card">
            <figure>
                <img src="../img/Motorola G60.jpg">
            </figure>
            <div class="contenido-card">
                <h3>Motorola G60</h3>
                <p>Smartphone Motorola Moto G60: Procesador Snapdragon 732G, Memoria RAM de 6GB, Almacenamiento de 128GB, Android 11.</p>
                <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 13; ?>&token=<?php echo
                      hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN); ?>" class="btn btn-primary">Leer Màs</a>
            </div>
        </div>
        <div class="card">
            <figure>
                <img src="../img/Camiseta Negra.jpg">
            </figure>
            <div class="contenido-card">
                <h3>Camiseta Negra</h3>
                <p>Camiseta negra. Sin estampado, con un estilo sencillo y comodo</p>
                <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 1; ?>&token=<?php echo
                      hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN); ?>" class="btn btn-primary">Leer Màs</a>
            </div>
        </div>
                <div class="card">
                    <figure>
                        <img src="../img/Sueter Negro.jpg">
                    </figure>
                    <div class="contenido-card">
                        <h3>Sueter Negro</h3>
                        <p>Sueter Negro con un estilo sencillo con un gran diseño.</p>
                        <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 3; ?>&token=<?php echo
                      hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN); ?>" class="btn btn-primary">Leer Màs</a>
                    </div>
                </div>
                <?php } ?> 
    </div>
    <div class="Imgbanner">
    </div>
    <br>
       </div>
        <div class="title-cards">
            <h2>Descubre</h2>
        </div>

        <div class="sub2">
            <H3><a href="#">Ver todas</a></H3>
        </div>

    <div class="container-card">
        
        <div class="card">
            <figure>
                <img src="../img/diseñador.jpg">
            </figure>
            <div class="contenido-card">
                <h3>Diseño Gràfico</h3>
                <p>Podemos crear la identidad corporativa de tu empresa. Diseño , Maquetación de folletos, Catálogos, Papelería y mucho más.</p>
                <a href="#">Leer Màs</a>
            </div>
        </div>
        <div class="card">
            <figure>
                <img src="../img/gestionredes.jpg">
            </figure>
            <div class="contenido-card">
                <h3>Gestión de Redes</h3>
                <p>Nosotros creamos y optimizamos tus perfiles en las Redes Sociales. Importantes para que tu presencia online sea completa.</p>
                <a href="#">Leer Màs</a>
            </div>
        </div>
        <div class="card">
            <figure>
                <img src="../img/desarrollo.jpg">
            </figure>
            <div class="contenido-card">
                <h3>Desarrollo Web</h3>
                <p>Creamos tu página web utilizando las últimas tecnologías disponibles. Una Web adaptativa a tu móvil o Tablet y con un gestor de contenido fácil.</p>
                <a href="#">Leer Màs</a>
            </div>
        </div>
                <div class="card">
                    <figure>
                        <img src="../img/gastronomia.jpg">
                    </figure>
                    <div class="contenido-card">
                        <h3>Gastronamia</h3>
                        <p>Alimento es el área encargada de la preparación de los alimentos cumpliendo con estrictas normas sanitarias en la manipulación de los alimentos que labora en una cocina.</p>
                        <a href="#">Leer Màs</a>
                    </div>
                </div>
    </div>
        <div class="title-cards">
            <h2>Te puede interesar</h2>
        </div>

        <div class="sub3">
            <H3><a href="#">Ver más</a></H3>
        </div>
    <div class="slick-list" id="slick-list">
            <button class="slick-arrow slick-prev" id="button-prev" data-button="button-prev" onclick="app.processingButton(event)">
                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left" class="svg-inline--fa fa-chevron-left fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path fill="currentColor" d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z"></path></svg>
            </button>
            <div class="slick-track" id="track">
            <?php foreach ($resultado as $row) { ?>
                <div class="slick">
                    <div>
                        <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 2; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>">
                            <img src="../img/Chaqueta Jean Azul.jpg" alt="Image"></a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                            <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 28; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>">
                            <img src="../img/gorra.jpg" alt="Image"> </a>
                            </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                        <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 39; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/Macetas decorativas de animales.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 32; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/carro.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 30; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/reloj gris.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 31; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/reloj negro.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 29; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/cadena hombre.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 27; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/anillos.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 20; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/Logitech G733.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 18; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/rtx 4090.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 14; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/Samsung A20.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 19; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/Acer Nitro 5.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 15; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/Huawei Y9 prime.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 16; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/Vivo Y33s.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <div class="slick">
                    <div>
                    <picture>
                            <a href="detalles.php?ID_Pr=<?php echo $row['ID_Pr'] = 17; ?>&token=<?php echo
                            hash_hmac('sha1', $row['ID_Pr'], KEY_TOKEN);?>"> 
                            <img src="../img/Oppo A16.jpg" alt="Image"> </a>
                        </picture>
                    </div>
                </div>
                <?php } ?>
            </div>
            <button class="slick-arrow slick-next" id="button-next" data-button="button-next" onclick="app.processingButton(event)">
                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" class="svg-inline--fa fa-chevron-right fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"></path></svg>
            </button>
        </div>
        <script defer src="../js/main.js"></script>
         <div class="title-cards">
            <h2>Variedad de productos</h2>
        </div>
     <div class="Imgbanner2">
    </div>
    <br>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" 
    crossorigin="anonymous"></script> -->
    <script src="../js/menu-pginicio.js"></script>

    </body>
    <footer>
        <script>
            window.watsonAssistantChatOptions = {
              integrationID: "7798c782-9006-4c37-95cb-da1559dd734d", // The ID of this integration.
              region: "us-south", // The region your integration is hosted in.
              serviceInstanceID: "44ed0403-c97a-4a29-a199-96ab28845ee0", // The ID of your service instance.
              onLoad: function(instance) { instance.render(); }
            };
            setTimeout(function(){
              const t=document.createElement('script');
              t.src="https://web-chat.global.assistant.watson.appdomain.cloud/versions/" + (window.watsonAssistantChatOptions.clientVersion || 'latest') + "/WatsonAssistantChatEntry.js";
              document.head.appendChild(t);
            });
          </script>
    </footer>
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <h6>About</h6>
                    <p class="text-justify">EYMN.com <i>EVERYTHING YOU MAY NEED </i>es una plataforma de compra y venta de productos, actualmente contamos con la sección de moda, las demás estarán disponibles pronto al igual que la posibilidad de vender sus propios productos.</p>
                </div>
    
                <div class="col-xs-6 col-md-3">
                    <h6>CATEGORIAS</h6>
                    <ul class="footer-links">
                        <li><a href="../php/celulares.php">Celulares</a></li>
                        <li><a href="../php/moda.php">Moda</a></li>
                        <li><a href="../php/electronicos.php">Electronicos</a></li>
                        <li><a href="../php/electrodomesticos.php">Electrodomesticos</a></li>
                        <li><a href="../php/flores.php">Flores</a></li>
                        <li><a href="../php/hogar.php">Hogar</a></li>
                        <li><a href="../php/juguetes.php">Juguetes</a></li>
                        <li><a href="../php/muebles.php">Muebles</a></li>
                        <li><a href="../php/accesorios.php">Accesorios</a></li>
                    </ul>
                </div>
    
                <div class="col-xs-6 col-md-3">
                    <h6>Accesos rapidos</h6>
                    <ul class="footer-links">
                        <li><a href="../html/nosotros.html">Sobre Nosotros</a></li>
                        <li><a href="../html/Terminos-condiciones.html">Privacidad</a></li>
                    </ul>
                </div>
            </div>
            <hr>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-6 col-xs-12">
                    <p class="copyright-text">Copyright &copy; 2022 Derechos reservados a
                        <a href="../INDEX.HTML">EYMN</a>.
                    </p>
                </div>
    
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <ul class="social-icons">
                        <li><a class="facebook" href="https://www.facebook.com/EYMNPW/"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twitter" href="https://twitter.com/emayneed"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    </footer>
</html>
