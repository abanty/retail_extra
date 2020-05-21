-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2020 a las 05:51:04
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
  `tipo_accesorio` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `rango_option` tinyint(4) NOT NULL COMMENT 'si o no',
  `rango` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `cantidad_min_option` tinyint(4) NOT NULL COMMENT 'si o no',
  `cantidad_min` int(11) DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
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

INSERT INTO `accesorio` (`idaccesorio`, `nombre`, `nuevo`, `ruta`, `tipo_accesorio`, `rango_option`, `rango`, `stock`, `cantidad_min_option`, `cantidad_min`, `descripcion`, `imagen`, `entrega`, `ventas`, `vistas`, `color`, `style`, `fecha_create_update`, `estado`) VALUES
(6, 'Antenas RF 3NStar Transimora', 1, 'antenas-rf-3nstar-transimora', 'transmidora', 1, 150, 0, 1, 50, '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><span style=\"color:#336600\"><span style=\"font-size:20px\"><strong>CARACTERISTICAS</strong></span></span></div>\r\n\r\n<div style=\"margin-left:40px\"><span style=\"font-size:14px\"><span style=\"color:#c0392b\">ANTENAS:</span></span></div>\r\n\r\n<div style=\"margin-left:80px\">- Configuración de mult-antena para cubrir grandes accesos.<br />\r\n- Fácil sincronización con otros sistemas.<br />\r\n- Software de configuración interactiva de uso libre. No requiere pago de licencias ni condiciones especiales.<br />\r\n- Un año de garantía en todas sus partes.</div>', '/files/accesorios/1588807021.jpg', 0, 0, 0, '', '', '2020-05-06 22:21:33', 1),
(7, 'Sensor Mini Tag', 1, 'sensor-mini-tag', '', 0, 0, 0, 1, 50, '<h1>MINITAG</h1>\r\n\r\n<div>\r\n<ul>\r\n	<li>Tag anti-robo re-utilizable tradicional</li>\r\n	<li>Disponible en Tecnología de Radiofrecuencia de 8.2 / 4.6 Mhz</li>\r\n	<li>Seguridad de fijación Standard o Súper-Lock</li>\r\n	<li>Pin metálico de cabeza plana</li>\r\n	<li>Dimensiones: 70 x 58 mm</li>\r\n	<li>Color: Negro / Beige</li>\r\n</ul>\r\n</div>', '/files/accesorios/1588806115.png', 0, 0, 0, '', '', '2020-05-06 23:01:54', 1),
(8, 'Sistema Mono-Antena de Radiofrecuencia 8.2 Mhz', 1, 'sistema-mono-radiofrecuencia-8-2-mhz', 'receptora', 1, 150, 0, 0, 0, '<h1><strong>ORION</strong></h1>\r\n\r\n<div>\r\n<ul>\r\n	<li>Sistema Mono-Antena de Radiofrecuencia 8.2 Mhz</li>\r\n	<li>Detecta eficientemente etiquetas adheribles y tags re-utilizables.</li>\r\n	<li>Estructura en aluminio electro-pintado en color gris claro.</li>\r\n	<li>Verdadero sistema “<strong>Hágalo usted mismo</strong>“. Para su instalación no requiere experiencia técnica ni ajustes especiales.</li>\r\n	<li>Avanzada tecnología electrónica que ajusta automáticamente sus parámetros de detección para un óptimo fucionamiento.</li>\r\n	<li>Sistema automático que le permite sincronizarse sin cables con hasta 5 sistemas similares.</li>\r\n	<li>Detecta la presencia prolongada de tags cercanos y lo señala de forma especial.</li>\r\n	<li>No requiere servicio técnico de ajuste, lo que representa total disponibilidad y grandes ahorros en mano de obra y gastos de viaje.</li>\r\n	<li>Un año de garantía en todas sus partes.</li>\r\n</ul>\r\n</div>', '/files/accesorios/1588807511.jpg', 0, 0, 0, '', '', '2020-05-06 23:25:10', 1),
(9, 'REMOVEDOR MAGNÉTICO DURALTAG', 1, 'removedor-magnetico-duraltag', '', 1, 150, 0, 0, 0, '<h1><span style=\"font-size:20px\"><strong>REMOVEDOR MAGNÉTICO DURALTAG</strong></span></h1>\r\n\r\n<ul>\r\n	<li>Tag anti-robo re-utilizable tradicional</li>\r\n	<li>Disponible en Tecnología de Radiofrecuencia de 8.2 Mhz</li>\r\n	<li>Seguridad de fijación Standard o Súper-Lock</li>\r\n	<li>Pin metálico de cabeza plana</li>\r\n	<li>Dimensiones: 52 x 43 mm</li>\r\n	<li>Color: Negro / Gris</li>\r\n</ul>', '/files/accesorios/1588810082.jpg', 0, 0, 0, '', '', '2020-05-06 23:42:43', 1),
(10, 'Sensor Mini Tag BLACK', 1, 'sensor-mini-tag-black', '', 0, 0, 0, 0, 0, '<ul>\r\n	<li>Tag anti-robo re-utilizable tradicional</li>\r\n	<li>Disponible en Tecnología Acusto-magnética de 58 Khz</li>\r\n	<li>Seguridad de fijación Súper-Lock</li>\r\n	<li>Pin metálico de cabeza plana</li>\r\n	<li>Dimensiones: 52 x 14 mm</li>\r\n	<li>Color: Gris claro</li>\r\n</ul>', '/files/accesorios/1588809968.png', 0, 0, 0, '', '', '2020-05-07 00:06:08', 1),
(13, 'Sensor Comercial STYLE', 1, 'sensor-comercial-style-13', '', 0, 0, 0, 0, 0, '<h1>STYLUS</h1>\r\n\r\n<div>\r\n<ul>\r\n	<li>Tag anti-robo re-utilizable tradicional</li>\r\n	<li>Disponible en Tecnología Acusto-magnética de 58 Khz</li>\r\n	<li>Seguridad de fijación Súper-Lock</li>\r\n	<li>Pin metálico de cabeza plana</li>\r\n	<li>Dimensiones: 52 x 14 mm</li>\r\n	<li>Color: Gris claro</li>\r\n</ul>\r\n</div>', '/files/accesorios/1588814211.png', 0, 0, 0, '', '', '2020-05-07 01:16:51', 1);

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
(5, 7, 17, 0, '2020-05-06 23:01:55'),
(8, 10, 17, 0, '2020-05-07 00:06:08'),
(16, 8, 17, 1, '2020-05-07 00:08:43'),
(18, 13, 17, 0, '2020-05-07 01:18:29'),
(23, 9, 17, 0, '2020-05-07 03:19:32'),
(24, 6, 17, 1, '2020-05-07 03:34:13');

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
(20, 7, 1),
(21, 7, 6),
(22, 7, 7),
(35, 10, 6),
(36, 10, 7),
(37, 10, 8),
(65, 13, 1),
(66, 13, 6),
(67, 13, 7),
(68, 9, 1),
(69, 9, 8),
(70, 9, 9);

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
(2, 'antenas', 'public/imgfrontend/bannerx/defaulta.jpg', '{\r\n  \"texto\":\"SOLUCIONES DE VIGILANCIA\",\r\n  \"color\":\"#fff\"\r\n}', '{\r\n  \"texto\":\"Resolution Max 4K\",\r\n  \"color\":\"#fff\"\r\n}', '{\r\n  \"texto\":\"Seguridad Retail\",\r\n  \"color\":\"#fff\"\r\n}', 'textoIzq', '2020-04-29 03:54:31'),
(3, 'sensores', 'public/imgfrontend/bannerx/defaulta.jpg', '{\r\n  \"texto\":\"SOLUCIONES DE VIGILANCIA\",\r\n  \"color\":\"#fff\"\r\n}', '{\r\n  \"texto\":\"Resolution Max 4K\",\r\n  \"color\":\"#fff\"\r\n}', '{\r\n  \"texto\":\"Seguridad Retail\",\r\n  \"color\":\"#fff\"\r\n}', 'textoIzq', '2020-04-30 03:12:53');

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
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `iddetalle_pedido` int(11) NOT NULL,
  `idpedido` int(11) NOT NULL,
  `idaccesorio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `tipo_negocio` varchar(50) NOT NULL,
  `cantidad_aprox_productos` int(11) NOT NULL,
  `num_entradas` int(11) NOT NULL,
  `nombre_empresa` varchar(70) NOT NULL,
  `ruc` int(11) NOT NULL,
  `nombre_representante` varchar(70) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 0
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
(1, '#ff6600', '#fff', '#F44336', 'public/imgfrontend/logo.png', 'public/imgfrontend/cart.png', 'public/imgfrontend/favicon.png', '[\r\n{\"red\":\"fa-facebook\",\"estilo\":\"facebookBlanco\",\"url\":\"http://facebook.com/\"},\r\n{\"red\":\"fa-twitter\",\"estilo\":\"twitterBlanco\",\"url\":\"http://twitter.com/\"},\r\n{\"red\":\"fa-instagram fa-1x\",\"estilo\":\"instagramBlanco\",\"url\":\"http://instagram.com/\"},\r\n{\"red\":\"fa-google-plus-g\",\"estilo\":\"googleBlanco\",\"url\":\"http://google.com/\"},\r\n{\"red\":\"fa-youtube\",\"estilo\":\"youtubeBlanco\",\"url\":\"http://youtube.com/\"}\r\n]', '2020-04-30 04:20:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idsubcategoria` int(11) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `descripcion` text NOT NULL,
  `rango` int(11) NOT NULL,
  `rango_option` tinyint(4) NOT NULL,
  `ruta` text NOT NULL,
  `nuevo` tinyint(4) NOT NULL,
  `entrega` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistas` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(60) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idcategoria`, `idsubcategoria`, `nombre`, `descripcion`, `rango`, `rango_option`, `ruta`, `nuevo`, `entrega`, `ventas`, `vistas`, `stock`, `imagen`, `estado`, `fecha`) VALUES
