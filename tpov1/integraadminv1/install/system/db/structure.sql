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

-- Volcando estructura para tabla integrav1.cat_estados
CREATE TABLE IF NOT EXISTS `cat_estados` (
  `id_estado` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) CHARACTER SET latin1 NOT NULL,
  `codigo` varchar(5) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.sec_users
CREATE TABLE IF NOT EXISTS `sec_users` (
  `id_user` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_father` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cookie_id` varchar(64) NOT NULL DEFAULT '0',
  `token` varchar(128) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastip` varchar(16) DEFAULT NULL,
  `notes` text,
  `id_type_user` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `record_user` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_update` date NOT NULL,
  `active` enum('a','i','c','p') NOT NULL DEFAULT 'i',
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `index_username` (`username`) USING BTREE,
  UNIQUE KEY `index_mail` (`email`) USING BTREE,
  UNIQUE KEY `ideex_tipo` (`id_type_user`,`record_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.sys_catalogs
CREATE TABLE IF NOT EXISTS `sys_catalogs` (
  `id_catalog` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catalog` varchar(255) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_catalog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.sys_catalogs_data
CREATE TABLE IF NOT EXISTS `sys_catalogs_data` (
  `id_catalog_data` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_catalog` bigint(20) unsigned NOT NULL,
  `catalog` varchar(255) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `order_catalog` bigint(20) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_catalog_data`),
  KEY `idx_catalog` (`id_catalog`,`catalog`) USING BTREE,
  KEY `idx_orden` (`id_catalog`,`order_catalog`) USING BTREE,
  CONSTRAINT `fk_catalogo` FOREIGN KEY (`id_catalog`) REFERENCES `sys_catalogs` (`id_catalog`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.sys_debug
CREATE TABLE IF NOT EXISTS `sys_debug` (
  `id_debug` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `debug` text CHARACTER SET latin1,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_debug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.sys_log
CREATE TABLE IF NOT EXISTS `sys_log` (
  `id_log` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_bis` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) CHARACTER SET latin1 NOT NULL,
  `id_type` varchar(20) NOT NULL DEFAULT '0',
  `log` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `log_status_change` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `log_coments` text CHARACTER SET latin1,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.sys_mails
CREATE TABLE IF NOT EXISTS `sys_mails` (
  `id_mail` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `subject` varchar(255) CHARACTER SET latin1 NOT NULL,
  `from` varchar(255) CHARACTER SET latin1 NOT NULL,
  `to` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cc` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `comments` text CHARACTER SET latin1,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.sys_mails_vars
CREATE TABLE IF NOT EXISTS `sys_mails_vars` (
  `id_mail_var` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_mail` bigint(20) unsigned NOT NULL,
  `var` varchar(255) CHARACTER SET latin1 NOT NULL,
  `value` varchar(255) CHARACTER SET latin1 NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_mail_var`),
  KEY `fk_mails` (`id_mail`),
  CONSTRAINT `fk_mail` FOREIGN KEY (`id_mail`) REFERENCES `sys_mails` (`id_mail`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.sys_settings
CREATE TABLE IF NOT EXISTS `sys_settings` (
  `id_settings` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `recaptcha` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_settings`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.tab_encuestas
CREATE TABLE IF NOT EXISTS `tab_encuestas` (
  `id_encuesta` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `soyun` varchar(50) NOT NULL,
  `interesadoen` varchar(50) NOT NULL,
  `gasto` text NOT NULL,
  `meenterepor` varchar(50) NOT NULL,
  `megusta` varchar(50) NOT NULL,
  `porque` text NOT NULL,
  `opinion` text NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comentarios` text,
  `estatus` bigint(20) unsigned NOT NULL DEFAULT '26',
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_encuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.tab_mensajes
CREATE TABLE IF NOT EXISTS `tab_mensajes` (
  `id_mensaje` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `asunto` varchar(255) NOT NULL,
  `mensaje` text NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comentarios` text,
  `estatus` bigint(20) unsigned NOT NULL DEFAULT '1',
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_mensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.tab_servidor_publico
CREATE TABLE IF NOT EXISTS `tab_servidor_publico` (
  `id_servidor_publico` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_sujetos_obligados` bigint(20) unsigned NOT NULL,
  `nombre_servidor_publico` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `active` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_servidor_publico`),
  KEY `fk_tab_servidor_publico_1_idx` (`id_sujetos_obligados`),
  CONSTRAINT `fk_tab_servidor_publico_1` FOREIGN KEY (`id_sujetos_obligados`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla integrav1.tab_sujetos_obligados
CREATE TABLE IF NOT EXISTS `tab_sujetos_obligados` (
  `id_sujeto_obligado` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_orden_gobierno` bigint(20) unsigned NOT NULL,
  `id_estado` bigint(20) unsigned NOT NULL,
  `id_tipo_sujeto_obligado` bigint(20) unsigned NOT NULL,
  `nombre_sujeto_obligado` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_participacion` bigint(20) unsigned NOT NULL DEFAULT '1',
  `id_atribucion` bigint(20) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_sujeto_obligado`),
  KEY `fk_estados` (`id_estado`),
  CONSTRAINT `fk_estados` FOREIGN KEY (`id_estado`) REFERENCES `cat_estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para vista integrav1.vcat_atribucion
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcat_atribucion` (
	`id_catalog_data` BIGINT(20) UNSIGNED NOT NULL,
	`id_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`catalog` VARCHAR(255) NOT NULL COLLATE 'latin1_spanish_ci',
	`order_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`active` TINYINT(3) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vcat_estatus
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcat_estatus` (
	`id_catalog_data` BIGINT(20) UNSIGNED NOT NULL,
	`id_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`catalog` VARCHAR(255) NOT NULL COLLATE 'latin1_spanish_ci',
	`order_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`active` TINYINT(3) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vcat_logico
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcat_logico` (
	`id_catalog_data` BIGINT(20) UNSIGNED NOT NULL,
	`id_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`catalog` VARCHAR(255) NOT NULL COLLATE 'latin1_spanish_ci',
	`order_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`active` TINYINT(3) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vcat_orden_gobierno
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcat_orden_gobierno` (
	`id_catalog_data` BIGINT(20) UNSIGNED NOT NULL,
	`id_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`catalog` VARCHAR(255) NOT NULL COLLATE 'latin1_spanish_ci',
	`order_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`active` TINYINT(3) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vcat_sino
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcat_sino` (
	`id_catalog_data` BIGINT(20) UNSIGNED NOT NULL,
	`id_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`catalog` VARCHAR(255) NOT NULL COLLATE 'latin1_spanish_ci',
	`order_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`active` TINYINT(3) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vcat_tipo_so
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcat_tipo_so` (
	`id_catalog_data` BIGINT(20) UNSIGNED NOT NULL,
	`id_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`catalog` VARCHAR(255) NOT NULL COLLATE 'latin1_spanish_ci',
	`order_catalog` BIGINT(20) UNSIGNED NOT NULL,
	`active` TINYINT(3) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vlista
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vlista` (
	`id_sujeto_obligado` BIGINT(20) UNSIGNED NOT NULL,
	`id_orden_gobierno` BIGINT(20) UNSIGNED NOT NULL,
	`id_estado` BIGINT(20) UNSIGNED NOT NULL,
	`id_tipo_sujeto_obligado` BIGINT(20) UNSIGNED NOT NULL,
	`nombre_sujeto_obligado` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`url` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`active` TINYINT(3) UNSIGNED NOT NULL,
	`codigo` VARCHAR(5) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vmapa
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vmapa` (
	`codigo` VARCHAR(5) NOT NULL COLLATE 'utf8_general_ci',
	`value` BIGINT(21) NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vsys_mails
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vsys_mails` (
	`id_mail` BIGINT(20) UNSIGNED NOT NULL,
	`description` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`subject` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`from` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`to` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`cc` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`comments` TEXT NULL COLLATE 'latin1_swedish_ci',
	`active` TINYINT(3) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vsys_mails_vars
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vsys_mails_vars` (
	`id_mail_var` BIGINT(20) UNSIGNED NOT NULL,
	`id_mail` BIGINT(20) UNSIGNED NOT NULL,
	`var` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`value` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`active` TINYINT(3) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista integrav1.vcat_atribucion
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcat_atribucion`;
CREATE VIEW `vcat_atribucion` AS select `sys_catalogs_data`.`id_catalog_data` AS `id_catalog_data`,`sys_catalogs_data`.`id_catalog` AS `id_catalog`,`sys_catalogs_data`.`catalog` AS `catalog`,`sys_catalogs_data`.`order_catalog` AS `order_catalog`,`sys_catalogs_data`.`active` AS `active` from `sys_catalogs_data` where ((`sys_catalogs_data`.`id_catalog` = 8) and (`sys_catalogs_data`.`active` = 1));


-- Volcando estructura para vista integrav1.vcat_estatus
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcat_estatus`;
CREATE VIEW `vcat_estatus` AS select `sys_catalogs_data`.`id_catalog_data` AS `id_catalog_data`,`sys_catalogs_data`.`id_catalog` AS `id_catalog`,`sys_catalogs_data`.`catalog` AS `catalog`,`sys_catalogs_data`.`order_catalog` AS `order_catalog`,`sys_catalogs_data`.`active` AS `active` from `sys_catalogs_data` where ((`sys_catalogs_data`.`id_catalog` = 9) and (`sys_catalogs_data`.`active` = 1));


-- Volcando estructura para vista integrav1.vcat_logico
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcat_logico`;
CREATE VIEW `vcat_logico` AS select `sys_catalogs_data`.`id_catalog_data` AS `id_catalog_data`,`sys_catalogs_data`.`id_catalog` AS `id_catalog`,`sys_catalogs_data`.`catalog` AS `catalog`,`sys_catalogs_data`.`order_catalog` AS `order_catalog`,`sys_catalogs_data`.`active` AS `active` from `sys_catalogs_data` where ((`sys_catalogs_data`.`id_catalog` = 1) and (`sys_catalogs_data`.`active` = 1)) order by `sys_catalogs_data`.`order_catalog`;


-- Volcando estructura para vista integrav1.vcat_orden_gobierno
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcat_orden_gobierno`;
CREATE VIEW `vcat_orden_gobierno` AS select `sys_catalogs_data`.`id_catalog_data` AS `id_catalog_data`,`sys_catalogs_data`.`id_catalog` AS `id_catalog`,`sys_catalogs_data`.`catalog` AS `catalog`,`sys_catalogs_data`.`order_catalog` AS `order_catalog`,`sys_catalogs_data`.`active` AS `active` from `sys_catalogs_data` where ((`sys_catalogs_data`.`id_catalog` = 2) and (`sys_catalogs_data`.`active` = 1)) order by `sys_catalogs_data`.`order_catalog`;


-- Volcando estructura para vista integrav1.vcat_sino
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcat_sino`;
CREATE VIEW `vcat_sino` AS select `sys_catalogs_data`.`id_catalog_data` AS `id_catalog_data`,`sys_catalogs_data`.`id_catalog` AS `id_catalog`,`sys_catalogs_data`.`catalog` AS `catalog`,`sys_catalogs_data`.`order_catalog` AS `order_catalog`,`sys_catalogs_data`.`active` AS `active` from `sys_catalogs_data` where ((`sys_catalogs_data`.`id_catalog` = 7) and (`sys_catalogs_data`.`active` = 1));


-- Volcando estructura para vista integrav1.vcat_tipo_so
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcat_tipo_so`;
CREATE VIEW `vcat_tipo_so` AS select `sys_catalogs_data`.`id_catalog_data` AS `id_catalog_data`,`sys_catalogs_data`.`id_catalog` AS `id_catalog`,`sys_catalogs_data`.`catalog` AS `catalog`,`sys_catalogs_data`.`order_catalog` AS `order_catalog`,`sys_catalogs_data`.`active` AS `active` from `sys_catalogs_data` where ((`sys_catalogs_data`.`id_catalog` = 3) and (`sys_catalogs_data`.`active` = 1)) order by `sys_catalogs_data`.`order_catalog`;


-- Volcando estructura para vista integrav1.vlista
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vlista`;
CREATE VIEW `vlista` AS select `a`.`id_sujeto_obligado` AS `id_sujeto_obligado`,`a`.`id_orden_gobierno` AS `id_orden_gobierno`,`a`.`id_estado` AS `id_estado`,`a`.`id_tipo_sujeto_obligado` AS `id_tipo_sujeto_obligado`,`a`.`nombre_sujeto_obligado` AS `nombre_sujeto_obligado`,`a`.`url` AS `url`,`a`.`active` AS `active`,`b`.`codigo` AS `codigo` from (`tab_sujetos_obligados` `a` join `cat_estados` `b`) where ((`a`.`id_estado` = `b`.`id_estado`) and (`a`.`active` = 1));


-- Volcando estructura para vista integrav1.vmapa
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vmapa`;
CREATE VIEW `vmapa` AS select `b`.`codigo` AS `codigo`,count(0) AS `value` from (`tab_sujetos_obligados` `a` join `cat_estados` `b`) where ((`a`.`id_estado` = `b`.`id_estado`) and (`a`.`active` = 1)) group by `b`.`codigo`;


-- Volcando estructura para vista integrav1.vsys_mails
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vsys_mails`;
CREATE VIEW `vsys_mails` AS select `sys_mails`.`id_mail` AS `id_mail`,`sys_mails`.`description` AS `description`,`sys_mails`.`subject` AS `subject`,`sys_mails`.`from` AS `from`,`sys_mails`.`to` AS `to`,`sys_mails`.`cc` AS `cc`,`sys_mails`.`comments` AS `comments`,`sys_mails`.`active` AS `active` from `sys_mails` where (`sys_mails`.`active` = 1);


-- Volcando estructura para vista integrav1.vsys_mails_vars
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vsys_mails_vars`;
CREATE VIEW `vsys_mails_vars` AS select `sys_mails_vars`.`id_mail_var` AS `id_mail_var`,`sys_mails_vars`.`id_mail` AS `id_mail`,`sys_mails_vars`.`var` AS `var`,`sys_mails_vars`.`value` AS `value`,`sys_mails_vars`.`active` AS `active` from `sys_mails_vars` where (`sys_mails_vars`.`active` = 1);

DROP TABLE IF EXISTS `vexport_so`;
create view vexport_so as
select 
c.catalog as "Orden de gobierno", 
d.estado as "Estado", 
e.catalog as "Tipo de sujeto obligado", 
a.nombre_sujeto_obligado as "Nombre del sujeto obligado", 
a.url as "URL del portal", 
f.catalog as "Función", 
h.catalog as "Estatus del sujeto obligado", 
b.nombre_servidor_publico as "Nombre del servidor público", 
b.cargo as "Cargo", 
b.correo as "Correo electrónico", 
b.telefono as "Teléfono", 
g.catalog as "Estatus del servidor público"
from
tab_sujetos_obligados as a,
tab_servidor_publico as b,
vcat_orden_gobierno as c,
cat_estados as d,
vcat_tipo_so as e, 
vcat_atribucion as f,
vcat_logico as g,
vcat_logico as h
where
b.id_sujetos_obligados = a.id_sujeto_obligado and
c.id_catalog_data = a.id_orden_gobierno and
a.id_estado = d.id_estado and
a.id_tipo_sujeto_obligado = e.id_catalog_data and
a.id_atribucion = f.id_catalog_data and
g.id_catalog_data = b.active and
h.id_catalog_data = a.active

create view vencuestas as
select 
fechahora,
soyun,
interesadoen,
gasto,
meenterepor,
megusta,
porque,
comentarios,
opinion
from tab_encuestas

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

