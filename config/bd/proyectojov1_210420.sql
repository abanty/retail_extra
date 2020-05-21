-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2020 a las 09:34:39
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectojov1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio`
--

CREATE TABLE `accesorio` (
  `idaccesorio` int(11) NOT NULL,
  `nombre` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `nuevo` tinyint(4) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `rango_option` tinyint(4) NOT NULL COMMENT 'si o no',
  `rango` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `cantidad_min_option` tinyint(4) NOT NULL COMMENT 'si o no',
  `cantidad_min` int(11) DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `entrega` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistas` int(11) NOT NULL,
  `color` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `style` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` tinyint(4) NOT NULL COMMENT '0: desativado 1: activado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `accesorio`
--

INSERT INTO `accesorio` (`idaccesorio`, `nombre`, `nuevo`, `ruta`, `rango_option`, `rango`, `stock`, `cantidad_min_option`, `cantidad_min`, `descripcion`, `imagen`, `multimedia`, `entrega`, `ventas`, `vistas`, `color`, `style`, `fecha_create_update`, `estado`) VALUES
(1, 'sensor polo', 0, '', 0, 0, 0, 1, 120, 'sensor polo', '/files/accesorios/1587357523.jpg', '', 0, 0, 0, '', '', '2020-04-20 04:38:42', 1),
(2, 'sensor para zapatos', 0, '', 0, 0, 0, 1, 100, 'sensor para zapatos', '/files/accesorios/1587357562.jpg', '', 0, 0, 0, '', '', '2020-04-20 04:39:22', 1),
(3, 'Sensor zapatillas mod1', 0, '', 0, 0, 0, 1, 80, 'Sensor zapatillas mod1', '/files/accesorios/1587357596.jpg', '', 0, 0, 0, '', '', '2020-04-20 04:39:56', 1),
(4, 'Sensor extratech', 0, '', 0, 0, 0, 1, 60, 'Sensor extratech', '/files/accesorios/1587357617.jpg', '', 0, 0, 0, '', '', '2020-04-20 04:40:16', 1),
(5, 'antenas transmisora', 0, '', 0, 0, 0, 0, 0, 'antenas transmisora', '/files/accesorios/1587357675.png', '', 0, 0, 0, '', '', '2020-04-20 04:41:15', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio_producto`
--

