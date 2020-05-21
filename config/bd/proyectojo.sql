-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2020 a las 20:19:28
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
  `rango_option` tinyint(4) NOT NULL COMMENT 'si o no',
  `rango` int(11) DEFAULT NULL,
  `cantidad_min_option` tinyint(4) NOT NULL COMMENT 'si o no',
  `cantidad_min` int(11) DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `style` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_create_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` tinyint(4) NOT NULL COMMENT '0: desativado 1: activado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `accesorio`
--

INSERT INTO `accesorio` (`idaccesorio`, `nombre`, `rango_option`, `rango`, `cantidad_min_option`, `cantidad_min`, `descripcion`, `imagen`, `color`, `style`, `fecha_create_update`, `estado`) VALUES
(1, 'Accesorio Complementario', 1, 150, 1, 10, 'Detalle de un accesorio complementario', '1585364326.PNG', 'bg-aqua', 'rgb(0, 192, 239)', '2020-03-18 01:32:52', 1),
(2, 'Accesorio Complementario', 1, 165, 1, 140, '', '1585366391.PNG', '', '', '2020-03-28 03:30:49', 1),
(3, 'Accesorio Complementario', 1, 120, 1, 50, '', '1585415795.PNG', '', '', '2020-03-28 17:16:35', 1),
(4, 'Accesorio Complementario2', 1, 110, 1, 10, '', '1585415908.PNG', '', '', '2020-03-28 17:18:27', 1);

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
(18, 2, 1, 1, '2020-03-28 17:13:49'),
(19, 2, 2, 1, '2020-03-28 17:13:49'),
(20, 2, 3, 1, '2020-03-28 17:13:49'),
(21, 1, 1, 1, '2020-03-28 17:14:30'),
(22, 1, 2, 1, '2020-03-28 17:14:30'),
(23, 3, 1, 1, '2020-03-28 17:16:35'),
(24, 3, 9, 0, '2020-03-28 17:16:35'),
(25, 3, 13, 1, '2020-03-28 17:16:35'),
(31, 4, 1, 0, '2020-03-29 00:37:31'),
(32, 4, 2, 0, '2020-03-29 00:37:31');

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
(4, 'Antenas', 'bg-yellow', 'rgb(243, 156, 18)', 'antenas', 'public/imgfrontend/bannertest/banner4.png', '[ {\"url1\":\"public/imgfrontend/galeriatest/galeria_4_1.png\",\"url2\":\"public/imgfrontend/galeriatest/galeria_4_2.png\",\"url3\":\"public/imgfrontend/galeriatest/galeria_4_3.png\",\"url4\":\"public/imgfrontend/galeriatest/galeria_4_4.png\"}\r\n]', 1),
(5, 'Camaras', 'bg-teal', 'rgb(57, 204, 204)', 'camaras', 'public/imgfrontend/bannertest/banner5.png', '[ {\"url1\":\"public/imgfrontend/galeriatest/galeria_5_1.png\",\"url2\":\"public/imgfrontend/galeriatest/galeria_5_2.png\",\"url3\":\"public/imgfrontend/galeriatest/galeria_5_3.png\",\"url4\":\"public/imgfrontend/galeriatest/galeria_5_4.png\"}\r\n]', 1);

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
(1, '#ff6600', '#fff', '#ff5722', 'public/imgfrontend/logo.png', 'public/imgfrontend/cart.png', 'public/imgfrontend/favicon.png', '[\r\n{\"red\":\"fa-facebook\",\"estilo\":\"facebookBlanco\",\"url\":\"http://facebook.com/\"},\r\n{\"red\":\"fa-twitter\",\"estilo\":\"twitterBlanco\",\"url\":\"http://twitter.com/\"},\r\n{\"red\":\"fa-instagram fa-1x\",\"estilo\":\"instagramBlanco\",\"url\":\"http://instagram.com/\"},\r\n{\"red\":\"fa-google-plus-g\",\"estilo\":\"googleBlanco\",\"url\":\"http://google.com/\"},\r\n{\"red\":\"fa-youtube\",\"estilo\":\"youtubeBlanco\",\"url\":\"http://youtube.com/\"}\r\n]', '2020-04-11 17:34:16');

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
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float(11,2) NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `ofertadoPorCategoria` tinyint(11) NOT NULL,
  `ofertadoPorSubCategoria` tinyint(4) NOT NULL,
  `oferta` tinyint(4) NOT NULL,
  `precioOferta` float(11,2) NOT NULL,
  `descuentoOferta` float NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `disponibilidad` tinyint(4) NOT NULL COMMENT '0 normal\r\n1 en tienda\r\n2 solo online',
  `nuevo` tinyint(4) NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `rango` int(11) DEFAULT NULL,
  `rango_option` tinyint(4) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idcategoria`, `idsubcategoria`, `tipo`, `nombre`, `titular`, `descripcion`, `ruta`, `detalles`, `precio`, `vistas`, `ventas`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `disponibilidad`, `nuevo`, `peso`, `entrega`, `rango`, `rango_option`, `stock`, `imagen`, `estado`, `fecha`) VALUES
