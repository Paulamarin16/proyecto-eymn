-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 03:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eymn`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargo`
--

CREATE TABLE `cargo` (
  `ID_Cargo` int(11) NOT NULL,
  `Descripción` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cargo`
--

INSERT INTO `cargo` (`ID_Cargo`, `Descripción`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(1, 'Celulares'),
(2, 'Moda'),
(3, 'Electrodomesticos'),
(4, 'Hogar'),
(5, 'Electronicos'),
(6, 'Accesarios'),
(7, 'Juguetes'),
(8, 'Muebles'),
(9, 'Flores'),
(10, 'Informatica'),
(11, 'Plomeria'),
(12, 'Arquitectura'),
(13, 'Mecanica');

-- --------------------------------------------------------

--
-- Table structure for table `compra`
--

CREATE TABLE `compra` (
  `ID_Compra` int(11) NOT NULL,
  `ID_F` int(11) DEFAULT NULL,
  `ID_Transaccion` varchar(20) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ID_Cliente` varchar(20) NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compra`
--

INSERT INTO `compra` (`ID_Compra`, `ID_F`, `ID_Transaccion`, `Fecha`, `Status`, `Email`, `ID_Cliente`, `Total`) VALUES
(1, NULL, '6GS860985P2479603', '2022-09-06 04:35:35', 'COMPLETED', 'sb-j7t9a19990089@personal.example.com', '5RRLNUG938EA2', '129000.00'),
(2, NULL, '4DR990180J882535P', '2022-09-06 04:36:19', 'COMPLETED', 'sb-j7t9a19990089@personal.example.com', '5RRLNUG938EA2', '576000.00'),
(3, NULL, '5UR92929XA546035T', '2022-09-06 04:51:49', 'COMPLETED', 'sb-j7t9a19990089@personal.example.com', '5RRLNUG938EA2', '576000.00'),
(4, NULL, '1B146299PC942661W', '2022-09-06 04:56:05', 'COMPLETED', 'sb-j7t9a19990089@personal.example.com', '5RRLNUG938EA2', '403000.00'),
(5, NULL, '41E99877LC6558151', '2022-09-06 04:58:38', 'COMPLETED', 'sb-j7t9a19990089@personal.example.com', '5RRLNUG938EA2', '403000.00'),
(6, NULL, '4LE91872SC4559379', '2022-09-27 00:00:00', 'COMPLETED', 'sb-j7t9a19990089@personal.example.com', '5RRLNUG938EA2', '100000.00');

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `ID_F` int(11) NOT NULL,
  `ID_Venta` varchar(20) NOT NULL,
  `ID_P` int(11) DEFAULT NULL,
  `ID_Pr` int(11) NOT NULL,
  `ID_S` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `ID_P` int(11) NOT NULL,
  `Nombre_Real` varchar(100) NOT NULL,
  `Edad` date NOT NULL,
  `Correo_electrónico` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Nombre_Usuario` varchar(100) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Clave` varchar(100) NOT NULL,
  `ID_Cargo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`ID_P`, `Nombre_Real`, `Edad`, `Correo_electrónico`, `Telefono`, `Nombre_Usuario`, `Direccion`, `Clave`, `ID_Cargo`) VALUES
