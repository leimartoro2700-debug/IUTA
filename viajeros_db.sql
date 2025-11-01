-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2025 a las 03:21:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viajeros_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE `paquetes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paquetes`
--

INSERT INTO `paquetes` (`id`, `nombre`, `descripcion`, `precio`, `imagen`) VALUES
(2, 'Roraima', 'Una aventura épica al tepuy más famoso de Venezuela.', 180.00, 'assets/img/roraima.jpg'),
(3, 'Isla de Margarita', 'Disfruta del sol, la playa y la cultura isleña.', 150.00, 'assets/img/margarita.png'),
(11, 'Los Roques', 'Explora el paraíso caribeño con aguas cristalinas, playas vírgenes y experiencias inolvidables.', 120.00, 'assets/img/roques.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_paquete` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_reserva` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `id_usuario`, `id_paquete`, `cantidad`, `fecha_reserva`) VALUES
(1, 6, 3, 1, '2025-10-24'),
(2, 6, 3, 1, '2025-10-24'),
(3, 6, 2, 1, '2025-10-24'),
(4, 6, 1, 1, '2025-10-24'),
(5, 6, 2, 1, '2025-10-24'),
(6, 6, 3, 3, '2025-10-28'),
(7, 6, 1, 1, '2025-10-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `rol` enum('cliente','admin') DEFAULT 'cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contrasena`, `rol`) VALUES
(6, 'Maria', 'maria@gmail.com', '$2y$10$pI2YQakXxwm98IB3W79yO.hYUqDhFHHn1khoKSeQLXHtggy.fkpxW', 'cliente'),
(7, 'Jonaith', 'admin2@viajeros.com', '$2y$10$oKC6CE/QKQL5J6.QogTCGOTgS7MgEmGB8RmD1KxdI.KqfiEYD2UgG', 'admin'),
(8, 'Karen', 'admin@gmail.com', '$2y$10$.7dwJpv5bUtJ3zCViRKzw.el0tsBqMmwdB2X7ZnIKWkY8TdLCPdbS', 'admin'),
(12, 'Rosa Blanco', 'rosa@gmail.com', '$2y$10$wOs1zGohIJKI6TD72u237ui.LcxiqPDfZjz7Zb3lcAV7thaeyyDnu', 'cliente'),
(14, 'Carolina', 'carolina@gmail.com', '$2y$10$6Z5yQK4erezVkPCRpM6tBOaiWKpwoECuTTluUVCPetEjbGf9GWqk.', 'cliente'),
(15, 'Pedro', 'pedro@gmail.com', '$2y$10$3iGUbSR8xCKMQmmN5BRBseLL7Xykxs8qt..UmnPRaQ.5UFKqMwkOC', 'cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
