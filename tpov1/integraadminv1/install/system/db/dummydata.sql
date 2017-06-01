-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.1.8-MariaDB - Source distribution
-- SO del servidor:              Linux
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- Volcando datos para la tabla integrav1.cat_estados: ~34 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_estados` DISABLE KEYS */;
INSERT INTO `cat_estados` (`id_estado`, `estado`, `codigo`, `active`) VALUES
	(1, 'Aguascalientes', 'mx-ag', 1),
	(2, 'Baja California', 'mx-bc', 1),
	(3, 'Baja California Sur', 'mx-bs', 1),
	(4, 'Campeche', 'mx-cm', 1),
	(5, 'Coahuila', 'mx-co', 1),
	(6, 'Colima', 'mx-cl', 1),
	(7, 'Chiapas', 'mx-cs', 1),
	(8, 'Chihuahua', 'mx-ch', 1),
	(9, 'Distrito Federal', 'mx-df', 1),
	(10, 'Durango', 'mx-dg', 1),
	(11, 'Guanajuato', 'mx-gj', 1),
	(12, 'Guerrero', 'mx-gr', 1),
	(13, 'Hidalgo', 'mx-hg', 1),
	(14, 'Jalisco', 'mx-ja', 1),
	(15, 'México', 'mx-mx', 1),
	(16, 'Michoacán', 'mx-mi', 1),
	(17, 'Morelos', 'mx-mo', 1),
	(18, 'Nayarit', 'mx-na', 1),
	(19, 'Nuevo León', 'mx-nl', 1),
	(20, 'Oaxaca', 'mx-oa', 1),
	(21, 'Puebla', 'mx-pu', 1),
	(22, 'Querétaro', 'mx-qt', 1),
	(23, 'Quintana Roo', 'mx-qr', 1),
	(24, 'San Luis Potosí', 'mx-sl', 1),
	(25, 'Sinaloa', 'mx-si', 1),
	(26, 'Sonora', 'mx-so', 1),
	(27, 'Tabasco', 'mx-tb', 1),
	(28, 'Tamaulipas', 'mx-tm', 1),
	(29, 'Tlaxcala', 'mx-tl', 1),
	(30, 'Veracruz', 'mx-ve', 1),
	(31, 'Yucatán', 'mx-yu', 1),
	(32, 'Zacatecas', 'mx-za', 1),
	(33, 'Federación', 'mx-fe', 1),
	(34, 'Internacional', 'int', 1);
/*!40000 ALTER TABLE `cat_estados` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.sec_users: 0 rows
/*!40000 ALTER TABLE `sec_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_users` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.sys_catalogs: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_catalogs` DISABLE KEYS */;
INSERT INTO `sys_catalogs` (`id_catalog`, `catalog`, `active`) VALUES
	(1, 'Logico', 1),
	(2, 'Orden de Gobierno', 1),
	(3, 'Tipo de Sujeto Obligado', 1),
	(4, 'Dependencia', 1),
	(7, 'Lista Si/No', 1),
	(8, 'Atribución del Sujeto Obligado', 1),
	(9, 'Estatus Atención', 1);
/*!40000 ALTER TABLE `sys_catalogs` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.sys_catalogs_data: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_catalogs_data` DISABLE KEYS */;
INSERT INTO `sys_catalogs_data` (`id_catalog_data`, `id_catalog`, `catalog`, `order_catalog`, `active`) VALUES
	(1, 1, 'Activo', 1, 1),
	(2, 1, 'Inactivo', 2, 1),
	(3, 2, 'Federal', 1, 1),
	(4, 2, 'Estatal', 2, 1),
	(5, 2, 'Municipal', 3, 1),
	(6, 2, 'Otro', 4, 1),
	(7, 3, ' Poder Ejecutivo', 1, 1),
	(8, 3, 'Municipios y Delegaciones', 2, 1),
	(9, 3, 'Órganos del Poder Legislativo', 3, 1),
	(10, 3, 'Órganos del Poder Judicial', 4, 1),
	(11, 3, 'Organismos Autónomos', 5, 1),
	(12, 3, 'Instituciones de Educación Superior Públicas Autónomas', 6, 1),
	(13, 3, 'Sindicatos', 7, 1),
	(14, 3, 'Fideicomisos y Fondos Públicos', 8, 1),
	(15, 3, 'Partidos Políticos', 9, 1),
	(16, 3, 'Otro', 10, 1),
	(17, 4, 'Nombre Dependencia', 1, 1),
	(21, 7, 'Si', 1, 1),
	(22, 7, 'No', 2, 1),
	(23, 8, 'Contratante', 1, 1),
	(24, 8, 'Ambos', 3, 1),
	(25, 8, 'Solicitante', 2, 1),
	(26, 9, 'Sin Atender', 1, 1),
	(27, 9, 'En Proceso', 2, 1),
	(28, 9, 'Atendido', 3, 1),
	(29, 9, 'No Aplica', 4, 1);
/*!40000 ALTER TABLE `sys_catalogs_data` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.sys_debug: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_debug` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_debug` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.sys_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.sys_mails: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_mails` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.sys_mails_vars: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_mails_vars` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_mails_vars` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.sys_settings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_settings` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.tab_encuestas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_encuestas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_encuestas` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.tab_mensajes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_mensajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_mensajes` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.tab_servidor_publico: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_servidor_publico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_servidor_publico` ENABLE KEYS */;

-- Volcando datos para la tabla integrav1.tab_sujetos_obligados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_sujetos_obligados` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_sujetos_obligados` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
