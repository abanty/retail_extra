-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2020 a las 23:30:13
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
-- Base de datos: `proyectojo`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio_tipo_producto`
--

CREATE TABLE `accesorio_tipo_producto` (
  `idaccesorio_tipo_producto` int(11) NOT NULL,
  `idaccesorio` int(11) NOT NULL,
  `idtipo_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(4, 'Antenas', 'bg-yellow', 'rgb(243, 156, 18)', 'antenas', 'public/imgfrontend/bannertest/banner4.png', '[ {\"url1\":\"public/imgfrontend/galeriatest/galeria_4_1.png\",\"url2\":\"public/imgfrontend/galeriatest/galeria_4_2.png\",\"url3\":\"public/imgfrontend/galeriatest/galeria_4_3.png\",\"url4\":\"public/imgfrontend/galeriatest/galeria_4_4.png\"}\r\n]', 1),
(12, 'abanty', 'bg-lime', 'rgb(1, 255, 112)', '', '', '', 1);

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
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` int(11) NOT NULL,
  `razon_social` varchar(70) NOT NULL,
  `ruc` int(20) NOT NULL,
  `direccion` text NOT NULL,
  `telefono1` int(11) NOT NULL,
  `telefono2` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `razon_social`, `ruc`, `direccion`, `telefono1`, `telefono2`, `fecha`) VALUES
(14, 'Savedra SA', 2147483647, 'lacolmena', 989944394, 991611444, '2020-05-19 17:56:37');

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
(5, 'Plantilla'),
(6, 'Reportes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `idplantilla` int(11) NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorDominante` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `extra_logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`idplantilla`, `textoSuperior`, `colorDominante`, `logo`, `extra_logo`, `icono`, `redesSociales`, `fecha`) VALUES
(14, '#777777', '#5cb85c', '/public/logos/logos_plantilla/1589912019.png', '/public/logos/logos_extra/15899109980.png', '/public/logos/logos_favicon/15899109981.png', '[\r\n    {\r\n        \"red\": \"fa-facebook\",\r\n        \"estilo\": \"facebookBlanco\",\r\n        \"url\": \"\"\r\n    },\r\n    {\r\n        \"red\": \"fa-google-plus-g\",\r\n        \"estilo\": \"googleblanco\",\r\n        \"url\": \"\"\r\n    },\r\n    {\r\n        \"red\": \"fa-twitter\",\r\n        \"estilo\": \"twitterblanco\",\r\n        \"url\": \"\"\r\n    },\r\n    {\r\n        \"red\": \"fa-instagram\",\r\n        \"estilo\": \"instagramblanco\",\r\n        \"url\": \"\"\r\n    },\r\n    {\r\n        \"red\": \"fa-youtube\",\r\n        \"estilo\": \"youtubeblanco\",\r\n        \"url\": \"\"\r\n    }\r\n]', '2020-05-19 18:13:39');

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
(2, 3, 1, 'PRODUCTO 1', '<h4><span style=\"color:#c0392b\"><strong>ESPECIFICACIONES:</strong></span></h4>\r\n\r\n<ul>\r\n	<li>\r\n	<ul>\r\n		<li>Nombre: RF Antena</li>\r\n		<li>Modelo: 528 acrílico</li>\r\n		<li>Operación de voltaje：AC (50~60hz)110~220V ≤15W</li>\r\n		<li>Frecuencia: 8.2Mhz/10Mhz</li>\r\n		<li>\r\n		<h2 style=\"font-style:italic\">Frecuencia de escaneo: 150/160/170/180</h2>\r\n		</li>\r\n		<li>Modo de trabajo：TX+RX</li>\r\n		<li>Tarjeta madre: 3920</li>\r\n		<li>Rango de detección: 0.9-2.4 metros (Depende del tag)</li>\r\n		<li>Tipo de material: Acrílico</li>\r\n		<li>Medida de la antena: 1580*380*22mm</li>\r\n		<li>Medida del paquete: 1660*475*150mm</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<div> </div>', 120, 1, 'producto-1-2', 1, 0, 0, 0, 10, 'files/productos/1590085988.png', 1, '2020-05-21 20:07:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `idslide` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
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
  `orden` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`idslide`, `nombre`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `orden`, `fecha`) VALUES
(11, 'STYLES', 'public/recursos/slide11/fondo1589768043.png', 'slideOpcion1', 'public/recursos/slide11/producto1589855412.png', '{\"top\":\"15\",\"right\":\"14\",\"left\":\"\",\"width\":\"16\"}', '{\"top\":\"20\",\"right\":\"\",\"left\":\"14.816262705238467\",\"width\":\"40\"}', '{\"texto\":\"Promociones\",\"color\":\"#390147\"}', '{\"texto\":\"Temporada\",\"color\":\"#7a0404\"}', '{\"texto\":\"de invierno\",\"color\":\"#000000\"}', 'VER PRODUCTO', '#', 1, '2020-05-21 21:15:15'),
(14, '', 'public/img/fondo.jpg', 'slideOpcion1', '', '', '{\"top\":\"20\",\"right\":\"\",\"left\":\"15\",\"width\":\"40\"}', '{\"texto\":\"Lorem Ipsum\",\"color\":\"#333\"}', '{\"texto\":\"Lorem Ipsum dolor sit\",\"color\":\"#777\"}', '{\"texto\":\"Lorem Ipsum dolor sit\",\"color\":\"#888\"}', 'VER PRODUCTO', '#', 2, '2020-05-19 17:32:28'),
(15, '', 'public/img/fondo.jpg', 'slideOpcion1', '', '', '{\"top\":\"20\",\"right\":\"\",\"left\":\"15\",\"width\":\"40\"}', '{\"texto\":\"Lorem Ipsum\",\"color\":\"#333\"}', '{\"texto\":\"Lorem Ipsum dolor sit\",\"color\":\"#777\"}', '{\"texto\":\"Lorem Ipsum dolor sit\",\"color\":\"#888\"}', 'VER PRODUCTO', '#', 3, '2020-05-21 21:15:08');

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
(5, 4, 'Antenas Mono', 'Antenas Mono', 'antenas-mono', 0, 1),
(10, 12, 'bredda', 'y si', '', 0, 1);

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
(31, 3, 6),
(58, 2, 1),
(59, 2, 2),
(60, 3, 5),
(67, 1, 1),
(68, 1, 3);

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
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`);

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
  MODIFY `idaccesorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `accesorio_producto`
--
ALTER TABLE `accesorio_producto`
  MODIFY `idaccesorio_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `accesorio_tipo_producto`
--
ALTER TABLE `accesorio_tipo_producto`
  MODIFY `idaccesorio_tipo_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `iddetalle_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `idplantilla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `idslide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `idsubcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