(1, 'Administrador EYMN', '2004-01-01', 'admineymn@eymn.com', '300 1234567', 'ADMINEYMN', 'Cra 100 # 76B SUR', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 1),
(5, 'Luis Miguel Gómez Viloria', '2004-04-21', 'lokus@eymn.com', '301 5088537', 'LokusAdmin', 'Cra 100#50 B 45 SUR', '39a688c46126918b13d9aa3c6d776530', 1),
(6, 'Santiago Castiblanco Gallego', '2004-07-15', 'Fenixvalo@gmail.com', '321 9401931', 'Lord Fenix', 'Cra 100#50 B 45 SUR', 'fabb23a34b6618d823b5bee1dc22a19b', 2),
(7, 'Kevin David Beltran Florez', '2004-07-11', 'KevinBel@gmail.com', '301 6394788', 'KEVIIIN', 'Cra 96 #40B35 Sur', '2d6af593ed5d1bd01249c0d2afe01cb3', 2),
(8, 'Miguel Angel Rivera Florez', '2004-04-22', 'miguelariveraf@gmail.com', '320 3455399', 'Miguel Rivera', 'Cra 58#36B Sur', '031c9ebada12656c9b36059ab395635a', 2),
(16, 'Heyder Gomez Viloria', '1996-03-23', 'gomezheyder@gmail.com', '310 2638034', 'Xtractor-Souls', 'Cra 100#50B45Sur', '45f25cb0b93a55fc143ec667ef760d45', 2),
(17, 'Daniel Felipe Loaiza', '2000-01-01', 'danielfl@gmail.com', '301 1234567', 'DanielFLoai', 'Cra 95#40B Sur', 'c238542b5811806fc1702fdc9cbf0965', 2),
(18, 'Juan David Gómez Viloria', '1996-09-04', 'juandavid@gmail.com', '320 9895858', 'GulDan', 'Cra100#50B45Sur', '1caf163d2d1e70758652f79bc35fe3cf', 2),
(19, 'Alfonso Lopez', '2000-01-01', 'alfonsoL@gmail.com', '324 566721', 'Alfonzin777', 'Cra58 sur#6603', '9a2709f7b7c9ea76d48c870cf393cc54', 2),
(20, 'Felipe Guzman', '1999-01-01', 'felipeguz@gmail.com', '301123456', 'FelipeG', 'Craa 54 sur #74B ', 'a05f43ec0207a949ceaa054023713ed6', 2);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `ID_Pr` int(11) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Marca` varchar(100) DEFAULT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Descuento` int(11) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(100) NOT NULL,
  `activo` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`ID_Pr`, `Tipo`, `Nombre`, `Marca`, `Precio`, `Descuento`, `Descripcion`, `Imagen`, `activo`, `id_categoria`) VALUES