CREATE TABLE `accesorio_producto` (
  `idaccesorio_producto` int(11) NOT NULL,
  `idaccesorio` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `uso_option` tinyint(20) NOT NULL,
  `fecha_insert_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `accesorio_producto`
--

INSERT INTO `accesorio_producto` (`idaccesorio_producto`, `idaccesorio`, `idproducto`, `uso_option`, `fecha_insert_update`) VALUES
(4, 4, 1, 1, '2020-04-20 04:40:17'),
(5, 5, 1, 1, '2020-04-20 04:41:15'),
(6, 3, 1, 0, '2020-04-21 01:10:42'),
(9, 1, 1, 1, '2020-04-21 01:30:03'),
(10, 2, 1, 0, '2020-04-21 02:44:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio_tipo_producto`
--

CREATE TABLE `accesorio_tipo_producto` (
  `idaccesorio_tipo_producto` int(11) NOT NULL,
  `idaccesorio` int(11) NOT NULL,
  `idtipo_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `accesorio_tipo_producto`
--

INSERT INTO `accesorio_tipo_producto` (`idaccesorio_tipo_producto`, `idaccesorio`, `idtipo_producto`) VALUES
(6, 4, 9),
(7, 3, 6),
(8, 3, 8),
(16, 1, 1),
(17, 1, 6),
(18, 1, 7),
(19, 2, 6),
(20, 2, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `idbanner` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `img` text NOT NULL,
  `titulo1` text NOT NULL,
  `titulo2` text NOT NULL,
  `titulo3` text NOT NULL,
  `estilo` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`idbanner`, `ruta`, `img`, `titulo1`, `titulo2`, `titulo3`, `estilo`, `fecha`) VALUES
(1, 'sin-categoria', 'public/imgfrontend/bannerx/default.jpg', '{\r\n  \"texto\":\"OFERTAS ESPECIALES\",\r\n  \"color\":\"#fff\"\r\n}', '{\r\n  \"texto\":\"50% off\",\r\n  \"color\":\"#fff\"\r\n}', '{\r\n  \"texto\":\"Termina el 30 de Abril\",\r\n  \"color\":\"#fff\"\r\n}', 'textoDer', '2020-04-09 22:24:03'),
(2, 'camaras', 'public/imgfrontend/bannerx/defaulta.jpg', '{\r\n  \"texto\":\"SOLUCIONES DE VIGILANCIA\",\r\n  \"color\":\"#fff\"\r\n}', '{\r\n  \"texto\":\"Resolution Max 4K\",\r\n  \"color\":\"#fff\"\r\n}', '{\r\n  \"texto\":\"Seguridad Retail\",\r\n  \"color\":\"#fff\"\r\n}', 'textoIzq', '2020-04-09 23:05:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `style` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `banner` text COLLATE utf8_spanish_ci NOT NULL,
  `galeria` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = activo 0 = inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `color`, `style`, `ruta`, `banner`, `galeria`, `estado`) VALUES
(3, 'Sensores', 'bg-black', 'rgb(17, 17, 17)', 'sensores', 'public/imgfrontend/bannertest/banner3.png', '[ {\"url1\":\"public/imgfrontend/galeriatest/galeria_3_1.png\",\"url2\":\"public/imgfrontend/galeriatest/galeria_3_2.png\",\"url3\":\"public/imgfrontend/galeriatest/galeria_3_3.png\",\"url4\":\"public/imgfrontend/galeriatest/galeria_3_4.png\"}\r\n]', 1),
(4, 'Antenas', 'bg-yellow', 'rgb(243, 156, 18)', 'antenas', 'public/imgfrontend/bannertest/banner4.png', '[ {\"url1\":\"public/imgfrontend/galeriatest/galeria_4_1.png\",\"url2\":\"public/imgfrontend/galeriatest/galeria_4_2.png\",\"url3\":\"public/imgfrontend/galeriatest/galeria_4_3.png\",\"url4\":\"public/imgfrontend/galeriatest/galeria_4_4.png\"}\r\n]', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Dashboard'),
(2, 'Pedidos'),
(3, 'Productos'),
(4, 'Accesos'),
(5, 'Reportes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `idplantilla` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorDominante` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `logocart` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`idplantilla`, `barraSuperior`, `textoSuperior`, `colorDominante`, `logo`, `logocart`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#ff6600', '#fff', '#1976D2', 'public/imgfrontend/logo.png', 'public/imgfrontend/cart.png', 'public/imgfrontend/favicon.png', '[\r\n{\"red\":\"fa-facebook\",\"estilo\":\"facebookBlanco\",\"url\":\"http://facebook.com/\"},\r\n{\"red\":\"fa-twitter\",\"estilo\":\"twitterBlanco\",\"url\":\"http://twitter.com/\"},\r\n{\"red\":\"fa-instagram fa-1x\",\"estilo\":\"instagramBlanco\",\"url\":\"http://instagram.com/\"},\r\n{\"red\":\"fa-google-plus-g\",\"estilo\":\"googleBlanco\",\"url\":\"http://google.com/\"},\r\n{\"red\":\"fa-youtube\",\"estilo\":\"youtubeBlanco\",\"url\":\"http://youtube.com/\"}\r\n]', '2020-04-15 19:51:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idsubcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `rango` int(11) NOT NULL,
  `rango_option` tinyint(4) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `nuevo` tinyint(4) NOT NULL,
  `entrega` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistas` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idcategoria`, `idsubcategoria`, `tipo`, `nombre`, `descripcion`, `rango`, `rango_option`, `ruta`, `detalles`, `multimedia`, `nuevo`, `entrega`, `ventas`, `vistas`, `stock`, `imagen`, `estado`, `fecha`) VALUES
(1, 4, 4, '', 'antenas SKM-214 clásico', '2 Antenas AM Stargate Silver XL,1 Desactivador de Proximidad AM Century, 1 Box Capio, 1 Estabilizador AM estado solido de 1kva', 0, 0, 'antenas-skm-214-1', '', '', 1, 0, 10, 5, 10, 'files/productos/1585963929.png', 1, '2020-04-16 16:48:33'),
(2, 4, 3, '', 'Antena Modelo Rtta en el mercado actual y deliberado para clientes', 'Eas AM sistema 58KHz Anti robo antenas para supermercados maestro y esclavo seguridad contra robo sistema de antena', 0, 0, 'antena-modelo-rrt1402fe-1', '', '', 1, 0, 12, 8, 10, 'files/productos/1585968334.png', 1, '2020-04-16 16:48:34'),
(3, 4, 4, '', 'conchatuvida', 'Eas AM sistema 58KHz Anti robo antenas para supermercados maestro y esclavo seguridad contra robo sistema de antena', 0, 0, 'eas-am-sistema-58khz-1', '', '', 1, 0, 50, 10, 12, 'files/productos/1585968388.png', 1, '2020-04-17 21:20:33'),
(4, 4, 5, '', 'Nvr Wifi 8ch C/4 Antenas Externas Ezviz Cs-x5c-8apec/1t', 'CS-X5C-8APEC/1T\r\nNVR WIFI 8ch c/4 antenas externas, 4 LAN &amp; 1 WAN Port con 100 mb fast Ethernet.\r\nHasta 12-ch camaras IP, Incluye disco duros de 1TB, Support 2.4G/5G, 12V1.5A', 0, 0, 'nvr-wifi-8ch-1', '', '', 1, 0, 20, 5, 15, 'files/productos/1585968713.png', 1, '2020-04-16 16:48:41'),
(5, 3, 1, '', 'Sensor Inalambrico RT2020', 'Detector de Humo Fotoelectrico DSW-928N\r\n* Temperatura 57°C\r\n* Contactos NO/NC', 0, 0, 'sensor-alta-distancia-ktr1041-1', '', '', 0, 0, 8, 9, 5, 'files/productos/1585969049.png', 1, '2020-04-17 16:01:30'),
(6, 3, 1, 'fisico', 'Interruptor automatico y virtual', 'Caracteristicas:\r\n\r\n- 32 tipos de canciones de calidad polifónica.\r\n- 200 m de distancia área abierta\r\n- Diseño portátil.\r\n- Sensor de 110 grados\r\n- Rango de distancia con personas que pasan 6-8 metros.\r\n- Sensor utiliza 3 pilas AAA (no incluidas)\r\n- Tamaño de Sensor: 8cm x 5.5cm.x 4cm\r\n- Tamaño de receptor: 9 cm x 6 cm x 2cm\r\n- Peso 200gr.', 0, 0, 'interruptor-automatico-y-virtual-1', '{\r\n\"Talla\": [36,38,40],\r\n\"Color\": [\"rojo\",\"negro\",\"blanco\"],\r\n\"Marca\":null\r\n}', '', 1, 5, 11, 15, 12, 'files/productos/1585969196.png', 1, '2020-04-16 16:48:47'),
(7, 3, 2, '', 'Detector Inalambrico con alerta HT14R', 'Distancia de detección: 8m (max)\r\nRango de detención: 60º\r\nSwitch selector: Alarma/off/timbre ding dong\r\nTemperatura: -20~40ºC\r\nVelocidad de detección: 0.6~1.5m/s\r\nTiempo de retraso: 5s\r\nSentido intervalo: aprox 1min\r\nVolumen de alarma: &amp;gt;70db', 0, 0, 'detector-inalambrico-con-alerta-ht14r-1', '', '', 0, 0, 15, 17, 11, 'files/productos/1585969246.png', 1, '2020-04-16 16:48:55'),
(8, 3, 1, '', 'Control Remoto con Sensor automatico KT158', 'sensor que reduce la luz si no percibe movimiento, y se activa cuando lo percibe de manera instantánea.', 0, 0, 'control-remoto-sensor-1', '', '', 0, 0, 8, 5, 6, 'files/productos/1585969327.png', 1, '2020-04-16 16:48:56'),
(13, 4, 4, '', 'Antenas de Seguridad MK01', 'Set de anteas ONPOINT EAS anti-hurto con alarma, dando aviso cuando pasa algún objeto con TAG duro o TAG blando (etiqueta). Con rango de detección de 110mm en etiquetas RF y 1600mm en Harg tag. Reduce las pérdidas por robo hormiga y mecheras, evita errores en facturación y olvidos de cajeros descuidados. Su bajo costo de implementación permite instalarlo en cualquier comercio.', 0, 0, 'ant-segurity', '', '', 1, 0, 3, 4, 15, '/files/productos/1586214715.jpg', 1, '2020-04-16 16:48:58'),
(14, 4, 4, '', 'Antenas Lobest457', 'Antenas de seguridad absoluta', 0, 0, '', '', '', 1, 0, 11, 2, 15, '/files/productos/1586220246.jpg', 1, '2020-04-16 16:49:01'),
(15, 4, 3, '', 'Anteas2013', 'Antenas del año 2013', 0, 0, '', '', '', 1, 0, 9, 10, 5, '/files/productos/1586220609.png', 1, '2020-04-16 16:49:04'),
(16, 4, 4, '', 'Antena2014', 'lo mejor del 2014', 0, 0, '', '', '', 1, 0, 4, 4, 5, '/files/productos/1586220806.png', 1, '2020-04-16 16:49:07'),
(17, 4, 3, '', 'Antenas2015', 'Lo mejor del 2015', 0, 0, '', '', '', 1, 0, 4, 5, 10, '/files/productos/1586220724.jpg', 1, '2020-04-16 16:49:08'),
(18, 4, 3, '', 'antena2016', 'Lo mejor del 2016', 0, 0, '', '', '', 1, 0, 0, 6, 12, '/files/productos/1586220934.jpg', 1, '2020-04-16 16:49:10'),
(19, 4, 3, '', 'Antenas2017', 'Lo mejor del 2017', 0, 0, '', '', '', 1, 0, 6, 8, 5, '/files/productos/1586221042.jpg', 1, '2020-04-16 16:49:12'),
(20, 4, 4, '', 'antenas2018', 'lo mejor del 2018', 0, 0, '', '', '', 1, 0, 88, 77, 5, '/files/productos/1586221708.jpg', 1, '2020-04-16 16:49:18'),
(21, 4, 4, '', 'antenas2019', 'lo mejor de 2019', 0, 0, '', '', '', 1, 0, 44, 55, 5, '/files/productos/1586221806.jpg', 1, '2020-04-16 16:49:19'),
(22, 4, 4, '', 'antenas2020', 'lo mejor del 2020', 0, 0, '', '', '', 1, 0, 11, 11, 5, '/files/productos/1586221873.jpg', 1, '2020-04-16 16:49:23'),
(23, 4, 4, '', 'antenas2021', 'lo mejor del modeo 2021', 0, 0, '', '', '', 1, 0, 10, 0, 5, '/files/productos/1586221988.jpg', 1, '2020-04-16 16:49:25'),
(24, 4, 4, '', 'antenas 2022', 'el mejor modelo 2022', 0, 0, '', '', '', 1, 0, 8, 3, 5, '/files/productos/1586222038.jpg', 1, '2020-04-16 16:49:30'),
(97, 3, 1, '', 'Sensor AM rfids', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', 0, 0, '', '', '', 1, 0, 0, 5, 234, '/files/productos/1586460959.png', 1, '2020-04-16 16:49:28'),
(98, 3, 1, '', 'Sensores RF 4003f', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', 0, 0, '', '', '', 1, 0, 0, 0, 234, '/files/productos/1586461027.jpg', 1, '2020-04-09 19:37:07'),
(99, 3, 1, '', 'Sensor 300 rfidtgw', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', 0, 0, '', '', '', 1, 0, 0, 0, 234, '/files/productos/1586461049.png', 1, '2020-04-09 19:37:28'),
(197, 3, 1, '', 'dasd', '', 0, 0, '', '', '', 1, 0, 0, 0, 3, '', 1, '2020-04-20 03:54:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `idslide` int(11) NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`idslide`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `fecha`) VALUES
(1, 'public/imgfrontend/slide/default/back_default.jpg', 'slideOpcion1', 'public/imgfrontend/slide/slide1/calzado.png', '{\"top\": \"25%\", \"right\": \"13%\", \"width\": \"25%\", \"left\":\"\"}', '{\"top\": \"20%\", \"right\": \"\", \"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"TOOLS DE SEGURIDAD\", \"color\": \"#333\"}', '{\"texto\": \"KIT HERRAMIENTAS TOOLS\", \"color\": \"#777\"}', '{\"texto\": \"Antihurto\", \"color\": \"#888\"}', '<button class=\"btn btn-default color-dominante-degree text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>\r\n', '#', '2020-04-15 19:13:51'),
(2, 'public/imgfrontend/slide/default/back_default.jpg', 'slideOpcion2', 'public/imgfrontend/slide/slide2/curso.png', '{\"top\": \"15%\", \"right\": \"\", \"width\": \"25%\", \"left\":\"15%\"}', '{\"top\": \"15%\", \"right\": \"15%\", \"width\": \"40%\", \"left\":\"\"}', '{\"texto\": \"ANTENAS DE SEGURIDAD\", \"color\": \"#333\"}', '{\"texto\": \"KIT ANTENAS DE SEGURIDAD SD-123\", \"color\": \"#777\"}', '{\"texto\": \"Antihurto\", \"color\": \"#888\"}', '<button class=\"btn btn-default color-dominante-degree text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-04-15 19:14:31'),
(3, 'public/imgfrontend/slide/slide3/fondo2.jpg', 'slideOpcion2', 'public/imgfrontend/slide/slide3/iphone.png', '{\"top\": \"5%\", \"right\": \"\", \"width\": \"30%\", \"left\":\"10%\"}', '{\"top\": \"15%\", \"right\": \"15%\", \"width\": \"40%\", \"left\":\"\"}', '{\"texto\": \"Cristal de RF anti robo\", \"color\": \"#fff\"}', '{\"texto\": \"Antenas de Seguridad\", \"color\": \"#333\"}', '{\"texto\": \"Para Centro Comercial\", \"color\": \"#333\"}', '<button class=\"btn btn-default color-dominante-degree text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-04-15 19:44:37'),
(4, 'public/imgfrontend/slide/slide4/fondo3.jpg', 'slideOpcion1', '', '', '{\"top\": \"20%\", \"right\": \"\", \"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"Seguridad Retail\", \"color\": \"#333\"}', '{\"texto\": \"Nuevas Tecnologías\", \"color\": \"#777\"}', '{\"texto\": \"Genera tus packs\", \"color\": \"#888\"}', '', '', '2020-03-31 23:57:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE `subcategoria` (
  `idsubcategoria` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `observador` tinyint(4) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = activo 0=inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`idsubcategoria`, `idcategoria`, `nombre`, `descripcion`, `ruta`, `observador`, `estado`) VALUES
(1, 3, 'Sensores a corta distancia', 'Sensores a cortas distancias para deteccion inmediata', 'sensores-a-corta-distancia', 0, 1),
(2, 3, 'Sensor Oled', 'Sensores oled de ultima tecnologia', 'sensor-oled', 0, 1),
(3, 4, 'Antenas RF', 'Antenas rf', 'antenas-rf', 1, 1),
(4, 4, 'Antenas AM', 'Antenas Am', 'antenas-am', 1, 1),
(5, 4, 'Antenas Mono', 'Antenas Mono', 'antenas-mono', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `idtipo_producto` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`idtipo_producto`, `descripcion`, `estado`) VALUES
(1, 'polos', 1),
(6, 'zapatos', 1),
(7, 'camisas', 1),
(8, 'shorts', 1),
(9, 'medias', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 NOT NULL,
  `tipo_documento` varchar(20) CHARACTER SET latin1 NOT NULL,
  `num_documento` varchar(20) CHARACTER SET latin1 NOT NULL,
  `direccion` varchar(70) CHARACTER SET latin1 DEFAULT NULL,
  `telefono` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `cargo` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `login` varchar(20) CHARACTER SET latin1 NOT NULL,
  `clave` varchar(64) CHARACTER SET latin1 NOT NULL,
  `imagen` varchar(50) CHARACTER SET latin1 NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `condicion`) VALUES
(1, 'Jesus Alberto', 'DNI', '47179801', 'Urb La Perla', '989944394', 'abantybredda@gmail.com', 'Programador', 'abanty', '55038e1231d7cbb65eee689183d77fede660f7653737078a333afe4b75b4c577', '1582409533.jpg', 1),
(2, 'Omar Fernando', 'DNI', '47474747', 'Lima', '989977665', 'omar@gmail.com', 'Asistente', 'omarfer', '94190c2b348f1849828eaf3237b4612246506d663fc2196e8f59b4eb7c8326fb', '1582349688.jpg', 1),
(3, 'General', 'DNI', '00000', 'SD', '00000', '0000@gmail.com', 'tester', 'general', '0feae16d55365acf07fe9f909834361ba6ee606854746539230bdc84a6a24cee', '1582409523.PNG', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(15, 2, 1),
(16, 2, 2),
(27, 3, 1),
(28, 3, 2),
(29, 3, 3),
(30, 3, 4),
(31, 3, 5),
(32, 1, 1),
(33, 1, 2),
(34, 1, 3),
(35, 1, 4),
(36, 1, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorio`
--
ALTER TABLE `accesorio`
  ADD PRIMARY KEY (`idaccesorio`);

--
-- Indices de la tabla `accesorio_producto`
--
ALTER TABLE `accesorio_producto`
  ADD PRIMARY KEY (`idaccesorio_producto`),
  ADD KEY `fk_idaccesorio` (`idaccesorio`),
  ADD KEY `fk_idproducto` (`idproducto`);

--
-- Indices de la tabla `accesorio_tipo_producto`
--
ALTER TABLE `accesorio_tipo_producto`
  ADD PRIMARY KEY (`idaccesorio_tipo_producto`),
  ADD KEY `fk_accesorio_atp` (`idaccesorio`),
  ADD KEY `fk_tipo_producto_atp` (`idtipo_producto`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`idbanner`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`idplantilla`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `fk_idsubcategoria` (`idsubcategoria`),
  ADD KEY `fk_categoria` (`idcategoria`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`idslide`);

--
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`idsubcategoria`),
  ADD KEY `fk_idcategoria` (`idcategoria`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`idtipo_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `fk_usuario_permiso_permiso` (`idpermiso`),
  ADD KEY `fk_usuario_permiso_usuario` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesorio`
--
ALTER TABLE `accesorio`
  MODIFY `idaccesorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `accesorio_producto`
--
ALTER TABLE `accesorio_producto`
  MODIFY `idaccesorio_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `accesorio_tipo_producto`
--
ALTER TABLE `accesorio_tipo_producto`
  MODIFY `idaccesorio_tipo_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `idplantilla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `idslide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `idsubcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  MODIFY `idtipo_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesorio_producto`
--
ALTER TABLE `accesorio_producto`
  ADD CONSTRAINT `fk_idaccesorio` FOREIGN KEY (`idaccesorio`) REFERENCES `accesorio` (`idaccesorio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_idproducto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `accesorio_tipo_producto`
--
ALTER TABLE `accesorio_tipo_producto`
  ADD CONSTRAINT `fk_accesorio_atp` FOREIGN KEY (`idaccesorio`) REFERENCES `accesorio` (`idaccesorio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_producto_atp` FOREIGN KEY (`idtipo_producto`) REFERENCES `tipo_producto` (`idtipo_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_idsubcategoria` FOREIGN KEY (`idsubcategoria`) REFERENCES `subcategoria` (`idsubcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `fk_idcategoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_usuario_permiso_permiso` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_permiso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