(15, 4, 3, 'EAS RF Antena de Acrílico Modelo 528 (RX-TX)', '<ul>\r\n	<li><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"line-height:2\"><strong>Sistema de dos antenas Transmisor y Receptor de Tecnología Acusto-magnética de 58Khz.</strong></span></span></li>\r\n	<li><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"line-height:2\"><strong>Atractivo diseño</strong></span></span></li>\r\n	<li><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"line-height:2\"><strong>Controlador digital a base de procesadores digitales de señales (DSP)</strong></span></span></li>\r\n	<li><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"line-height:2\"><strong>Alto rango de detección</strong></span></span></li>\r\n	<li><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"line-height:2\"><strong>Configuración de mult-antena para cubrir grandes accesos.</strong></span></span></li>\r\n	<li><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"line-height:2\"><strong>Fácil sincronización con otros sistemas.</strong></span></span></li>\r\n	<li><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"line-height:2\"><strong>Software de configuración interactiva de uso libre. No requiere pago de licencias ni condiciones especiales.</strong></span></span></li>\r\n	<li><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"line-height:2\"><strong>Un año de garantía en todas sus partes.</strong></span></span></li>\r\n</ul>', 150, 1, 'eas-rf-antena-de-acrilico-modelo-528-arx-txa-15', 1, 0, 0, 0, 0, '/files/productos/1588731057.jpg', 1, '2020-05-06 02:10:57'),
(17, 4, 3, 'Antenas RF 3NStar', '<h2><span style=\"font-size:28px\"><span style=\"color:#2c3e50\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>CARACTERÍSTICAS Y ESPECÍFICACIONES</strong></span></span></span></h2>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><span style=\"color:#16a085\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\">PROMATIC PLEXI</span></span></strong></span></div>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\">Fácil sincronización con otros sistemas.</span></li>\r\n	<li><span style=\"color:#000000\">Software de configuración interactiva de uso libre. No requiere pago de licencias ni condiciones especiales.</span></li>\r\n	<li><span style=\"color:#000000\">Un año de garantía en todas sus partes.</span></li>\r\n</ul>', 150, 1, 'antenas-rf-3nstar-17', 1, 0, 0, 0, 0, '/files/productos/1588737298.jpg', 1, '2020-05-06 04:06:41');

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
(1, 'public/imgfrontend/slide/default/back_default.jpg', 'slideOpcion2', 'public/imgfrontend/slide/slide1/calzado.png', '{\"top\": \"15%\", \"right\": \"\", \"width\": \"25%\", \"left\":\"15%\"}', '{\"top\": \"15%\", \"right\": \"15%\", \"width\": \"40%\", \"left\":\"\"}', '{\"texto\": \"TOOLS DE SEGURIDAD\", \"color\": \"#fff\"}', '{\"texto\": \"KIT HERRAMIENTAS TOOLS\", \"color\": \"#777\"}', '{\"texto\": \"Antihurto\", \"color\": \"#888\"}', '<button class=\"btn btn-default color-dominante-degree text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>\r\n', '#', '2020-04-29 05:48:21'),
(2, 'public/imgfrontend/slide/default/back_default11.jpg', 'slideOpcion2', 'public/imgfrontend/slide/slide2/curso.png', '{\"top\": \"15%\", \"right\": \"\", \"width\": \"25%\", \"left\":\"15%\"}', '{\"top\": \"15%\", \"right\": \"15%\", \"width\": \"40%\", \"left\":\"\"}', '{\"texto\": \"ANTENAS DE SEGURIDAD\", \"color\": \"#333\"}', '{\"texto\": \"KIT ANTENAS DE SEGURIDAD SD-123\", \"color\": \"#777\"}', '{\"texto\": \"Antihurto\", \"color\": \"#888\"}', '<button class=\"btn btn-default color-dominante-degree text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-04-29 05:21:08'),
(3, 'public/imgfrontend/slide/slide3/fondo2.jpg', 'slideOpcion1', '', '', '{\"top\": \"20%\", \"right\": \"\", \"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"Seguridad Retail\", \"color\": \"#fff\"}', '{\"texto\": \"Cotiza tus productos\", \"color\": \"#e5e5e5\"}\r\n', '{\"texto\": \"al instante\", \"color\": \"#cccccc\"}', '<button class=\"btn btn-default color-dominante-degree text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-04-29 05:07:58'),
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
(1, 'Jesus Alberto', 'DNI', '47179801', 'Urb La Perla', '989944394', 'abantybredda@gmail.com', 'Programador', 'abanty', '55038e1231d7cbb65eee689183d77fede660f7653737078a333afe4b75b4c577', '1588627537.jpg', 1),
(2, 'Omar Fernando', 'DNI', '47474747', 'Lima', '989977665', 'omar@gmail.com', 'Asistente', 'omarfer', '0feae16d55365acf07fe9f909834361ba6ee606854746539230bdc84a6a24cee', '1588898270.jpg', 1),
(3, 'General', 'DNI', '00000', 'SD', '00000', '0000@gmail.com', 'tester', 'general', '0feae16d55365acf07fe9f909834361ba6ee606854746539230bdc84a6a24cee', '1582405152.PNG', 1);

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
(27, 3, 1),
(28, 3, 2),
(29, 3, 3),
(30, 3, 4),
(31, 3, 5),
(51, 1, 1),
(52, 1, 2),
(53, 1, 3),
(54, 1, 4),
(55, 1, 5),
(58, 2, 1),
(59, 2, 2);

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
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`iddetalle_pedido`),
  ADD KEY `fk_idpedido_this` (`idpedido`),
  ADD KEY `fk_idaccesorio_this` (`idaccesorio`);

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
  ADD KEY `fk_idcategoria_p` (`idcategoria`),
  ADD KEY `fk_idsubcategoria_p` (`idsubcategoria`);

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
  MODIFY `idaccesorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `accesorio_producto`
--
ALTER TABLE `accesorio_producto`
  MODIFY `idaccesorio_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `accesorio_tipo_producto`
--
ALTER TABLE `accesorio_tipo_producto`
  MODIFY `idaccesorio_tipo_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `iddetalle_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

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
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `fk_idaccesorio_this` FOREIGN KEY (`idaccesorio`) REFERENCES `accesorio` (`idaccesorio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_idpedido_this` FOREIGN KEY (`idpedido`) REFERENCES `pedido` (`idpedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_idcategoria_p` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_idsubcategoria_p` FOREIGN KEY (`idsubcategoria`) REFERENCES `subcategoria` (`idsubcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