(1, 'Ropa', 'Camiseta Negra', 'Cotton & ico', '43000.00', 10, 'Camiseta negra. Sin estampado, con un estilo sencillo y comodo', 'Camiseta Negra', 1, 2),
(2, 'Ropa', 'Chaqueta Jean Azul', 'Cotton & ico', '53000.00', 0, 'Chaqueta de Jean azul con un estilo sencillo', 'Chaqueta Jean Azul', 1, 2),
(3, 'Ropa', 'Sueter Negro', 'Cotton & ico', '80000.00', 20, 'Sueter Negro con un estilo sencillo con un gran diseño.', 'Sueter Negro', 1, 2),
(4, 'Ropa', 'Gaban Negro', 'Cotton & ico', '100000.00', 0, 'Gaban negro con un estilo sencillo y con un gran diseño comodo.', 'Gaban Negro', 1, 2),
(5, 'Ropa', 'Enterizo Rojo', 'Cotton & ico', '120000.00', 0, 'Enterizo rojo con un estilo sencillo y con un gran acabado', 'Enterizo Rojo', 1, 2),
(6, 'Ropa', 'Falda Negra', 'Cotton & ico', '90000.00', 50, 'Falda Negra con un estilo sencillo, perfecto para toda chica', 'Falda Negra', 1, 2),
(13, 'Celular', 'Motorola G60', 'Motorola', '1700000.00', 54, 'Smartphone Motorola Moto G60: Procesador Snapdragon 732G (hasta 2.30 GHz), Memoria RAM de 6GB, Almacenamiento de 128GB, Pantalla LED Multi Touch de 6.8\" FHD+, Bluetooth, Wi-Fi, Dual SIM, Cámara Principal de 108MP, Android 11. Color Plata.\r\n<b>Procesador: Snapdragon 732G (hasta 2.30 G...\r\n<b>Tipo de Panel: LED Multi touch FHD+\r\n<b>Lector de Memorias: MicroSD (hasta 512GB)\r\n<b>Audio: Audio de alta definición', 'Motorola G60', 1, 1),
(14, 'Celular', 'Samsung A20', 'Samsung', '1000000.00', 0, '<b>Características del Samsung Galaxy A20SProcesador : Qualcomm Snapdragon 450.</n>Memoria RAM: 3 GB.</n>Almacenamiento. Interno: 32 GB.</n>Gráfica: Adreno 506.</n>Pantalla. Tamaño: 6.5 pulgadas Infinity-V.</n>Cámara trasera. Resolución: 13 + 8 + 5 Mpx.</n> Cámara delantera.</n>Conectividad: 4G/LTE, Bluetooth 4.2, WiFi, jack de 3,5 mm </n>', 'Samsung A20', 1, 1),
(15, 'Celular', 'Huawei Y9 prime', 'Huawei', '1250000.00', 0, 'El Y9 Prime es el más reciente modelo de Huawei en Colombia, su cámara Pop Up y su precio accesible lo consolidan como uno de los mejores smartphones de gama media del mercado.', 'Huawei Y9 prime', 1, 1),
(16, 'Celular', 'Vivo Y33s', 'Vivo', '1100000.00', 0, 'El Vivo Y33s te ofrece un mayor rendimiento y más capacidad de almacenamiento. Su cámara principal de 50MP te permitirá inmortalizar tus mejores momentos', 'Vivo Y33s', 1, 1),
(17, 'Celular', 'Oppo A16', 'Oppo', '600000.00', 0, 'El nuevo OPPO A16 es increíble con un diseño elegante en 3D solo hay una forma de describirlo: brillante metálico y genial. ', 'Oppo A16', 1, 1),
(18, 'Electronico', 'RTX 4090', 'Zotec', '10000000.00', 0, 'NVIDIA® GeForce RTX® 4090 es la GPU GeForce definitiva. Brinda un gran salto en rendimiento, eficiencia y gráficos impulsados ​​​​por IA. Experimenta juegos de rendimiento ultra alto, mundos virtuales increíblemente detallados, productividad sin precedentes y nuevas formas de crear. Está impulsada por la arquitectura NVIDIA Ada Lovelace y viene con 24 GB de memoria G6X para brindar la mejor experiencia para jugadores y creadores.', 'RTX 4090', 1, 5),
(19, 'Electronico', 'Acer Nitro 5', 'Acer ', '3000000.00', 0, 'Con RTX, listo para jugar: La GeForce RTX 3050 (4 GB dedicados GDDR6 VRAM) de NVIDIA es alimentada por una arquitectura galardonada con nuevos núcleos para trazado de rayos, núcleos Tensor y multi-procesadores de transmisión compatibles con DirectX 12 Ultimate para el máximo rendimiento de los videojuegos', 'Acer Nitro 5', 1, 5),
(20, 'Electronico', 'Logitech G733', 'Logitech', '866900.00', 0, 'Por fin unos audífonos que pueden ser tan expresivos como tú, los Audífonos Gaming LOGITECH G733 RGB Blancos para PC y Consola.| Audífonos Inalámbricos que se diseñaron pensando en el confort. Están equipados con todo el sonido envolvente, los filtros de voz y la iluminación avanzada que necesitas para lucir, sonar y jugar con más estilo que nunca. ¡Vive una mejor experiencia gaming, lleva el tuyo ahora!', 'Logitech G733', 1, 5),
(21, 'Hogar', 'Maceta rustica ceramica', 'Casa ideas Colombia', '26400.00', 0, 'Macetas de plantas de terracota de alta calidad con textura suave.\r\n-¡Estas macetas tienen agujeros para el drenaje.\r\n-Perfecto para hierbas, plantas verdes, flores, suculentas, etc.\r\n-Utilizado para proyectos escolares, enseñar a los niños cómo cultivar plantas.\r\n-Ideal para bodas, baby shower, fiesta de cumpleaños, banquete, jardín de casa.', 'Maceta rustica ceramica', 1, 4),
(22, 'Hogar', 'Florero Jarrón Decorativo Minimalista Nórdico Moderno Bajo', 'Corona', '50000.00', 0, '20cm alto, 14cm ancho\r\nFlorero de plástico estilo cerámica,\r\nTipo nórdico minimalista moderno para decoración de casas,\r\nbase para flores imitación de porcelana, maceta o cesta decorativa\r\nLa mejor opción para tu hogar', 'Florero Jarrón Decorativo Minimalista Nórdico Moderno Bajo', 1, 4),
(23, 'Hogar', 'Kit de cocina', 'Imusa', '160000.00', 0, 'Productos Originales directamente desde Imusa\r\n\r\nSu antiadherente Triforce es 3 veces más resistente comparado con otros antiadherentes de nuestra marca.\r\nCon termo señal que indica el momento perfecto para comenzar la preparación de tus alimentos.\r\nBase difusora para una distribución homogénea del calor.\r\nMango ergonómico para un mejor agarre.\r\nTapa de vidrio con válvula de salida de vapor que cubre de salpicaduras y permite visualizar cómo van tus preparaciones.', 'Kit de cocina', 1, 4),
(24, 'Electrodomestico', 'lavadora carga superior', 'Samsung', '164000.00', 0, 'Disfrute de una eficiencia superior, menos ruido y un rendimiento duradero. La tecnología Digital Inverter utiliza potentes imanes para un rendimiento más silencioso* y eficaz. Además, utiliza menos energía que un motor convencional y ofrece la durabilidad más larga de la industria** y una garantía de 20 años**.', 'lavadora carga superior', 1, 3),
(25, 'Electrodomestico', 'Nevecón Instaview', 'LG', '9125900.00', 0, 'Nevera inteligente de la marca LG', 'Nevecón Instaview', 1, 3),
(26, 'Electrodomestico', 'Congelador horizontal', 'CHALLENGER', '2400000.00', 0, 'Este congelador horizontal de Challenger cuenta con ruedas en la parte inferior|, los cuales facilitan su desplazamiento a todas partes. Viene también con doble chapa de seguridad y un empaque magnético removible que facilita su limpieza en la parte interior, además tiene capacidad de 535 litros. Adquiérelo ya', 'Congelador horizontal', 1, 3),
(27, 'Accesorios', 'anillos', 'Anillos de marineros de acero vikingo', '76109.00', 0, 'Articuo hecho a mano \r\nMateriales:Acero,Acero inoxidable\r\nanillos detallados que son geniales para añadir a cualquier atuendo\r\n✔️¡Este Anillo no se desvanecerá empañando ni perderá color! ¡El material principal es de acero inoxidable!\r\n✔️Este anillo es la adición perfecta a tu atuendo. Capa con otros accesorios o desgaste solo.\r\n✔️DISPONIBLE EN PLATA Y ORO. Una opción de regalo perfecta para todos.\r\n✔️ GARANTÍALIFETIME!\r\n✔️ ropa esta pieza con una camiseta lisa para que se destaque, o use con un suéter y uno de nuestros collares más pequeños\r\n\r\n▪️SIZES DISPONIBLES: - XS, S, M, L, XL\r\n\r\n\r\n', 'anillos', 1, 6),
(28, 'Accesorios', 'gorra', 'Gorra Snapback', '91341.00', 0, 'Estilo old school no sólo para raperos. Esta gorra de béisbol en estilo retro tan actual perfecciona tanto el desenfadado estilo de pantalones caídos como el look deportivo urbano.\r\n- Visera y frente planas\r\n- Cierre ajustable en la nuca\r\n- Parte inferior de la visera en verde\r\n- Material: 100% poliéster', 'gorra', 1, 6),
(29, 'Accesorios', 'cadena hombre', 'silver gem\r\n', '87300.00', 0, 'Nuevo modelo de cadena cubana para hombre con microzircones Medidas largo 50 centímetros ancho 1,1 centímetros ,contáctenos para más información hacemos envíos a nivel nacional', 'cadena hombre', 1, 6),
(30, 'Accesorios', 'reloj gris', 'Curren 8351', '546990.00', 0, 'El reloj de pulsera con cronógrafo de lujo para hombre Curren 8351 es un elegante reloj perfecto para hombres de todas las edades, desde jóvenes hasta mayores. Cuenta con una banda de acero inoxidable y resistencia al agua hasta 30 ATM, por lo que puede usarlo para la mayoría de las actividades diarias. También viene con una pantalla de fecha y movimiento de cuarzo.\r\n\r\nYa sea que esté buscando un reloj atractivo que siga funcionando sin problemas en las buenas o en las malas, o uno que lo ayude a realizar un seguimiento de su agenda mientras se mantiene al día con su estilo de vida, el reloj de pulsera con cronógrafo de lujo para hombres Curren 8351 tiene todo lo que necesita. para mantenerse organizado y a tiempo!', 'reloj gris', 1, 6),
(31, 'Accesorios', 'reloj negro', 'waknoer', '106671.00', 0, '•	Nombre de la marca: waknoer\r\n•	Tipo de material de la correa: STAINLESS STEEL\r\n•	Longitud de banda: 23cm\r\n•	Estilo: simple\r\n•	Tipo de cierre: Hebilla\r\n•	Origen: CN(Origen)\r\n•	Movimiento: QUARTZ\r\n•	Profundidad de resistencia al agua: No resistente al agua\r\n•	Material de la caja: ALLOY\r\n•	Grosor de la caja: 8mm\r\n•	Material de cajas y estuches: sin paquete\r\n•	Número de modelo: men watch 1635\r\n•	Ancho de banda: 20mm\r\n•	Característica: Ninguno\r\n•	Diámetro del dial: 40mm\r\n•	Certificación: NONE\r\n•	Forma de la caja: ROUND\r\n•	Tipo de material de la cubierta del dial: Vidrio\r\n•	Tipo de artículo: Relojes de pulsera de cuarzo\r\n', 'reloj negro', 1, 6),
(32, 'Juguetes', 'carro', 'Welly', '118000.00', 0, '- Producto: Coche de Juguete Welly, Volver al Futuro 3, DMC Delorean\n- Marca: Welly\n- Modelo: 22444\n\n\n\n¡DMC DeLorean de regreso al futuro!\n\nMaterial: metal\n\nEscala: 1:24\n\n* CARACTERÍSTICAS:\n- item_condition: New\n\n* CONTENIDO DEL PAQUETE:\n\n1 x Coche de Juguete Welly, Volver al Futuro 3, DMC Delorean', 'carro', 1, 7),
(33, 'Juguetes', 'Paw Patrol Spy Chase', 'Spin Master\r\n', '140000.00', 0, 'De la colección más vendida de Paw Patrol ® nos llega una de las figuras más exclusivas de la línea \"Racers\", la misma serie que nos ha dado a todos los personajes sobre ruedas en un solo cuerpo de plástico y que nos permite lanzarlos a gran velocidad; simulando esa salida explosiva justo cuando van a rescatar a alguien en apuros.\r\n\r\nEsta vez tenemos a Chase, nuestro perro policía que se subió a su nuevo camión blindado para una entretenida misión de espionaje vestido como un tecnológico y tierno espía. Ahora está más camuflado que nunca con su casco de aventurero y está listo para rescatar a todo Bahía Ventura de los misterios de la naturaleza.\r\n\r\nNo dudes más en llevarte esta pieza que le falta a tu colección, pues sabemos que por mucho tiempo has buscado a este canino escurridizo y no lo puedes dejar escapar en estos momentos que finalmente lo hemos encontrado para ti. Si lo compras hoy te llegará mañana mismo con envío gratuito a cualquier parte del país.', 'azul', 1, 7),
(34, 'Juguetes', 'Racing Story Rayo Mcqueen', 'huis', '226288.00', 0, '***especificación***\r\nTamaño del embalaje: 35,5 * 25 * 5,5 cm\r\nPeso del paquete: 450 g\r\n\r\n\r\n***característica***\r\nJuego de 7 piezas de Disney Pixar, camión Lightning Storm McQueen Jackson Uncle Mike 1:64, metal fundido a presión, modelo de coche, modelo para niños\r\n, Regalos de Navidad. + Metal\r\n\r\n\r\n\r\n***lista de empaque***\r\n1 * Camión de movilización universal Camión contenedor de aleación Uncle Mai\r\n6 coches', 'rayo', 1, 7),
(35, 'Muebles', 'Sala Puff Sofa', 'BINY MARTIN\r\n', '399900.00', 0, '- Textil: microfiber Poliester\r\nTecnologia: AcuaFobia - repele los liquidos\r\n- Costura Double Stitch: Permite el uso duro y continuo por años.\r\n- Relleno Poliestireno de Alta Densidad, unico con trazabilidad Industrial (garantia de calidad).\r\n- Sistema Registrado FlixPlop: Garantiza la estabilidad del puff y la adaptabilidad al cuerpo.\r\n- Cremalleras de 1ra calidad y HideZipper para mantener el relleno seguro y a prueba de los mas curiosos.\r\n\r\nMEDIDAS\r\n- Sofá: 80 cm de altura x 120 cm de largo x 70 cm de profundidad\r\n- Silla Venecia: 70 cm de altura x 70 cm de largo x 70 cm de profundidad\r\n\r\nNota: Los puff son muebles alternativos, rellenos de poliestireno, por lo cual son ligeros y facilies de manipular. El relleno se compacta con el uso, por ello, tienen cremallera, para que puedas recargarlos cuantas veces sea necesario.\r\n*Garantia exlcusivamente en textiles y costuras.', 'gris', 1, 8),
(36, 'Muebles', 'Escritorio Inval ES11903', 'Inval', '161900.00', 0, 'Ya sea para estudiar o trabajar, este escritorio Inval te ayudará a crear un ambiente confortable y sumar orden y funcionalidad a tus horas productivas. Su superficie no sólo te servirá de apoyo, sino que te permitirá tener los recursos al alcance de la mano para facilitar tus tareas.', 'mesa', 1, 8),
(37, 'Muebles', 'Protector Sofa, Forro, Mueble, Doble Faz 3 Puestos', 'Dini decoración infantil', '72709.00', 0, 'Altura x Ancho: 175 cm x 160 cm\r\nTipo de producto: Protector forro sofa\r\nTipo de sillón: Sofá de 3 puestos\r\nMateriales: microfibra doble faz\r\nComposición: 100% poliéster\r\nEs elastizada: No\r\nEs reversible: Sí\r\nEs a prueba de agua: No\r\nCon sistema de ajuste: Sí\r\nEs apta para animales: Sí\r\nEs apta para lavarropas: Sí\r\nCantidad de fundas: 1', 'sofa', 1, 8),
(39, 'Flor', 'Macetas decorativas de animales', 'Artesanal', '25000.00', 0, 'Macetas llamativas para decorar el hogar', 'Macetas decorativas de animales', 1, 9),
(40, 'Flor', 'Maceta de elefante y fruta', 'Artesanal', '15000.00', 0, 'Macetas para decorar el hogar', 'Maceta de elefante y fruta', 1, 9),
(41, 'Flor', 'Macetas para el hogar', 'Artesanal', '20000.00', 0, 'Macetas lindas y llamativas para decorar el hogar', 'Macetas para el hogar', 1, 9),
(42, 'Electronico', 'Televisor LG 4K', 'LG', '3500000.00', 0, 'Televisor listo para ver el mundial en 4k full HD smartTV', 'Televisor LG 4K', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `ID_S` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Descuento` int(11) NOT NULL,
  `Tipo` varchar(300) NOT NULL,
  `Imagen` varchar(100) NOT NULL,
  `activo` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicios`
--

INSERT INTO `servicios` (`ID_S`, `Nombre`, `Precio`, `Descuento`, `Tipo`, `Imagen`, `activo`, `id_categoria`) VALUES
(1, 'Curso de C++', '30000.00', 0, 'Curso básico sobre el lenguaje de programación C++ con una duración de 10 días, donde se aplicaran todos los conocimientos básicos', 'Curso de C', 1, 10),
(2, 'Programador web', '100000.00', 0, 'Servicio para adquirir a un programador experimientado para realizar una página web con las caracteristicas que desee el cliente.', 'Programador web', 1, 10),
(3, 'Arreglo de hogar', '30000.00', 0, 'Servicio de plomeria para arreglar las tuberias de su hogar', 'Arreglo de hogar', 1, 11),
(4, 'Diseñador de terrenos', '120000.00', 0, 'Servicio para modelar la arquitectura de un terreno para realizar una edificación', 'Diseñador de terrenos', 1, 12),
(5, 'Calibracion de llantas', '2000.00', 0, 'Servicio mécanico para la calibración de llantas.', 'Calibracion de llantas', 1, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`ID_Cargo`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`ID_Compra`),
  ADD UNIQUE KEY `ID_F` (`ID_F`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_F`),
  ADD UNIQUE KEY `ID_S` (`ID_S`),
  ADD UNIQUE KEY `ID_P` (`ID_P`),
  ADD KEY `ID_Pr` (`ID_Pr`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID_P`),
  ADD KEY `ID_Cargo` (`ID_Cargo`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Pr`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`ID_S`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `ID_Cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `ID_Compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_F` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `ID_P` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Pr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `servicios`
--
ALTER TABLE `servicios`
  MODIFY `ID_S` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`ID_F`) REFERENCES `factura` (`ID_F`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_Pr`) REFERENCES `productos` (`ID_Pr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`ID_S`) REFERENCES `servicios` (`ID_S`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`ID_P`) REFERENCES `persona` (`ID_P`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`ID_Cargo`) REFERENCES `cargo` (`ID_Cargo`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Constraints for table `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
