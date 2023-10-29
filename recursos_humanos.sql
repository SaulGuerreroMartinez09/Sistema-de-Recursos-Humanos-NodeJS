-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2023 a las 01:04:47
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recursos_humanos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `Id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`Id`, `nombre`, `correo`, `contraseña`) VALUES
(1, 'Jose Saul Guerrero', 'saul@gmail.com', '12345'),
(2, 'Martin Zamora', 'martin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `empleado_id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(16) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`empleado_id`, `nombre`, `apellido`, `telefono`, `correo`, `direccion`) VALUES
(100, 'Saúl', 'Guerrero', '4411095065', 'saulguerrero569@gmail.com', 'El Granjeno, Granjeno, 76632 Tolimán, Qro.'),
(101, 'María', 'González', '3312345678', 'maria.gonzalez@yahoo.com', 'Colonia Del Valle, Ciudad de México, 03100 CDMX'),
(102, 'Carlos', 'López', '8112345678', 'carlos.lopez@hotmail.com', 'Centro, Monterrey, 64000 Monterrey, NL'),
(103, 'Laura', 'Martínez', '3331234567', 'laura.martinez@outlook.com', 'Colonia Nueva, Guadalajara, 44100 Guadalajara, Jalisco'),
(104, 'Andrés', 'Hernández', '2223456789', 'andres.hernandez@gmail.com', 'Zona Centro, Puebla, 72000 Puebla, Pue.'),
(105, 'Sofía', 'Díaz', '6642345678', 'sofia.diaz@yahoo.com', 'Colonia Moderna, Tijuana, 22000 Tijuana, BC'),
(106, 'Javier', 'Moreno', '9981234567', 'javier.moreno@hotmail.com', 'Centro, Cancún, 77500 Cancún, QRoo.'),
(107, 'Ana', 'Jiménez', '6672345678', 'ana.jimenez@gmail.com', 'Colonia Revolución, Culiacán, 80000 Culiacán, Sin.'),
(108, 'Diego', 'Torres', '9992345678', 'diego.torres@yahoo.com', 'Centro, Mérida, 97000 Mérida, Yuc.'),
(109, 'Elena', 'Rodríguez', '9512345678', 'elena.rodriguez@hotmail.com', 'Colonia Centro, Oaxaca, 68000 Oaxaca, Oax.'),
(110, 'Alejandro', 'Gómez', '7223456789', 'alejandro.gomez@gmail.com', 'Zona Este, Toluca, 50000 Toluca, Edomex'),
(111, 'Valeria', 'Herrera', '6142345678', 'valentina.herrera@yahoo.com', 'Zona Norte, Chihuahua, 31000 Chihuahua, Chih.'),
(112, 'Gabriel', 'Fernández', '4441234567', 'gabriel.fernandez@outlook.com', 'Colonia San Felipe, San Luis Potosí, 78000 San Luis Potosí, SLP'),
(113, 'Camila', 'Sánchez', '4422345678', 'camila.sanchez@gmail.com', 'Zona Industrial, Querétaro, 76000 Querétaro, Qro.'),
(114, 'Martín', 'Lara', '4431234567', 'martin.lara@yahoo.com', 'Centro, Morelia, 58000 Morelia, Mich.'),
(115, 'Isabel', 'Castro', '8711234567', 'isabel.castro@hotmail.com', 'Colonia Centro, Torreón, 27000 Torreón, Coah.'),
(116, 'Adrián', 'Ramos', '6181234567', 'adrian.ramos@gmail.com', 'Zona Centro, Durango, 34000 Durango, Dgo.'),
(117, 'Natalia', 'Ortega', '4492345678', 'natalia.ortega@yahoo.com', 'Centro, Aguascalientes, 20000 Aguascalientes, Ags.'),
(118, 'Lucas', 'Vargas', '8331234567', 'lucas.vargas@hotmail.com', 'Zona Norte, Tampico, 89000 Tampico, Tamps.'),
(119, 'Diana', 'Ruiz', '2292345678', 'diana.ruiz@gmail.com', 'Colonia América, Veracruz, 91700 Veracruz, Ver.'),
(120, 'Luisa', 'Martínez', '3332345678', 'luisa.martinez@gmail.com', 'Colonia Bella Vista, Guadalajara, 44150 Guadalajara, Jalisco'),
(121, 'Roberto', 'Fernández', '6643456789', 'roberto.fernandez@yahoo.com', 'Zona Este, Tijuana, 22300 Tijuana, BC'),
(122, 'Carolina', 'García', '9982345678', 'carolina.garcia@hotmail.com', 'Colonia Reforma, Cancún, 77530 Cancún, QRoo.'),
(123, 'Joaquín', 'Sánchez', '9513456789', 'joaquin.sanchez@gmail.com', 'Centro, Oaxaca, 68100 Oaxaca, Oax.'),
(124, 'Nora', 'López', '6143456789', 'nora.lopez@yahoo.com', 'Colonia Juárez, Chihuahua, 31300 Chihuahua, Chih.'),
(125, 'Miguel', 'Hernández', '4442345678', 'miguel.hernandez@hotmail.com', 'Colonia Jardín, San Luis Potosí, 78210 San Luis Potosí, SLP'),
(126, 'Verónica', 'Torres', '2223456789', 'veronica.torres@gmail.com', 'Colonia Reforma, Puebla, 72000 Puebla, Pue.'),
(127, 'Ricardo', 'Díaz', '6183456789', 'ricardo.diaz@yahoo.com', 'Zona Industrial, Durango, 34200 Durango, Dgo.'),
(128, 'Gabriela', 'Morales', '4493456789', 'gabriela.morales@hotmail.com', 'Colonia Centro, Aguascalientes, 20030 Aguascalientes, Ags.'),
(129, 'Francisco', 'Gómez', '2293456789', 'francisco.gomez@gmail.com', 'Colonia Centro, Veracruz, 91800 Veracruz, Ver.'),
(130, 'Valeria', 'Gutiérrez', '8713456789', 'valeria.gutierrez@yahoo.com', 'Colonia Doctores, Torreón, 27010 Torreón, Coah.'),
(131, 'Martín', 'Rojas', '4423456789', 'martin.rojas@hotmail.com', 'Colonia Centro, Querétaro, 76000 Querétaro, Qro.'),
(132, 'Lorena', 'Mendoza', '6623456789', 'lorena.mendoza@gmail.com', 'Zona Norte, Hermosillo, 83100 Hermosillo, Son.'),
(133, 'Andrés', 'Castañeda', '2223456789', 'andres.castaneda@yahoo.com', 'Colonia Centro, Xalapa, 91000 Xalapa, Ver.'),
(134, 'Paola', 'Martínez', '9993456789', 'paola.martinez@hotmail.com', 'Zona Industrial, Mérida, 97210 Mérida, Yuc.'),
(135, 'Alejandro', 'Herrera', '6182345678', 'alejandro.herrera@gmail.com', 'Colonia Juárez, Zacatecas, 98000 Zacatecas, Zac.'),
(136, 'María', 'Santos', '4773456789', 'maria.santos@yahoo.com', 'Colonia La Paz, León, 37160 León, Gto.'),
(137, 'Javier', 'Vega', '6142345678', 'javier.vega@hotmail.com', 'Colonia Centro, Chihuahua, 31050 Chihuahua, Chih.'),
(138, 'Liliana', 'Pérez', '3333456789', 'liliana.perez@gmail.com', 'Colonia Providencia, Guadalajara, 44630 Guadalajara, Jalisco'),
(139, 'Héctor', 'Hernández', '2222345678', 'hector.hernandez@yahoo.com', 'Colonia Centro, Puebla, 72010 Puebla, Pue.'),
(140, 'Carmen', 'Martínez', '9982345678', 'carmen.martinez@hotmail.com', 'Zona Hotelera, Cancún, 77500 Cancún, QRoo.'),
(141, 'Adrián', 'García', '6183456789', 'adrian.garcia@gmail.com', 'Colonia Centro, Durango, 34010 Durango, Dgo.'),
(142, 'Laura', 'Hernández', '6143456789', 'laura.hernandez@yahoo.com', 'Colonia Centro, Chihuahua, 31000 Chihuahua, Chih.'),
(143, 'Mario', 'Díaz', '6623456789', 'mario.diaz@hotmail.com', 'Colonia San Benito, Hermosillo, 83190 Hermosillo, Son.'),
(144, 'Ana', 'Luna', '2293456789', 'ana.luna@gmail.com', 'Colonia Centro, Veracruz, 91700 Veracruz, Ver.'),
(145, 'Luis', 'Romero', '8713456789', 'luis.romero@yahoo.com', 'Colonia Doctores, Torreón, 27000 Torreón, Coah.'),
(146, 'Natalia', 'González', '4422345678', 'natalia.gonzalez@hotmail.com', 'Colonia Centro, Querétaro, 76090 Querétaro, Qro.'),
(147, 'Jorge', 'Martínez', '6623456789', 'jorge.martinez@gmail.com', 'Colonia Valle, Culiacán, 80030 Culiacán, Sin.'),
(148, 'Elena', 'Ríos', '4442345678', 'elena.rios@yahoo.com', 'Colonia Centro, San Luis Potosí, 78000 San Luis Potosí, SLP'),
(149, 'Diana', 'Gómez', '3332345678', 'diana.gomez@gmail.com', 'Colonia Reforma, Oaxaca, 68030 Oaxaca, Oax.'),
(150, 'Ricardo', 'Martínez', '2222345678', 'ricardo.martinez@yahoo.com', 'Colonia Centro, Puebla, 72020 Puebla, Pue.'),
(151, 'Karla', 'Hernández', '9982345678', 'karla.hernandez@hotmail.com', 'Colonia Tulum, Cancún, 77505 Cancún, QRoo.'),
(152, 'Javier', 'López', '6143456789', 'javier.lopez@gmail.com', 'Colonia Centro, Chihuahua, 31100 Chihuahua, Chih.'),
(153, 'Sofía', 'Díaz', '4442345678', 'sofia.diaz@yahoo.com', 'Colonia Roma, Monterrey, 64700 Monterrey, NL'),
(154, 'Luis', 'García', '2293456789', 'luis.garcia@hotmail.com', 'Colonia Centro, Veracruz, 91850 Veracruz, Ver.'),
(155, 'Nora', 'Pérez', '8713456789', 'nora.perez@gmail.com', 'Colonia Doctores, Torreón, 27050 Torreón, Coah.'),
(156, 'Carlos', 'Fernández', '4422345678', 'carlos.fernandez@yahoo.com', 'Colonia San Felipe, Querétaro, 76100 Querétaro, Qro.'),
(157, 'Laura', 'Martínez', '6183456789', 'laura.martinez@hotmail.com', 'Colonia Centro, Durango, 34250 Durango, Dgo.'),
(158, 'Diego', 'Ramírez', '9993456789', 'diego.ramirez@gmail.com', 'Colonia Centro, Mérida, 97100 Mérida, Yuc.'),
(159, 'Mariana', 'Herrera', '6623456789', 'mariana.herrera@yahoo.com', 'Colonia Centro, Hermosillo, 83150 Hermosillo, Son.'),
(160, 'Joaquín', 'Rojas', '4442345678', 'joaquin.rojas@hotmail.com', 'Colonia Jardines, San Luis Potosí, 78240 San Luis Potosí, SLP'),
(161, 'Valentina', 'Castro', '6562345678', 'valentina.castro@gmail.com', 'Colonia Juárez, Ciudad Juárez, 32000 Ciudad Juárez, Chih.'),
(162, 'Alejandro', 'Luna', '2222345678', 'alejandro.luna@yahoo.com', 'Colonia Centro, Xalapa, 91100 Xalapa, Ver.'),
(163, 'Natalia', 'Vega', '6622345678', 'natalia.vega@hotmail.com', 'Colonia Centro, Culiacán, 80060 Culiacán, Sin.'),
(164, 'Adrián', 'Guzmán', '3122345678', 'adrian.guzman@gmail.com', 'Colonia Centro, Colima, 28000 Colima, Col.'),
(165, 'Emma', 'Silva', '6182345678', 'emma.silva@yahoo.com', 'Colonia Centro, Zacatecas, 98050 Zacatecas, Zac.'),
(166, 'Mateo', 'Reyes', '8712345678', 'mateo.reyes@hotmail.com', 'Colonia Centro, Torreón, 27060 Torreón, Coah.'),
(167, 'Camila', 'Fuentes', '6183456789', 'camila.fuentes@gmail.com', 'Colonia Centro, Durango, 34260 Durango, Dgo.'),
(168, 'Diego', 'Martínez', '2222345678', 'diego.martinez@yahoo.com', 'Colonia Centro, Puebla, 72030 Puebla, Pue.'),
(169, 'Liliana', 'Ortega', '6623456789', 'liliana.ortega@hotmail.com', 'Colonia Centro, Hermosillo, 83200 Hermosillo, Son.'),
(170, 'Carlos', 'Sánchez', '4442345678', 'carlos.sanchez@gmail.com', 'Colonia Jardín, San Luis Potosí, 78250 San Luis Potosí, SLP'),
(171, 'Valeria', 'García', '6182345678', 'valeria.garcia@yahoo.com', 'Colonia Centro, Durango, 34300 Durango, Dgo.'),
(172, 'Jorge', 'Ramos', '9993456789', 'jorge.ramos@hotmail.com', 'Colonia Centro, Mérida, 97250 Mérida, Yuc.'),
(173, 'Sara', 'Chávez', '6562345678', 'sara.chavez@gmail.com', 'Colonia Juárez, Ciudad Juárez, 32100 Ciudad Juárez, Chih.'),
(174, 'Luis', 'Hernández', '3333456789', 'luis.hernandez@gmail.com', 'Colonia Centro, Toluca, 50070 Toluca, Edomex'),
(175, 'Sofía', 'Martínez', '2223456789', 'sofia.martinez@yahoo.com', 'Colonia Reforma, Puebla, 72100 Puebla, Pue.'),
(176, 'Joaquín', 'García', '9983456789', 'joaquin.garcia@hotmail.com', 'Colonia Tulum, Cancún, 77515 Cancún, QRoo.'),
(177, 'Carolina', 'Rojas', '6183456789', 'carolina.rojas@gmail.com', 'Colonia Centro, Zacatecas, 98100 Zacatecas, Zac.'),
(178, 'Diego', 'Fernández', '4443456789', 'diego.fernandez@yahoo.com', 'Colonia Roma, Monterrey, 64750 Monterrey, NL'),
(179, 'Mariana', 'Díaz', '2293456789', 'mariana.diaz@hotmail.com', 'Colonia Centro, Veracruz, 91900 Veracruz, Ver.'),
(180, 'Natalia', 'Castro', '8713456789', 'natalia.castro@gmail.com', 'Colonia Doctores, Torreón, 27100 Torreón, Coah.'),
(181, 'Carlos', 'Martínez', '4423456789', 'carlos.martinez@yahoo.com', 'Colonia San Felipe, Querétaro, 76150 Querétaro, Qro.'),
(182, 'Laura', 'González', '6183456789', 'laura.gonzalez@hotmail.com', 'Colonia Centro, Durango, 34310 Durango, Dgo.'),
(183, 'Roberto', 'Herrera', '9993456789', 'roberto.herrera@gmail.com', 'Colonia Centro, Mérida, 97260 Mérida, Yuc.'),
(184, 'Ana', 'López', '6623456789', 'ana.lopez@yahoo.com', 'Colonia Centro, Hermosillo, 83250 Hermosillo, Son.'),
(185, 'Javier', 'Pérez', '4443456789', 'javier.perez@hotmail.com', 'Colonia Jardines, San Luis Potosí, 78300 San Luis Potosí, SLP'),
(186, 'Liliana', 'Ramírez', '6563456789', 'liliana.ramirez@gmail.com', 'Colonia Juárez, Ciudad Juárez, 32200 Ciudad Juárez, Chih.'),
(187, 'Ricardo', 'Ortega', '2223456789', 'ricardo.ortega@yahoo.com', 'Colonia Centro, Xalapa, 91150 Xalapa, Ver.'),
(188, 'Karla', 'Vega', '6623456789', 'karla.vega@hotmail.com', 'Colonia Centro, Culiacán, 80070 Culiacán, Sin.'),
(189, 'Jorge', 'Gómez', '3123456789', 'jorge.gomez@gmail.com', 'Colonia Centro, Colima, 28100 Colima, Col.'),
(190, 'Valentina', 'Sánchez', '6183456789', 'valentina.sanchez@yahoo.com', 'Colonia Centro, Zacatecas, 98200 Zacatecas, Zac.'),
(191, 'Rosa', 'Castillo', '8713456789', 'rosa.castillo@hotmail.com', 'Colonia Centro, Torreón, 27150 Torreón, Coah.'),
(192, 'Andrés', 'Herrera', '6183456789', 'andres.herrera@gmail.com', 'Colonia Centro, Durango, 34320 Durango, Dgo.'),
(193, 'Sara', 'González', '2223456789', 'sara.gonzalez@yahoo.com', 'Colonia Centro, Puebla, 72150 Puebla, Pue.'),
(194, 'Fernando', 'Martínez', '6623456789', 'fernando.martinez@hotmail.com', 'Colonia Centro, Hermosillo, 83300 Hermosillo, Son.'),
(195, 'Paola', 'Ortiz', '4443456789', 'paola.ortiz@gmail.com', 'Colonia Jardín, San Luis Potosí, 78350 San Luis Potosí, SLP'),
(196, 'Diego', 'Castañeda', '6183456789', 'diego.castaneda@yahoo.com', 'Colonia Centro, Durango, 34330 Durango, Dgo.'),
(197, 'Nora', 'Santos', '9993456789', 'nora.santos@hotmail.com', 'Colonia Centro, Mérida, 97270 Mérida, Yuc.'),
(198, 'Adrián', 'Vargas', '6563456789', 'adrian.vargas@gmail.com', 'Colonia Juárez, Ciudad Juárez, 32250 Ciudad Juárez, Chih.'),
(199, 'Eduardo', 'Herrera', '3334567890', 'eduardo.herrera@gmail.com', 'Colonia Centro, Toluca, 50120 Toluca, Edomex'),
(200, 'Gabriela', 'Soto', '2225678901', 'gabriela.soto@yahoo.com', 'Colonia Reforma, Puebla, 72210 Puebla, Pue.'),
(201, 'Miguel', 'Morales', '9986789012', 'miguel.morales@hotmail.com', 'Colonia Tulum, Cancún, 77575 Cancún, QRoo.'),
(202, 'Valeria', 'Castro', '6187890123', 'valeria.castro@gmail.com', 'Colonia Centro, Zacatecas, 98350 Zacatecas, Zac.'),
(203, 'Julia', 'Gómez', '4448901234', 'julia.gomez@yahoo.com', 'Colonia Roma, Monterrey, 64850 Monterrey, NL'),
(204, 'Oscar', 'Ríos', '2299012345', 'oscar.rios@hotmail.com', 'Colonia Centro, Veracruz, 92050 Veracruz, Ver.'),
(205, 'Renata', 'Mendoza', '8710123456', 'renata.mendoza@gmail.com', 'Colonia Doctores, Torreón, 27300 Torreón, Coah.'),
(206, 'Diego', 'Suarez', '4421234567', 'diego.suarez@yahoo.com', 'Colonia San Felipe, Querétaro, 76250 Querétaro, Qro.'),
(207, 'Camila', 'Torres', '6182345678', 'camila.torres@hotmail.com', 'Colonia Centro, Durango, 34430 Durango, Dgo.'),
(208, 'Carlos', 'Martínez', '9993456789', 'carlos.martinez@gmail.com', 'Colonia Centro, Mérida, 97350 Mérida, Yuc.'),
(209, 'Adriana', 'Fernández', '6624567890', 'adriana.fernandez@yahoo.com', 'Colonia Centro, Hermosillo, 83500 Hermosillo, Son.'),
(210, 'Javier', 'Santos', '4445678901', 'javier.santos@hotmail.com', 'Colonia Jardines, San Luis Potosí, 78500 San Luis Potosí, SLP'),
(211, 'Fernanda', 'López', '6566789012', 'fernanda.lopez@gmail.com', 'Colonia Juárez, Ciudad Juárez, 32400 Ciudad Juárez, Chih.'),
(212, 'Erick', 'García', '2227890123', 'erick.garcia@yahoo.com', 'Colonia Centro, Xalapa, 91300 Xalapa, Ver.'),
(213, 'Paola', 'Mendoza', '6629012345', 'paola.mendoza@hotmail.com', 'Colonia Centro, Culiacán, 80150 Culiacán, Sin.'),
(214, 'Ricardo', 'Ortiz', '3120123456', 'ricardo.ortiz@gmail.com', 'Colonia Centro, Colima, 28300 Colima, Col.'),
(215, 'Sara', 'Ramírez', '6181234567', 'sara.ramirez@yahoo.com', 'Colonia Centro, Zacatecas, 98500 Zacatecas, Zac.'),
(216, 'Alejandro', 'Sánchez', '8712345678', 'alejandro.sanchez@hotmail.com', 'Colonia Centro, Torreón, 27400 Torreón, Coah.'),
(217, 'Mariana', 'Hernández', '6183456789', 'mariana.hernandez@gmail.com', 'Colonia Centro, Durango, 34440 Durango, Dgo.'),
(218, 'Jorge', 'Guzmán', '2224567890', 'jorge.guzman@yahoo.com', 'Colonia Centro, Puebla, 72300 Puebla, Pue.'),
(219, 'Valentina', 'Suarez', '6625678901', 'valentina.suarez@hotmail.com', 'Colonia Centro, Hermosillo, 83550 Hermosillo, Son.'),
(220, 'Roberto', 'Díaz', '4446789012', 'roberto.diaz@gmail.com', 'Colonia Jardín, San Luis Potosí, 78600 San Luis Potosí, SLP'),
(221, 'Elena', 'Castro', '6188901234', 'elena.castro@yahoo.com', 'Colonia Centro, Durango, 34450 Durango, Dgo.'),
(222, 'Miguel', 'Martínez', '9990123456', 'miguel.martinez@hotmail.com', 'Colonia Centro, Mérida, 97400 Mérida, Yuc.'),
(223, 'Ana', 'Santos', '6562345678', 'ana.santos@gmail.com', 'Colonia Juárez, Ciudad Juárez, 32500 Ciudad Juárez, Chih.'),
(224, 'Diana', 'López', '3332345678', 'diana.lopez@gmail.com', 'Colonia Centro, Toluca, 50150 Toluca, Edomex'),
(225, 'Ricardo', 'Ortega', '2222345678', 'ricardo.ortega@yahoo.com', 'Colonia Reforma, Puebla, 72260 Puebla, Pue.'),
(226, 'Karla', 'Castillo', '9982345678', 'karla.castillo@hotmail.com', 'Colonia Tulum, Cancún, 77585 Cancún, QRoo.'),
(227, 'Joaquín', 'Ramos', '6182345678', 'joaquin.ramos@gmail.com', 'Colonia Centro, Zacatecas, 98450 Zacatecas, Zac.'),
(228, 'Sara', 'Guzmán', '4442345678', 'sara.guzman@yahoo.com', 'Colonia Roma, Monterrey, 64870 Monterrey, NL'),
(229, 'Eduardo', 'Martínez', '2292345678', 'eduardo.martinez@hotmail.com', 'Colonia Centro, Veracruz, 92080 Veracruz, Ver.'),
(230, 'Laura', 'Fernández', '8712345678', 'laura.fernandez@gmail.com', 'Colonia Doctores, Torreón, 27500 Torreón, Coah.'),
(231, 'Diego', 'Cervantes', '4422345678', 'diego.cervantes@yahoo.com', 'Colonia San Felipe, Querétaro, 76300 Querétaro, Qro.'),
(232, 'Natalia', 'Gómez', '6182345678', 'natalia.gomez@hotmail.com', 'Colonia Centro, Durango, 34460 Durango, Dgo.'),
(233, 'Roberto', 'Sánchez', '9992345678', 'roberto.sanchez@gmail.com', 'Colonia Centro, Mérida, 97450 Mérida, Yuc.'),
(234, 'Valentina', 'Pérez', '6622345678', 'valentina.perez@yahoo.com', 'Colonia Centro, Hermosillo, 83600 Hermosillo, Son.'),
(235, 'Carlos', 'Castro', '4442345678', 'carlos.castro@hotmail.com', 'Colonia Jardines, San Luis Potosí, 78650 San Luis Potosí, SLP'),
(236, 'Mariana', 'García', '6562345678', 'mariana.garcia@gmail.com', 'Colonia Juárez, Ciudad Juárez, 32600 Ciudad Juárez, Chih.'),
(237, 'Luis', 'Santos', '2222345678', 'luis.santos@yahoo.com', 'Colonia Centro, Xalapa, 91350 Xalapa, Ver.'),
(238, 'Paola', 'Torres', '6622345678', 'paola.torres@hotmail.com', 'Colonia Centro, Culiacán, 80200 Culiacán, Sin.'),
(239, 'Jorge', 'Rojas', '3122345678', 'jorge.rojas@gmail.com', 'Colonia Centro, Colima, 28400 Colima, Col.'),
(240, 'Andrés', 'Hernández', '6182345678', 'andres.hernandez@yahoo.com', 'Colonia Centro, Zacatecas, 98550 Zacatecas, Zac.'),
(241, 'Sofía', 'Martínez', '8712345678', 'sofia.martinez@hotmail.com', 'Colonia Centro, Torreón, 27600 Torreón, Coah.'),
(242, 'Erick', 'Gómez', '6182345678', 'erick.gomez@gmail.com', 'Colonia Centro, Durango, 34470 Durango, Dgo.'),
(243, 'Nora', 'Luna', '2222345678', 'nora.luna@yahoo.com', 'Colonia Centro, Puebla, 72350 Puebla, Pue.'),
(244, 'Diego', 'Mendoza', '6622345678', 'diego.mendoza@hotmail.com', 'Colonia Centro, Hermosillo, 83650 Hermosillo, Son.'),
(245, 'Adriana', 'Silva', '4442345678', 'adriana.silva@gmail.com', 'Colonia Jardín, San Luis Potosí, 78700 San Luis Potosí, SLP'),
(246, 'Ricardo', 'Herrera', '6182345678', 'ricardo.herrera@yahoo.com', 'Colonia Centro, Durango, 34480 Durango, Dgo.'),
(247, 'Elena', 'Ramírez', '9992345678', 'elena.ramirez@hotmail.com', 'Colonia Centro, Mérida, 97470 Mérida, Yuc.'),
(248, 'Miguel', 'Fuentes', '6562345678', 'miguel.fuentes@yahoo.com', 'Colonia Juárez, Ciudad Juárez, 32700 Ciudad Juárez, Chih.'),
(249, 'Luisa', 'Martínez', '3333456123', 'luisa.martinez@gmail.com', 'Colonia Centro, Toluca, 50170 Toluca, Edomex'),
(250, 'Carlos', 'Santos', '2224567123', 'carlos.santos@yahoo.com', 'Colonia Reforma, Puebla, 72270 Puebla, Pue.'),
(251, 'Elena', 'Gómez', '9986787123', 'elena.gomez@hotmail.com', 'Colonia Tulum, Cancún, 77595 Cancún, QRoo.'),
(252, 'Javier', 'Castro', '6187898123', 'javier.castro@gmail.com', 'Colonia Centro, Zacatecas, 98470 Zacatecas, Zac.'),
(253, 'Sofía', 'Díaz', '4448909123', 'sofia.diaz@yahoo.com', 'Colonia Roma, Monterrey, 64890 Monterrey, NL'),
(254, 'Diego', 'Ramírez', '2299010123', 'diego.ramirez@hotmail.com', 'Colonia Centro, Veracruz, 92100 Veracruz, Ver.'),
(255, 'Adriana', 'Hernández', '8711012123', 'adriana.hernandez@gmail.com', 'Colonia Doctores, Torreón, 27700 Torreón, Coah.'),
(256, 'Fernando', 'Luna', '4421213123', 'fernando.luna@yahoo.com', 'Colonia San Felipe, Querétaro, 76350 Querétaro, Qro.'),
(257, 'Mariana', 'Ortiz', '6181314151', 'mariana.ortiz@hotmail.com', 'Colonia Centro, Durango, 34490 Durango, Dgo.'),
(258, 'Oscar', 'García', '9995162738', 'oscar.garcia@gmail.com', 'Colonia Centro, Mérida, 97480 Mérida, Yuc.'),
(259, 'Rosa', 'Martínez', '6621738192', 'rosa.martinez@yahoo.com', 'Colonia Centro, Hermosillo, 83670 Hermosillo, Son.'),
(260, 'Andrés', 'Rojas', '4441928384', 'andres.rojas@hotmail.com', 'Colonia Jardines, San Luis Potosí, 78750 San Luis Potosí, SLP'),
(261, 'Laura', 'Gómez', '6562021222', 'laura.gomez@yahoo.com', 'Colonia Juárez, Ciudad Juárez, 32800 Ciudad Juárez, Chih.'),
(262, 'Ricardo', 'Herrera', '2222132422', 'ricardo.herrera@gmail.com', 'Colonia Centro, Xalapa, 91400 Xalapa, Ver.'),
(263, 'Karla', 'Torres', '6622234343', 'karla.torres@hotmail.com', 'Colonia Centro, Culiacán, 80250 Culiacán, Sin.'),
(264, 'Joaquín', 'Vargas', '3122435454', 'joaquin.vargas@gmail.com', 'Colonia Centro, Colima, 28500 Colima, Col.'),
(265, 'Valentina', 'Silva', '6182567676', 'valentina.silva@yahoo.com', 'Colonia Centro, Zacatecas, 98600 Zacatecas, Zac.'),
(266, 'Erick', 'González', '8712678787', 'erick.gonzalez@hotmail.com', 'Colonia Centro, Torreón, 27800 Torreón, Coah.'),
(267, 'Sara', 'López', '6182789898', 'sara.lopez@yahoo.com', 'Colonia Centro, Durango, 34500 Durango, Dgo.'),
(268, 'Natalia', 'Ortega', '2222901010', 'natalia.ortega@gmail.com', 'Colonia Centro, Puebla, 72400 Puebla, Pue.'),
(269, 'Fernanda', 'Ríos', '6622101111', 'fernanda.rios@hotmail.com', 'Colonia Centro, Hermosillo, 83700 Hermosillo, Son.'),
(270, 'Roberto', 'Martínez', '4442121212', 'roberto.martinez@yahoo.com', 'Colonia Jardín, San Luis Potosí, 78800 San Luis Potosí, SLP'),
(271, 'Carlos', 'Fernández', '6182232323', 'carlos.fernandez@yahoo.com', 'Colonia Centro, Durango, 34510 Durango, Dgo.'),
(272, 'Mariana', 'Sánchez', '9992343434', 'mariana.sanchez@gmail.com', 'Colonia Centro, Mérida, 97490 Mérida, Yuc.'),
(273, 'Luis', 'González', '6562124545', 'luis.gonzalez@yahoo.com', 'Colonia Juárez, Ciudad Juárez, 32900 Ciudad Juárez, Chih.'),
(274, 'Paola', 'Castro', '2222026262', 'paola.castro@hotmail.com', 'Colonia Centro, Xalapa, 91450 Xalapa, Ver.'),
(275, 'Jorge', 'Ramírez', '6182128282', 'jorge.ramirez@gmail.com', 'Colonia Centro, Culiacán, 80300 Culiacán, Sin.'),
(276, 'Elena', 'Santos', '3122830303', 'elena.santos@yahoo.com', 'Colonia Centro, Colima, 28600 Colima, Col.'),
(277, 'Diego', 'Herrera', '6182942424', 'diego.herrera@hotmail.com', 'Colonia Centro, Zacatecas, 98700 Zacatecas, Zac.'),
(278, 'Nora', 'Ríos', '2222326262', 'nora.rios@gmail.com', 'Colonia Centro, Puebla, 72450 Puebla, Pue.'),
(279, 'Adrián', 'Martínez', '6562628282', 'adrian.martinez@yahoo.com', 'Colonia Centro, Ciudad Juárez, 33000 Ciudad Juárez, Chih.'),
(280, 'Valentina', 'Fernández', '6182828282', 'valentina.fernandez@gmail.com', 'Colonia Centro, Durango, 34520 Durango, Dgo.'),
(281, 'Gabriel', 'López', '3332101212', 'gabriel.lopez@gmail.com', 'Colonia Centro, Toluca, 50180 Toluca, Edomex'),
(282, 'Ana', 'Ríos', '2223122323', 'ana.rios@yahoo.com', 'Colonia Reforma, Puebla, 72500 Puebla, Pue.'),
(283, 'Santiago', 'Martínez', '9983233434', 'santiago.martinez@hotmail.com', 'Colonia Tulum, Cancún, 77600 Cancún, QRoo.'),
(284, 'Carla', 'Gómez', '6183344545', 'carla.gomez@gmail.com', 'Colonia Centro, Zacatecas, 98710 Zacatecas, Zac.'),
(285, 'Javier', 'Gutiérrez', '4443455656', 'javier.gutierrez@yahoo.com', 'Colonia Roma, Monterrey, 64900 Monterrey, NL'),
(286, 'Marina', 'Rojas', '2293566767', 'marina.rojas@hotmail.com', 'Colonia Centro, Veracruz, 92150 Veracruz, Ver.'),
(287, 'Martín', 'Fernández', '8713677878', 'martin.fernandez@gmail.com', 'Colonia Doctores, Torreón, 27750 Torreón, Coah.'),
(288, 'Carmen', 'García', '4423788989', 'carmen.garcia@yahoo.com', 'Colonia San Felipe, Querétaro, 76370 Querétaro, Qro.'),
(289, 'Miguel', 'Díaz', '6183890101', 'miguel.diaz@hotmail.com', 'Colonia Centro, Durango, 34530 Durango, Dgo.'),
(290, 'Valeria', 'Hernández', '9993911212', 'valeria.hernandez@gmail.com', 'Colonia Centro, Mérida, 97500 Mérida, Yuc.'),
(291, 'Diego', 'Ortega', '6624012323', 'diego.ortega@yahoo.com', 'Colonia Centro, Hermosillo, 83750 Hermosillo, Son.'),
(292, 'Liliana', 'Soto', '4444123434', 'liliana.soto@hotmail.com', 'Colonia Jardines, San Luis Potosí, 78900 San Luis Potosí, SLP'),
(293, 'Adrián', 'González', '6564234545', 'adrian.gonzalez@yahoo.com', 'Colonia Juárez, Ciudad Juárez, 33100 Ciudad Juárez, Chih.'),
(294, 'Isabella', 'Castillo', '2224345656', 'isabella.castillo@gmail.com', 'Colonia Centro, Xalapa, 91500 Xalapa, Ver.'),
(295, 'Juan', 'Silva', '6184456767', 'juan.silva@hotmail.com', 'Colonia Centro, Culiacán, 80350 Culiacán, Sin.'),
(296, 'Sara', 'Martínez', '3124567878', 'sara.martinez@yahoo.com', 'Colonia Centro, Colima, 28650 Colima, Col.'),
(297, 'Andrés', 'García', '6184678989', 'andres.garcia@gmail.com', 'Colonia Centro, Zacatecas, 98750 Zacatecas, Zac.'),
(298, 'Laura', 'Luna', '8714780101', 'laura.luna@yahoo.com', 'Colonia Centro, Torreón, 27850 Torreón, Coah.'),
(299, 'Ricardo', 'Martínez', '6184891212', 'ricardo.martinez@yahoo.com', 'Colonia Centro, Durango, 34540 Durango, Dgo.'),
(300, 'Karla', 'Díaz', '9995012323', 'karla.diaz@hotmail.com', 'Colonia Centro, Mérida, 97550 Mérida, Yuc.'),
(301, 'Alejandro', 'González', '3335101212', 'alejandro.gonzalez@gmail.com', 'Colonia Centro, Toluca, 50200 Toluca, Edomex'),
(302, 'Catalina', 'Hernández', '2225122323', 'catalina.hernandez@yahoo.com', 'Colonia Reforma, Puebla, 72550 Puebla, Pue.'),
(303, 'Francisco', 'Martínez', '9985233434', 'francisco.martinez@hotmail.com', 'Colonia Tulum, Cancún, 77700 Cancún, QRoo.'),
(304, 'Victoria', 'Torres', '6185344545', 'victoria.torres@gmail.com', 'Colonia Centro, Zacatecas, 98810 Zacatecas, Zac.'),
(305, 'Eduardo', 'Fernández', '4445455656', 'eduardo.fernandez@yahoo.com', 'Colonia Roma, Monterrey, 64950 Monterrey, NL'),
(306, 'María', 'Ríos', '2295566767', 'maria.rios@hotmail.com', 'Colonia Centro, Veracruz, 92200 Veracruz, Ver.'),
(307, 'Diego', 'Gómez', '8715677878', 'diego.gomez@gmail.com', 'Colonia Doctores, Torreón, 27870 Torreón, Coah.'),
(308, 'Liliana', 'García', '4425788989', 'liliana.garcia@yahoo.com', 'Colonia San Felipe, Querétaro, 76400 Querétaro, Qro.'),
(309, 'Miguel', 'Martínez', '6185890101', 'miguel.martinez@hotmail.com', 'Colonia Centro, Durango, 34550 Durango, Dgo.'),
(310, 'Valeria', 'Hernández', '9995911212', 'valeria.hernandez@gmail.com', 'Colonia Centro, Mérida, 97600 Mérida, Yuc.'),
(311, 'Diego', 'Ramírez', '6625102323', 'diego.ramirez@yahoo.com', 'Colonia Centro, Hermosillo, 83800 Hermosillo, Son.'),
(312, 'Sara', 'Soto', '4445123434', 'sara.soto@hotmail.com', 'Colonia Jardines, San Luis Potosí, 78950 San Luis Potosí, SLP'),
(313, 'Adrián', 'Martínez', '6565234545', 'adrian.martinez@yahoo.com', 'Colonia Juárez, Ciudad Juárez, 33200 Ciudad Juárez, Chih.'),
(314, 'Isabella', 'González', '2225345656', 'isabella.gonzalez@hotmail.com', 'Colonia Centro, Xalapa, 91550 Xalapa, Ver.'),
(315, 'Juan', 'Luna', '6185456767', 'juan.luna@yahoo.com', 'Colonia Centro, Culiacán, 80400 Culiacán, Sin.'),
(316, 'Sofía', 'Ríos', '3125567878', 'sofia.rios@yahoo.com', 'Colonia Centro, Colima, 28700 Colima, Col.'),
(317, 'Martín', 'García', '6185678989', 'martin.garcia@gmail.com', 'Colonia Centro, Zacatecas, 98850 Zacatecas, Zac.'),
(318, 'Elena', 'Luna', '8715780101', 'elena.luna@yahoo.com', 'Colonia Centro, Torreón, 27900 Torreón, Coah.'),
(319, 'Ricardo', 'Soto', '6185891212', 'ricardo.soto@yahoo.com', 'Colonia Centro, Durango, 34560 Durango, Dgo.'),
(320, 'Karla', 'Martínez', '9996012323', 'karla.martinez@hotmail.com', 'Colonia Centro, Mérida, 97650 Mérida, Yuc.');

--
-- Índices para tablas volcadas
--
--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`empleado_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `empleado_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