(1, 4, 4, '', 'antenas SKM-214 clásico', '', '2 Antenas AM Stargate Silver XL,1 Desactivador de Proximidad AM Century, 1 Box Capio, 1 Estabilizador AM estado solido de 1kva', 'antenas-skm-214-1', '', 1200.00, 1, 101, 0, 0, 1, 1000.00, 40, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 120, 1, 10, 'files/productos/1585963929.png', 1, '2020-04-11 03:44:20'),
(2, 4, 3, '', 'Antena Modelo Rtta en el mercado actual y deliberado para clientes', '', 'Eas AM sistema 58KHz Anti robo antenas para supermercados maestro y esclavo seguridad contra robo sistema de antena', 'antena-modelo-rrt1402fe-1', '', 800.00, 2, 50, 0, 0, 1, 600.00, 10, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 120, 1, 10, 'files/productos/1585968334.png', 1, '2020-04-11 17:20:04'),
(3, 4, 4, '', 'Eas AM sistema 58KHz', '', 'Eas AM sistema 58KHz Anti robo antenas para supermercados maestro y esclavo seguridad contra robo sistema de antena', 'eas-am-sistema-58khz-1', '', 0.00, 3, 85, 0, 0, 0, 300.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 110, 1, 12, 'files/productos/1585968388.png', 1, '2020-04-06 23:38:05'),
(4, 4, 5, '', 'Nvr Wifi 8ch C/4 Antenas Externas Ezviz Cs-x5c-8apec/1t', '', 'CS-X5C-8APEC/1T\r\nNVR WIFI 8ch c/4 antenas externas, 4 LAN &amp; 1 WAN Port con 100 mb fast Ethernet.\r\nHasta 12-ch camaras IP, Incluye disco duros de 1TB, Support 2.4G/5G, 12V1.5A', 'nvr-wifi-8ch-1', '', 100.00, 4, 21, 0, 0, 1, 50.00, 25, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 200, 1, 15, 'files/productos/1585968713.png', 1, '2020-04-11 17:18:35'),
(5, 3, 1, '', 'SENSOR DE ALTA DISTANCIA KTR1041', '', 'Detector de Humo Fotoelectrico DSW-928N\r\n* Temperatura 57°C\r\n* Contactos NO/NC', 'sensor-alta-distancia-ktr1041-1', '', 1000.00, 5, 396, 0, 0, 0, 950.00, 0, '', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 5, 'files/productos/1585969049.png', 1, '2020-04-06 23:41:03'),
(6, 3, 1, '', 'Interruptor automatico y virtual', '', 'Caracteristicas:\r\n\r\n- 32 tipos de canciones de calidad polifónica.\r\n- 200 m de distancia área abierta\r\n- Diseño portátil.\r\n- Sensor de 110 grados\r\n- Rango de distancia con personas que pasan 6-8 metros.\r\n- Sensor utiliza 3 pilas AAA (no incluidas)\r\n- Tamaño de Sensor: 8cm x 5.5cm.x 4cm\r\n- Tamaño de receptor: 9 cm x 6 cm x 2cm\r\n- Peso 200gr.', 'interruptor-automatico-y-virtual-1', '', 150.00, 6, 395, 0, 0, 1, 100.00, 10, '', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 12, 'files/productos/1585969196.png', 1, '2020-04-11 12:58:57'),
(7, 3, 2, '', 'Detector Inalambrico con alerta HT14R', '', 'Distancia de detección: 8m (max)\r\nRango de detención: 60º\r\nSwitch selector: Alarma/off/timbre ding dong\r\nTemperatura: -20~40ºC\r\nVelocidad de detección: 0.6~1.5m/s\r\nTiempo de retraso: 5s\r\nSentido intervalo: aprox 1min\r\nVolumen de alarma: &amp;gt;70db', 'detector-inalambrico-con-alerta-ht14r-1', '', 80.00, 7, 394, 0, 0, 1, 70.00, 15, '', '0000-00-00 00:00:00', 2, 0, 0, 0, 0, 0, 11, 'files/productos/1585969246.png', 1, '2020-04-11 17:18:40'),
(8, 3, 1, '', 'Control Remoto con Sensor automatico KT158', '', 'sensor que reduce la luz si no percibe movimiento, y se activa cuando lo percibe de manera instantánea.', 'control-remoto-sensor-1', '', 500.00, 8, 393, 0, 0, 1, 400.00, 5, '', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 6, 'files/productos/1585969327.png', 1, '2020-04-11 12:57:34'),
(9, 5, 6, '', 'Camara Htz232 Ip wifi', '', 'Camara de vigilancia de alto rango de distancia', 'camara-htz232-ip-wifi-1', '', 100.00, 9, 392, 0, 0, 1, 80.00, 20, '', '0000-00-00 00:00:00', 1, 0, 0, 0, 0, 0, 10, 'files/productos/1585969388.png', 1, '2020-04-11 17:18:43'),
(10, 5, 6, '', 'Camaras tipo alarma', '', '*Actualizar el alumbrado con iluminación LED con panel solar, no sólo reduce el consumo energético sino que también obtenemos una iluminación de más calidad con encendido instantáneo, cuando es de día se queda apagada pero esta en modo de carga y con el sensor de luz activo para operar en cuanto caiga la noche.', 'camaras-tipo-alarma-1', '', 100.00, 10, 391, 0, 0, 0, 90.00, 0, '', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 5, 'files/productos/1585969421.png', 1, '2020-04-04 05:34:37'),
(11, 5, 6, '', 'Camara con sensor a distancia', '', 'Cuenta con sensor que reduce la luz si no percibe movimiento, y se activa cuando lo percibe de manera instantánea.', 'camara-con-sensor-a-distancia-1', '', 100.00, 11, 0, 0, 0, 1, 80.00, 50, '', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 5, 'files/productos/1585969440.png', 1, '2020-04-07 03:04:32'),
(12, 5, 6, '', 'Alarma Con Sensor Magnetico Puerta Y Ventana 90 Decibelios', '', 'Caracteristicas:\r\n1. Nuevo y de alta calidad.\r\n2. Alarma súper fuerte de 90 dB\r\n3. Conveniencia en la instalación - simplemente pelar y pegar\r\n4. Super aptitud y estabilidad ambiental\r\n5. A prueba de polvo y prevención de insectos.', 'alarma-con-sensor-puerta-1', '', 200.00, 12, 0, 0, 0, 1, 150.00, 10, '', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 10, 'files/productos/1585969475.png', 1, '2020-04-07 03:04:29'),
(13, 4, 4, '', 'Antenas de Seguridad MK01', '', 'Set de anteas ONPOINT EAS anti-hurto con alarma, dando aviso cuando pasa algún objeto con TAG duro o TAG blando (etiqueta). Con rango de detección de 110mm en etiquetas RF y 1600mm en Harg tag. Reduce las pérdidas por robo hormiga y mecheras, evita errores en facturación y olvidos de cajeros descuidados. Su bajo costo de implementación permite instalarlo en cualquier comercio.', 'ant-segurity', '', 55.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 120, 1, 15, '/files/productos/1586214715.jpg', 1, '2020-04-06 23:48:50'),
(14, 4, 4, '', 'Antenas Lobest457', '', 'Antenas de seguridad absoluta', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 120, 1, 15, '/files/productos/1586220246.jpg', 1, '2020-04-11 17:18:44'),
(15, 4, 3, '', 'Anteas2013', '', 'Antenas del año 2013', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 150, 1, 5, '/files/productos/1586220609.png', 1, '2020-04-07 00:50:09'),
(16, 4, 4, '', 'Antena2014', '', 'lo mejor del 2014', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 120, 1, 5, '/files/productos/1586220806.png', 1, '2020-04-07 00:53:25'),
(17, 4, 3, '', 'Antenas2015', '', 'Lo mejor del 2015', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 150, 1, 10, '/files/productos/1586220724.jpg', 1, '2020-04-07 00:52:40'),
(18, 4, 3, '', 'antena2016', '', 'Lo mejor del 2016', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 140, 1, 12, '/files/productos/1586220934.jpg', 1, '2020-04-07 00:55:33'),
(19, 4, 3, '', 'Antenas2017', '', 'Lo mejor del 2017', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 120, 1, 5, '/files/productos/1586221042.jpg', 1, '2020-04-11 17:18:50'),
(20, 4, 4, '', 'antenas2018', '', 'lo mejor del 2018', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 120, 1, 5, '/files/productos/1586221708.jpg', 1, '2020-04-11 17:18:47'),
(21, 4, 4, '', 'antenas2019', '', 'lo mejor de 2019', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 120, 1, 5, '/files/productos/1586221806.jpg', 1, '2020-04-11 17:18:46'),
(22, 4, 4, '', 'antenas2020', '', 'lo mejor del 2020', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 120, 1, 5, '/files/productos/1586221873.jpg', 1, '2020-04-07 01:11:13'),
(23, 4, 4, '', 'antenas2021', '', 'lo mejor del modeo 2021', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 120, 1, 5, '/files/productos/1586221988.jpg', 1, '2020-04-07 01:13:07'),
(24, 4, 4, '', 'antenas 2022', '', 'el mejor modelo 2022', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 120, 1, 5, '/files/productos/1586222038.jpg', 1, '2020-04-07 01:13:57'),
(25, 5, 6, '', 'CamVig01', '', 'Camaras CamVig01', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586292609.jpg', 1, '2020-04-07 20:50:08'),
(26, 5, 6, '', 'CamVig02', '', 'CamVig02', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586292664.JPG', 1, '2020-04-07 20:51:04'),
(27, 5, 6, '', 'CamVig03', '', 'CamVig03', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586292692.jpg', 1, '2020-04-07 20:51:32'),
(28, 5, 6, '', 'CamVig04', '', 'CamVig04', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586292729.jpg', 1, '2020-04-07 20:52:09'),
(29, 5, 6, '', 'CamVig05', '', 'CamVig05', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586292814.jpg', 1, '2020-04-07 20:53:33'),
(30, 5, 6, '', 'CamVig06', '', 'CamVig06', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586292840.JPG', 1, '2020-04-11 17:18:52'),
(31, 5, 6, '', 'CamVig07', '', 'CamVig07', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586292856.jpg', 1, '2020-04-07 20:54:16'),
(32, 5, 6, '', 'CamVig08', '', 'CamVig08', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586292998.jpg', 1, '2020-04-07 20:56:38'),
(33, 5, 6, '', 'CamVig09', '', 'CamVig010', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293135.jpg', 1, '2020-04-07 20:58:54'),
(34, 5, 6, '', 'CamVig010', '', 'CamVig010', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293160.jpg', 1, '2020-04-07 20:59:20'),
(35, 5, 6, '', 'CamVig011', '', 'CamVig011', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293175.jpg', 1, '2020-04-07 20:59:34'),
(36, 5, 6, '', 'CamVig012', '', 'CamVig012', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293190.jpg', 1, '2020-04-07 20:59:50'),
(37, 5, 6, '', 'CamVig013', '', 'CamVig013', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293208.jpg', 1, '2020-04-07 21:00:07'),
(38, 5, 6, '', 'CamVig014', '', 'CamVig014', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293233.jpg', 1, '2020-04-07 21:00:33'),
(39, 5, 6, '', 'CamVig015', '', 'CamVig015', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293247.jpg', 1, '2020-04-07 21:00:47'),
(40, 5, 6, '', 'CamVig016', '', 'CamVig016', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 0, 10, '/files/productos/1586293261.jpg', 1, '2020-04-11 17:18:56'),
(41, 5, 6, '', 'CamVig017', '', 'CamVig017', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293276.jpg', 1, '2020-04-07 21:01:15'),
(42, 5, 6, '', 'CamVig018', '', 'CamVig018', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293288.jpg', 1, '2020-04-07 21:01:28'),
(43, 5, 6, '', 'CamVig019', '', 'CamVig019', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293303.jpg', 1, '2020-04-07 21:01:42'),
(44, 5, 6, '', 'CamVig020', '', 'CamVig020', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293329.jpg', 1, '2020-04-07 21:02:08'),
(45, 5, 6, '', 'CamVig021', '', 'CamVig021', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293348.jpg', 1, '2020-04-07 21:02:27'),
(46, 5, 6, '', 'CamVig022', '', 'CamVig022', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293359.JPG', 1, '2020-04-07 21:02:39'),
(47, 5, 6, '', 'CamVig023', '', 'CamVig023', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293372.jpg', 1, '2020-04-07 21:02:51'),
(48, 5, 6, '', 'CamVig024', '', 'CamVig024', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293384.jpg', 1, '2020-04-07 21:03:04'),
(49, 5, 6, '', 'CamVig025', '', 'CamVig025', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 0, 10, '/files/productos/1586293446.jpg', 1, '2020-04-11 17:18:54'),
(50, 5, 6, '', 'CamVig026', '', 'CamVig026', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 0, 10, '/files/productos/1586293470.jpg', 1, '2020-04-11 17:19:03'),
(51, 5, 6, '', 'CamVig027', '', 'CamVig027', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293483.jpg', 1, '2020-04-07 21:04:42'),
(52, 5, 6, '', 'CamVig028', '', 'CamVig028', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293495.jpg', 1, '2020-04-07 21:04:55'),
(53, 5, 6, '', 'CamVig029', '', 'CamVig029', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293507.jpg', 1, '2020-04-07 21:05:07'),
(54, 5, 6, '', 'CamVig030', '', 'CamVig030', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 0, 10, '/files/productos/1586293524.jpg', 1, '2020-04-11 17:19:30'),
(55, 5, 6, '', 'CamVig031', '', 'CamVig031', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293538.jpg', 1, '2020-04-07 21:05:38'),
(56, 5, 6, '', 'CamVig032', '', 'CamVig032', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586293552.jpg', 1, '2020-04-11 17:19:34'),
(57, 5, 6, '', 'CamVig033', '', 'CamVig033', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293567.jpg', 1, '2020-04-07 21:06:06'),
(58, 5, 6, '', 'CamVig034', '', 'CamVig034', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293628.jpg', 1, '2020-04-07 21:07:07'),
(59, 5, 6, '', 'CamVig035', '', 'CamVig035', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586293643.jpg', 1, '2020-04-11 17:19:36'),
(60, 5, 6, '', 'CamVig036', '', 'CamVig036', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293659.JPG', 1, '2020-04-07 21:07:39'),
(61, 5, 6, '', 'CamVig037', '', 'CamVig037', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293674.jpg', 1, '2020-04-07 21:07:54'),
(62, 5, 6, '', 'CamVig038', '', 'CamVig038', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 0, 10, '/files/productos/1586293687.jpg', 1, '2020-04-11 17:19:33'),
(63, 5, 6, '', 'CamVig039', '', 'CamVig039', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293701.jpg', 1, '2020-04-07 21:08:20'),
(64, 5, 6, '', 'CamVig040', '', 'CamVig040', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293715.jpg', 1, '2020-04-07 21:08:35'),
(65, 5, 6, '', 'CamVig041', '', 'CamVig041', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586293731.jpg', 1, '2020-04-11 17:19:09'),
(66, 5, 6, '', 'CamVig042', '', 'CamVig042', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293753.jpg', 1, '2020-04-07 21:09:13'),
(67, 5, 6, '', 'CamVig043', '', 'CamVig043', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 0, 10, '/files/productos/1586293775.jpg', 1, '2020-04-11 17:19:28'),
(68, 5, 6, '', 'CamVig044', '', 'CamVig044', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293799.jpg', 1, '2020-04-07 21:09:59'),
(69, 5, 6, '', 'CamVig045', '', 'CamVig045', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586293817.jpg', 1, '2020-04-11 17:19:11'),
(70, 5, 6, '', 'CamVig046', '', 'CamVig046', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293840.jpg', 1, '2020-04-07 21:10:39'),
(71, 5, 6, '', 'CamVig047', '', 'CamVig047', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586293855.jpg', 1, '2020-04-11 17:19:26'),
(72, 5, 6, '', 'CamVig048', '', 'CamVig048', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293872.jpg', 1, '2020-04-07 21:11:12'),
(73, 5, 6, '', 'CamVig049', '', 'CamVig049', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293889.jpg', 1, '2020-04-07 21:11:28'),
(74, 5, 6, '', 'CamVig050', '', 'CamVig050', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293907.jpg', 1, '2020-04-07 21:11:47'),
(75, 5, 6, '', 'CamVig051', '', 'CamVig051', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586293925.jpg', 1, '2020-04-11 17:19:13'),
(76, 5, 6, '', 'CamVig052', '', 'CamVig052', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293942.jpg', 1, '2020-04-07 21:12:21'),
(77, 5, 6, '', 'CamVig053', '', 'CamVig053', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586293961.jpg', 1, '2020-04-11 17:19:14'),
(78, 5, 6, '', 'CamVig054', '', 'CamVig054', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586293979.jpg', 1, '2020-04-07 21:12:59'),
(79, 5, 6, '', 'CamVig055', '', 'CamVig055', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294004.jpg', 1, '2020-04-07 21:13:24'),
(80, 5, 6, '', 'CamVig056', '', 'CamVig056', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294023.JPG', 1, '2020-04-07 21:13:43'),
(81, 5, 6, '', 'CamVig057', '', 'CamVig057', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294044.jpg', 1, '2020-04-07 21:14:04'),
(82, 5, 6, '', 'CamVig058', '', 'CamVig058', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294060.jpg', 1, '2020-04-07 21:14:20'),
(83, 5, 6, '', 'CamVig059', '', 'CamVig059', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294085.jpg', 1, '2020-04-07 21:14:45'),
(84, 5, 6, '', 'CamVig060', '', 'CamVig060', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294107.jpg', 1, '2020-04-07 21:15:07'),
(85, 5, 6, '', 'CamVig061', '', 'CamVig061', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586294128.jpg', 1, '2020-04-11 17:19:16'),
(86, 5, 6, '', 'CamVig062', '', 'CamVig062', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586294144.jpg', 1, '2020-04-11 17:19:24'),
(87, 5, 6, '', 'CamVig063', '', 'CamVig063', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294158.jpg', 1, '2020-04-07 21:15:57'),
(88, 5, 6, '', 'CamVig064', '', 'CamVig064', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294178.jpg', 1, '2020-04-07 21:16:17'),
(89, 5, 6, '', 'CamVig065', '', 'CamVig065', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586294209.JPG', 1, '2020-04-11 17:19:21'),
(90, 5, 6, '', 'CamVig066', '', 'CamVig066', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586294234.jpg', 1, '2020-04-11 17:19:22'),
(91, 5, 6, '', 'CamVig067', '', 'CamVig067', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586294259.jpg', 1, '2020-04-11 17:19:18'),
(92, 5, 6, '', 'CamVig068', '', 'CamVig068', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294281.jpg', 1, '2020-04-07 21:18:01'),
(93, 5, 6, '', 'CamVig069', '', 'CamVig069', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 0, 10, '/files/productos/1586294325.JPG', 1, '2020-04-11 17:19:19'),
(94, 5, 6, '', 'CamVig070', '', 'CamVig070', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 10, '/files/productos/1586294341.jpg', 1, '2020-04-07 21:19:01'),
(95, 5, 6, '', 'CamVig071', '', '', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 1, 1, 0, 0, 0, 0, 10, '/files/productos/1586294353.jpg', 1, '2020-04-11 17:05:46'),
(96, 5, 6, '', 'Camara Vigilancia a provision ISR DI 390IPS36 FIXED DOME 2MP (PN:DI-39', '', 'CamVig072', '', '', 1500.00, 0, 0, 0, 0, 1, 1200.50, 25, '', '0000-00-00 00:00:00', 2, 1, 0, 0, 0, 0, 10, '/files/productos/1586294375.jpg', 1, '2020-04-11 16:41:48'),
(97, 3, 1, '', 'Sensor AM rfids', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 234, '/files/productos/1586460959.png', 1, '2020-04-09 19:35:59'),
(98, 3, 1, '', 'Sensores RF 4003f', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 234, '/files/productos/1586461027.jpg', 1, '2020-04-09 19:37:07'),
(99, 3, 1, '', 'Sensor 300 rfidtgw', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 234, '/files/productos/1586461049.png', 1, '2020-04-09 19:37:28'),
(100, 3, 2, '', 'Sensor04', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 2343, 1, 234, '/files/productos/1586461107.jpg', 1, '2020-04-09 19:38:26'),
(101, 3, 1, '', 'Sensor05', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586461128.png', 1, '2020-04-09 19:38:48'),
(102, 3, 1, '', 'Sensor06', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 234, '/files/productos/1586461154.jpg', 1, '2020-04-09 19:39:13'),
(103, 3, 2, '', 'Sensor07', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 234, '/files/productos/1586461177.png', 1, '2020-04-09 19:39:37'),
(104, 3, 1, '', 'Sensor08', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586461204.jpg', 1, '2020-04-09 19:40:04'),
(105, 3, 2, '', 'Sensor09', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586461226.png', 1, '2020-04-09 19:40:26'),
(106, 3, 1, '', 'Sensor10', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586461255.jpg', 1, '2020-04-09 19:40:54'),
(107, 3, 1, '', 'Sensor11', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586461290.png', 1, '2020-04-09 19:41:29'),
(108, 3, 2, '', 'Sensor12', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 456, 1, 456, '/files/productos/1586461322.jpg', 1, '2020-04-09 19:42:02'),
(109, 3, 2, '', 'Sensor13', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586461346.png', 1, '2020-04-09 19:42:26'),
(110, 3, 2, '', 'Sensor14', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 234, '/files/productos/1586461375.jpg', 1, '2020-04-09 19:42:55'),
(111, 3, 1, '', 'Sensor15', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 435, '/files/productos/1586461416.png', 1, '2020-04-09 19:43:35'),
(112, 3, 1, '', 'Sensor16', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 456, 1, 456, '/files/productos/1586461448.jpg', 1, '2020-04-09 19:44:08'),
(113, 3, 1, '', 'Sensor17', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 456, 1, 456, '/files/productos/1586461478.png', 1, '2020-04-09 19:44:38'),
(114, 3, 2, '', 'Sensor18', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 456, 1, 345, '/files/productos/1586461505.jpg', 1, '2020-04-09 19:45:05'),
(115, 3, 1, '', 'Sensor19', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 536, 1, 135, '/files/productos/1586461548.png', 1, '2020-04-09 19:45:48'),
(116, 3, 2, '', 'Sensor20', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586461583.jpg', 1, '2020-04-09 19:46:23'),
(117, 3, 1, '', 'Sensor21', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 346, '/files/productos/1586461606.png', 1, '2020-04-09 19:46:45'),
(118, 3, 2, '', 'Sensor22', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 234, '/files/productos/1586461630.jpg', 1, '2020-04-09 19:47:09'),
(119, 3, 1, '', 'Sensor23', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586461653.png', 1, '2020-04-09 19:47:32'),
(120, 3, 1, '', 'Sensor24', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586461679.jpg', 1, '2020-04-09 19:47:59'),
(121, 3, 1, '', 'sensor25', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586461714.png', 1, '2020-04-09 19:48:33'),
(122, 3, 1, '', 'Sensor26', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586461731.jpg', 1, '2020-04-09 19:48:50'),
(123, 3, 1, '', 'Sensor27', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586461749.png', 1, '2020-04-09 19:49:09'),
(124, 3, 1, '', 'Sensor28', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586461773.jpg', 1, '2020-04-09 19:49:33'),
(125, 3, 2, '', 'Sensor29', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 3245, '/files/productos/1586461791.png', 1, '2020-04-09 19:49:50'),
(126, 3, 2, '', 'Sensor30', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586461855.jpg', 1, '2020-04-09 19:50:54'),
(127, 3, 1, '', 'Sensor31', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586461873.png', 1, '2020-04-09 19:51:13'),
(128, 3, 1, '', 'Sensor32', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 3456, '/files/productos/1586461895.jpg', 1, '2020-04-09 19:51:35'),
(129, 3, 1, '', 'Sensor33', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586461916.png', 1, '2020-04-09 19:51:56'),
(130, 3, 2, '', 'Sensor34', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 435, '/files/productos/1586461933.jpg', 1, '2020-04-09 19:52:13'),
(131, 3, 2, '', 'Sensor35', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 456, 1, 546, '/files/productos/1586461954.png', 1, '2020-04-09 19:52:33'),
(132, 3, 1, '', 'Sensor36', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 456, '/files/productos/1586461974.jpg', 1, '2020-04-09 19:52:53'),
(133, 3, 2, '', 'Sensor37', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 456, '/files/productos/1586461997.png', 1, '2020-04-09 19:53:16');
INSERT INTO `producto` (`idproducto`, `idcategoria`, `idsubcategoria`, `tipo`, `nombre`, `titular`, `descripcion`, `ruta`, `detalles`, `precio`, `vistas`, `ventas`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `disponibilidad`, `nuevo`, `peso`, `entrega`, `rango`, `rango_option`, `stock`, `imagen`, `estado`, `fecha`) VALUES
(134, 3, 1, '', 'Sensor38', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 534, '/files/productos/1586462016.jpg', 1, '2020-04-09 19:53:35'),
(135, 3, 1, '', 'Sensor39', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586462035.png', 1, '2020-04-09 19:53:55'),
(136, 3, 2, '', 'Sensor40', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586462056.jpg', 1, '2020-04-09 19:54:16'),
(137, 3, 1, '', 'Sensor41', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586462074.png', 1, '2020-04-09 19:54:33'),
(138, 3, 2, '', 'Sensor42', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586463004.jpg', 1, '2020-04-09 20:10:03'),
(139, 3, 1, '', 'Sensor43', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463024.png', 1, '2020-04-09 20:10:23'),
(140, 3, 2, '', 'Sensor44', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463045.jpg', 1, '2020-04-09 20:10:45'),
(141, 3, 2, '', 'Sensor45', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463069.png', 1, '2020-04-09 20:11:09'),
(142, 3, 1, '', 'Sensor46', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463091.jpg', 1, '2020-04-09 20:11:31'),
(143, 3, 1, '', 'Sensor47', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463107.png', 1, '2020-04-09 20:11:47'),
(144, 3, 1, '', 'Sensor48', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463128.jpg', 1, '2020-04-09 20:12:07'),
(145, 3, 2, '', 'Sensor49', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463148.png', 1, '2020-04-09 20:12:28'),
(146, 3, 1, '', 'Sensor50', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463166.jpg', 1, '2020-04-09 20:12:46'),
(147, 3, 1, '', 'Sensor51', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463185.png', 1, '2020-04-09 20:13:05'),
(148, 3, 2, '', 'Sensor52', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463202.jpg', 1, '2020-04-09 20:13:21'),
(149, 3, 2, '', 'Sensor53', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463222.png', 1, '2020-04-09 20:13:42'),
(150, 3, 2, '', 'Sensor54', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 2343, '/files/productos/1586463238.jpg', 1, '2020-04-09 20:13:58'),
(151, 3, 1, '', 'Sensor55', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463255.png', 1, '2020-04-09 20:14:15'),
(152, 3, 2, '', 'Sensor56', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 435, '/files/productos/1586463273.jpg', 1, '2020-04-09 20:14:33'),
(153, 3, 2, '', 'Sensor57', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463291.png', 1, '2020-04-09 20:14:50'),
(154, 3, 2, '', 'Sensor58', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463310.jpg', 1, '2020-04-09 20:15:10'),
(155, 3, 2, '', 'Sensor59', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463331.png', 1, '2020-04-09 20:15:30'),
(156, 3, 2, '', 'Sensor60', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463348.jpg', 1, '2020-04-09 20:15:47'),
(157, 3, 2, '', 'Sensor61', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 234, '/files/productos/1586463368.png', 1, '2020-04-09 20:16:07'),
(158, 3, 1, '', 'Sensor62', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586463388.jpg', 1, '2020-04-09 20:16:28'),
(159, 3, 1, '', 'Sensor63', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463409.png', 1, '2020-04-09 20:16:49'),
(160, 3, 1, '', 'Sensor64', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463428.jpg', 1, '2020-04-09 20:17:08'),
(161, 3, 2, '', 'Sensor65', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463444.png', 1, '2020-04-09 20:17:23'),
(162, 3, 1, '', 'Sensor66', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463463.jpg', 1, '2020-04-09 20:17:43'),
(163, 3, 1, '', 'Sensor67', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463482.png', 1, '2020-04-09 20:18:01'),
(164, 3, 1, '', 'Sensor68', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 324, '/files/productos/1586463499.jpg', 1, '2020-04-09 20:18:19'),
(165, 3, 1, '', 'Sensor69', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463519.png', 1, '2020-04-09 20:18:39'),
(166, 3, 1, '', 'Sensor70', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463539.jpg', 1, '2020-04-09 20:18:59'),
(167, 3, 1, '', 'Sensor71', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463557.png', 1, '2020-04-09 20:19:17'),
(168, 3, 1, '', 'Sensor72', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463572.jpg', 1, '2020-04-09 20:19:31'),
(169, 3, 1, '', 'Sensor73', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 324, '/files/productos/1586463592.png', 1, '2020-04-09 20:19:52'),
(170, 3, 2, '', 'Sensor74', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463612.jpg', 1, '2020-04-09 20:20:12'),
(171, 3, 2, '', 'Sensor75', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463632.png', 1, '2020-04-09 20:20:32'),
(172, 3, 2, '', 'Sensor76', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463652.jpg', 1, '2020-04-09 20:20:52'),
(173, 3, 1, '', 'Sensor77', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463669.png', 1, '2020-04-09 20:21:09'),
(174, 3, 2, '', 'Sensor78', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463685.jpg', 1, '2020-04-09 20:21:25'),
(175, 3, 1, '', 'Sensor79', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463703.png', 1, '2020-04-09 20:21:43'),
(176, 3, 2, '', 'Sensor80', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463725.jpg', 1, '2020-04-09 20:22:04'),
(177, 3, 2, '', 'Sensor81', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463746.png', 1, '2020-04-09 20:22:26'),
(178, 3, 1, '', 'Sensor82', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 345, '/files/productos/1586463775.jpg', 1, '2020-04-09 20:22:55'),
(179, 3, 1, '', 'Sensor83', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463795.png', 1, '2020-04-09 20:23:14'),
(180, 3, 1, '', 'Sensor84', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463814.jpg', 1, '2020-04-09 20:23:33'),
(181, 3, 1, '', 'Sensor85', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463836.png', 1, '2020-04-09 20:23:56'),
(182, 3, 2, '', 'Sensor86', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463881.jpg', 1, '2020-04-09 20:24:40'),
(183, 3, 1, '', 'Sensor87', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463899.png', 1, '2020-04-09 20:24:59'),
(184, 3, 2, '', 'Sensor88', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463920.jpg', 1, '2020-04-09 20:25:19'),
(185, 3, 1, '', 'Sensor89', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 234, '/files/productos/1586463939.png', 1, '2020-04-09 20:25:39'),
(186, 3, 2, '', 'Sensor90', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 345, '/files/productos/1586463993.jpg', 1, '2020-04-09 20:26:33'),
(187, 3, 1, '', 'Sensor91', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 234, '/files/productos/1586464012.png', 1, '2020-04-09 20:26:52'),
(188, 3, 2, '', 'Sensor92', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586464041.jpg', 1, '2020-04-09 20:27:21'),
(189, 3, 2, '', 'Sensor93', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 324, '/files/productos/1586464062.png', 1, '2020-04-09 20:27:42'),
(190, 3, 2, '', 'Sensor94', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 987, 1, 645, '/files/productos/1586464206.jpg', 1, '2020-04-09 20:30:06'),
(191, 3, 2, '', 'Sensor95', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 234, '/files/productos/1586464265.png', 1, '2020-04-09 20:31:04'),
(192, 3, 1, '', 'Sensor96', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 345, '/files/productos/1586464292.jpg', 1, '2020-04-09 20:31:31'),
(193, 3, 2, '', 'Sensor97', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 456, 1, 345, '/files/productos/1586464315.png', 1, '2020-04-09 20:31:55'),
(194, 3, 1, '', 'Sensor98', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 567, 1, 234, '/files/productos/1586464335.jpg', 1, '2020-04-09 20:32:15'),
(195, 3, 2, '', 'Sensor99', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 234, 1, 2334, '/files/productos/1586464354.png', 1, '2020-04-09 20:32:33'),
(196, 3, 2, '', 'Sensor100', '', 'Esta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\n\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real\r\nEsta es una descripcion larga del producto de Sensores, no válida para ofrecimiento real', '', '', 0.00, 0, 0, 0, 0, 0, 0.00, 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 345, 1, 436, '/files/productos/1586464373.jpg', 1, '2020-04-09 20:32:53');

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
(1, 'public/imgfrontend/slide/default/back_default.jpg', 'slideOpcion1', 'public/imgfrontend/slide/slide1/calzado.png', '{\"top\": \"25%\", \"right\": \"13%\", \"width\": \"25%\", \"left\":\"\"}', '{\"top\": \"20%\", \"right\": \"\", \"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"TOOLS DE SEGURIDAD\", \"color\": \"#333\"}', '{\"texto\": \"KIT HERRAMIENTAS TOOLS\", \"color\": \"#777\"}', '{\"texto\": \"Antihurto\", \"color\": \"#888\"}', '<button class=\"btn btn-default color-dominante text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>\r\n', '#', '2020-04-10 02:23:52'),
(2, 'public/imgfrontend/slide/default/back_default.jpg', 'slideOpcion2', 'public/imgfrontend/slide/slide2/curso.png', '{\"top\": \"15%\", \"right\": \"\", \"width\": \"25%\", \"left\":\"15%\"}', '{\"top\": \"15%\", \"right\": \"15%\", \"width\": \"40%\", \"left\":\"\"}', '{\"texto\": \"ANTENAS DE SEGURIDAD\", \"color\": \"#333\"}', '{\"texto\": \"KIT ANTENAS DE SEGURIDAD SD-123\", \"color\": \"#777\"}', '{\"texto\": \"Antihurto\", \"color\": \"#888\"}', '<button class=\"btn btn-default color-dominante text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-04-10 02:24:03'),
(3, 'public/imgfrontend/slide/slide3/fondo2.jpg', 'slideOpcion2', 'public/imgfrontend/slide/slide3/iphone.png', '{\"top\": \"5%\", \"right\": \"\", \"width\": \"30%\", \"left\":\"10%\"}', '{\"top\": \"15%\", \"right\": \"15%\", \"width\": \"40%\", \"left\":\"\"}', '{\"texto\": \"Cristal de RF anti robo sistema EAS\", \"color\": \"#fff\"}', '{\"texto\": \"Antenas de Seguridad\", \"color\": \"#333\"}', '{\"texto\": \"Para Centro Comercial\", \"color\": \"#333\"}', '<button class=\"btn btn-default color-dominante text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-04-10 02:24:14'),
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
  `estado` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = activo 0=inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`idsubcategoria`, `idcategoria`, `nombre`, `descripcion`, `ruta`, `estado`) VALUES
(1, 3, 'Sensores a corta distancia', 'Sensores a cortas distancias para deteccion inmediata', 'sensores-a-corta-distancia', 1),
(2, 3, 'Sensor Oled', 'Sensores oled de ultima tecnologia', 'sensor-oled', 1),
(3, 4, 'Antenas RF', 'Antenas rf', 'antenas-rf', 1),
(4, 4, 'Antenas AM', 'Antenas Am', 'antenas-am', 1),
(5, 4, 'Antenas Mono', 'Antenas Mono', 'antenas-mono', 1),
(6, 5, 'Camaras de vigilancia', 'Camaras precisamente para vigilar y supervisar areas', 'camaras-de-vigilancia', 1);

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
  MODIFY `idaccesorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `accesorio_producto`
--
ALTER TABLE `accesorio_producto`
  MODIFY `idaccesorio_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

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
