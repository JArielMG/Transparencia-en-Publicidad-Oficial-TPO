/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla rusiainf_inai.cat_campana_ambito_geo
CREATE TABLE IF NOT EXISTS `cat_campana_ambito_geo` (
  `id_campana_ambito_geo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_campana_ambito_geo` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_campana_ambito_geo`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_campana_coberturas
CREATE TABLE IF NOT EXISTS `cat_campana_coberturas` (
  `id_campana_cobertura` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_campana_cobertura` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_campana_cobertura`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_campana_estatus
CREATE TABLE IF NOT EXISTS `cat_campana_estatus` (
  `id_campana_estatus` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_campana_estatus` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_campana_estatus`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_campana_objetivos
CREATE TABLE IF NOT EXISTS `cat_campana_objetivos` (
  `id_campana_objetivo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `campana_objetivo` text NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_campana_objetivo`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_campana_subtipos
CREATE TABLE IF NOT EXISTS `cat_campana_subtipos` (
  `id_campana_subtipo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_tipo` bigint(20) unsigned NOT NULL,
  `nombre_campana_subtipo` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_campana_subtipo`),
  KEY `id_campana_tipo` (`id_campana_tipo`),
  CONSTRAINT `fk_campana_tipo_sub` FOREIGN KEY (`id_campana_tipo`) REFERENCES `cat_campana_tipos` (`id_campana_tipo`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_campana_temas
CREATE TABLE IF NOT EXISTS `cat_campana_temas` (
  `id_campana_tema` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_campana_tema` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_campana_tema`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_campana_tipos
CREATE TABLE IF NOT EXISTS `cat_campana_tipos` (
  `id_campana_tipo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_campana_tipo` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_campana_tipo`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_ejercicios
CREATE TABLE IF NOT EXISTS `cat_ejercicios` (
  `id_ejercicio` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ejercicio` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_ejercicio`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_meses
CREATE TABLE IF NOT EXISTS `cat_meses` (
  `id_mes` bigint(20) unsigned NOT NULL,
  `mes` varchar(50) NOT NULL,
  `mes_corto` varchar(50) NOT NULL,
  `mes_orden` bigint(20) unsigned NOT NULL,
  `active` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_mes`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_personalidad_juridica
CREATE TABLE IF NOT EXISTS `cat_personalidad_juridica` (
  `id_personalidad_juridica` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_personalidad_juridica` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_personalidad_juridica`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_poblacion_grupo_edad
CREATE TABLE IF NOT EXISTS `cat_poblacion_grupo_edad` (
  `id_poblacion_grupo_edad` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_poblacion_grupo_edad` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_poblacion_grupo_edad`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_poblacion_lugar
CREATE TABLE IF NOT EXISTS `cat_poblacion_lugar` (
  `id_poblacion_lugar` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_poblacion_lugar` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_poblacion_lugar`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_poblacion_nivel
CREATE TABLE IF NOT EXISTS `cat_poblacion_nivel` (
  `id_poblacion_nivel` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_poblacion_nivel` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_poblacion_nivel`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_poblacion_nivel_educativo
CREATE TABLE IF NOT EXISTS `cat_poblacion_nivel_educativo` (
  `id_poblacion_nivel_educativo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_poblacion_nivel_educativo` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_poblacion_nivel_educativo`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_poblacion_sexo
CREATE TABLE IF NOT EXISTS `cat_poblacion_sexo` (
  `id_poblacion_sexo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_poblacion_sexo` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_poblacion_sexo`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_presupuesto_conceptos
CREATE TABLE IF NOT EXISTS `cat_presupuesto_conceptos` (
  `id_presupesto_concepto` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `capitulo` varchar(7) NOT NULL,
  `concepto` varchar(7) NOT NULL DEFAULT ' ',
  `partida` varchar(7) NOT NULL DEFAULT '',
  `denominacion` varchar(255) NOT NULL DEFAULT '',
  `descripcion` mediumtext NOT NULL,
  `id_captura` bigint(20) NOT NULL DEFAULT '1',
  `active` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_presupesto_concepto`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_procedimientos
CREATE TABLE IF NOT EXISTS `cat_procedimientos` (
  `id_procedimiento` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_procedimiento` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_procedimiento`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_servicios_categorias
CREATE TABLE IF NOT EXISTS `cat_servicios_categorias` (
  `id_servicio_categoria` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_servicio_clasificacion` bigint(20) unsigned NOT NULL,
  `nombre_servicio_categoria` varchar(255) NOT NULL,
  `titulo_grafica` varchar(30) NOT NULL DEFAULT '',
  `color_grafica` varchar(7) NOT NULL DEFAULT '#ACACAC',
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_servicio_categoria`),
  KEY `fk_clasifica_cate` (`id_servicio_clasificacion`),
  CONSTRAINT `fk_clasifica_cate` FOREIGN KEY (`id_servicio_clasificacion`) REFERENCES `cat_servicios_clasificacion` (`id_servicio_clasificacion`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_servicios_clasificacion
CREATE TABLE IF NOT EXISTS `cat_servicios_clasificacion` (
  `id_servicio_clasificacion` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_servicio_clasificacion` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_servicio_clasificacion`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_servicios_subcategorias
CREATE TABLE IF NOT EXISTS `cat_servicios_subcategorias` (
  `id_servicio_subcategoria` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_servicio_categoria` bigint(20) unsigned NOT NULL,
  `nombre_servicio_subcategoria` varchar(255) NOT NULL,
  `active` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_servicio_subcategoria`),
  KEY `FK_cat_servicios_subcategorias_cat_servicios_categorias` (`id_servicio_categoria`),
  CONSTRAINT `FK_cat_servicios_subcategorias_cat_servicios_categorias` FOREIGN KEY (`id_servicio_categoria`) REFERENCES `cat_servicios_categorias` (`id_servicio_categoria`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_servicios_unidades
CREATE TABLE IF NOT EXISTS `cat_servicios_unidades` (
  `id_servicio_unidad` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_servicio_subcategoria` bigint(20) unsigned NOT NULL,
  `nombre_servicio_unidad` varchar(255) NOT NULL,
  `active` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_servicio_unidad`),
  KEY `FK_cat_servicios_unidades_cat_servicios_subcategorias` (`id_servicio_subcategoria`),
  CONSTRAINT `FK_cat_servicios_unidades_cat_servicios_subcategorias` FOREIGN KEY (`id_servicio_subcategoria`) REFERENCES `cat_servicios_subcategorias` (`id_servicio_subcategoria`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_so_atribucion
CREATE TABLE IF NOT EXISTS `cat_so_atribucion` (
  `id_so_atribucion` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_so_atribucion` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_so_atribucion`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_so_estados
CREATE TABLE IF NOT EXISTS `cat_so_estados` (
  `id_so_estado` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_so_estado` varchar(255) CHARACTER SET latin1 NOT NULL,
  `codigo_so_estado` varchar(5) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_so_estado`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_so_ordenes_gobierno
CREATE TABLE IF NOT EXISTS `cat_so_ordenes_gobierno` (
  `id_so_orden_gobierno` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_so_orden_gobierno` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_so_orden_gobierno`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_tiempo_tipos
CREATE TABLE IF NOT EXISTS `cat_tiempo_tipos` (
  `id_tiempo_tipo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_tipo_tiempo` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tiempo_tipo`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_tipo_liga
CREATE TABLE IF NOT EXISTS `cat_tipo_liga` (
  `id_tipo_liga` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_liga` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tipo_liga`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.cat_trimestres
CREATE TABLE IF NOT EXISTS `cat_trimestres` (
  `id_trimestre` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trimestre` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_trimestre`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.rel_campana_grupo_edad
CREATE TABLE IF NOT EXISTS `rel_campana_grupo_edad` (
  `id_rel_campana_grupo_edad` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_aviso` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_poblacion_grupo_edad` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id_rel_campana_grupo_edad`),
  UNIQUE KEY `id_campana_aviso` (`id_campana_aviso`,`id_poblacion_grupo_edad`),
  KEY `FK_rel_campana_grupo_edad_cat_poblacion_grupo_edad` (`id_poblacion_grupo_edad`),
  CONSTRAINT `FK_rel_campana_grupo_edad_cat_poblacion_grupo_edad` FOREIGN KEY (`id_poblacion_grupo_edad`) REFERENCES `cat_poblacion_grupo_edad` (`id_poblacion_grupo_edad`),
  CONSTRAINT `FK_rel_campana_grupo_edad_tab_campana_aviso` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.rel_campana_lugar
CREATE TABLE IF NOT EXISTS `rel_campana_lugar` (
  `id_campana_lugar` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_aviso` bigint(20) unsigned NOT NULL DEFAULT '0',
  `poblacion_lugar` varchar(250) NOT NULL,
  PRIMARY KEY (`id_campana_lugar`),
  UNIQUE KEY `id_campana_aviso` (`id_campana_aviso`,`poblacion_lugar`),
  CONSTRAINT `FK_rel_campana_lugar_tab_campana_aviso` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.rel_campana_maudio
CREATE TABLE IF NOT EXISTS `rel_campana_maudio` (
  `id_campana_maudio` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_aviso` bigint(20) unsigned NOT NULL,
  `id_tipo_liga` bigint(20) unsigned NOT NULL DEFAULT '0',
  `nombre_campana_maudio` varchar(255) NOT NULL,
  `url_audio` varchar(255) DEFAULT NULL,
  `file_audio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_campana_maudio`),
  KEY `fk_campana_meadios` (`id_campana_aviso`),
  KEY `fk_maudio_tipo` (`id_tipo_liga`),
  CONSTRAINT `fk_campana_meadios` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`),
  CONSTRAINT `fk_maudio_tipo` FOREIGN KEY (`id_tipo_liga`) REFERENCES `cat_tipo_liga` (`id_tipo_liga`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.rel_campana_mimagenes
CREATE TABLE IF NOT EXISTS `rel_campana_mimagenes` (
  `id_campana_mimagen` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_aviso` bigint(20) unsigned NOT NULL,
  `id_tipo_liga` bigint(20) unsigned NOT NULL DEFAULT '0',
  `nombre_campana_mimagen` varchar(255) NOT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  `file_imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_campana_mimagen`),
  KEY `fk_campana_mimg` (`id_campana_aviso`),
  KEY `fk_mimg_tipo` (`id_tipo_liga`),
  CONSTRAINT `fk_campana_mimg` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`),
  CONSTRAINT `fk_mimg_tipo` FOREIGN KEY (`id_tipo_liga`) REFERENCES `cat_tipo_liga` (`id_tipo_liga`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.rel_campana_mvideo
CREATE TABLE IF NOT EXISTS `rel_campana_mvideo` (
  `id_campana_mvideo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_aviso` bigint(20) unsigned NOT NULL,
  `id_tipo_liga` bigint(20) unsigned NOT NULL DEFAULT '0',
  `nombre_campana_mvideo` varchar(255) NOT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `file_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_campana_mvideo`),
  KEY `fk_campana_mvideo` (`id_campana_aviso`),
  KEY `fk_mvideo_tipo` (`id_tipo_liga`),
  CONSTRAINT `fk_campana_mvideo` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`),
  CONSTRAINT `fk_mvideo_tipo` FOREIGN KEY (`id_tipo_liga`) REFERENCES `cat_tipo_liga` (`id_tipo_liga`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.rel_campana_nivel
CREATE TABLE IF NOT EXISTS `rel_campana_nivel` (
  `id_rel_campana_nivel` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_aviso` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_poblacion_nivel` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id_rel_campana_nivel`),
  UNIQUE KEY `id_campana_aviso` (`id_campana_aviso`,`id_poblacion_nivel`),
  KEY `FK_rel_campana_nivel_cat_poblacion_nivel` (`id_poblacion_nivel`),
  CONSTRAINT `FK_rel_campana_nivel_cat_poblacion_nivel` FOREIGN KEY (`id_poblacion_nivel`) REFERENCES `cat_poblacion_nivel` (`id_poblacion_nivel`),
  CONSTRAINT `FK_rel_campana_nivel_tab_campana_aviso` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.rel_campana_nivel_educativo
CREATE TABLE IF NOT EXISTS `rel_campana_nivel_educativo` (
  `id_rel_campana_nivel_educativo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_aviso` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_poblacion_nivel_educativo` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id_rel_campana_nivel_educativo`),
  UNIQUE KEY `id_campana_aviso` (`id_campana_aviso`,`id_poblacion_nivel_educativo`),
  KEY `FK_rel_campana_nivel_educativo_cat_poblacion_nivel_educativo` (`id_poblacion_nivel_educativo`),
  CONSTRAINT `FK_rel_campana_nivel_educativo_cat_poblacion_nivel_educativo` FOREIGN KEY (`id_poblacion_nivel_educativo`) REFERENCES `cat_poblacion_nivel_educativo` (`id_poblacion_nivel_educativo`),
  CONSTRAINT `FK_rel_campana_nivel_educativo_tab_campana_aviso` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.rel_campana_sexo
CREATE TABLE IF NOT EXISTS `rel_campana_sexo` (
  `id_rel_campana_sexo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_aviso` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_poblacion_sexo` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id_rel_campana_sexo`),
  UNIQUE KEY `Índice 2` (`id_campana_aviso`,`id_poblacion_sexo`),
  KEY `FK_rel_campana_sexo_cat_poblacion_sexo` (`id_poblacion_sexo`),
  CONSTRAINT `FK_rel_campana_sexo_cat_poblacion_sexo` FOREIGN KEY (`id_poblacion_sexo`) REFERENCES `cat_poblacion_sexo` (`id_poblacion_sexo`),
  CONSTRAINT `FK_rel_campana_sexo_tab_campana_aviso` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.sec_users
CREATE TABLE IF NOT EXISTS `sec_users` (
  `id_user` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT '',
  `cookie_id` varchar(64) NOT NULL DEFAULT '0',
  `token` varchar(128) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `public_office` varchar(255)  NULL DEFAULT NULL,
  `phone` varchar(50) NULL DEFAULT NULL,
  `created` datetime  NULL DEFAULT NULL,
  `lastlogin` datetime  NULL DEFAULT NULL,
  `lastip` varchar(16)  NULL DEFAULT NULL,
  `notes` text  NULL DEFAULT NULL,
  `record_user` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_update` date  NULL DEFAULT NULL,
  `active` enum('a','i') NOT NULL DEFAULT 'i',
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `index_username` (`username`) USING BTREE,
  UNIQUE KEY `index_mail` (`email`) USING BTREE,
  KEY `FK_sec_users_tab_sujetos_obligados` (`record_user`),
  CONSTRAINT `FK_sec_users_tab_sujetos_obligados` FOREIGN KEY (`record_user`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.sys_active
CREATE TABLE IF NOT EXISTS `sys_active` (
  `id_active` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_active` varchar(255) NOT NULL,
  PRIMARY KEY (`id_active`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.sys_debug
CREATE TABLE IF NOT EXISTS `sys_debug` (
  `id_debug` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `debug` text CHARACTER SET latin1,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_debug`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.sys_log
CREATE TABLE IF NOT EXISTS `sys_log` (
  `id_log` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_bis` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) CHARACTER SET latin1 NOT NULL,
  `id_type` bigint(20) unsigned NOT NULL DEFAULT '0',
  `log` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `log_status_change` bigint(20) unsigned NOT NULL DEFAULT '0',
  `log_coments` text CHARACTER SET latin1,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.sys_logico
CREATE TABLE IF NOT EXISTS `sys_logico` (
  `id_logico` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logico` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_logico`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.sys_settings
CREATE TABLE IF NOT EXISTS `sys_settings` (
  `id_settings` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `recaptcha` varchar(50) NOT NULL DEFAULT '0',
  `url_docs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_settings`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_campana_aviso
CREATE TABLE IF NOT EXISTS `tab_campana_aviso` (
  `id_campana_aviso` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_campana_cobertura` bigint(20) unsigned NOT NULL,
  `id_campana_tipo` bigint(20) unsigned NOT NULL,
  `id_campana_subtipo` bigint(20) unsigned NOT NULL,
  `id_campana_tema` bigint(20) unsigned NOT NULL,
  `id_campana_objetivo` bigint(20) unsigned NOT NULL,
  `id_ejercicio` bigint(20) unsigned NOT NULL,
  `id_trimestre` bigint(20) unsigned NOT NULL,
  `id_so_contratante` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_so_solicitante` bigint(20) unsigned NOT NULL,
  `id_tiempo_oficial` bigint(20) unsigned NOT NULL,
  `nombre_campana_aviso` varchar(255) NOT NULL,
  `objetivo_comunicacion` text NULL,
  `fecha_inicio` date NULL,
  `fecha_termino` date NULL,
  `fecha_inicio_to` date DEFAULT NULL,
  `fecha_termino_to` date DEFAULT NULL,
  `publicacion_segob` varchar(255) DEFAULT NULL,
  `campana_ambito_geo` varchar(50) NULL,
  `plan_acs` varchar(255) NULL,
  `fecha_dof` date NOT NULL,
  `evaluacion` text,
  `evaluacion_documento` varchar(255) DEFAULT NULL,
  `fecha_validacion` date DEFAULT NULL,
  `area_responsable` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `nota` text,
  `autoridad` varchar(255) DEFAULT NULL,
  `clave_campana` varchar(100) DEFAULT NULL,
  `active` bigint(20) NOT NULL,
  PRIMARY KEY (`id_campana_aviso`),
  KEY `fk_cobertura` (`id_campana_cobertura`),
  KEY `fk_tipo` (`id_campana_tipo`),
  KEY `fk_subtipo` (`id_campana_subtipo`),
  KEY `fk_tema` (`id_campana_tema`),
  KEY `fk_objetivo` (`id_campana_objetivo`),
  KEY `fk_ejercicio` (`id_ejercicio`),
  KEY `fk_trimestre` (`id_trimestre`),
  KEY `fk_contratante` (`id_so_contratante`),
  KEY `fk_solicitante` (`id_so_solicitante`),
  KEY `fk_campana_ambito_geo` (`campana_ambito_geo`),
  KEY `fk_tiempo` (`id_tiempo_oficial`),
  CONSTRAINT `fk_cobertura` FOREIGN KEY (`id_campana_cobertura`) REFERENCES `cat_campana_coberturas` (`id_campana_cobertura`),
  CONSTRAINT `fk_contratante` FOREIGN KEY (`id_so_contratante`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`),
  CONSTRAINT `fk_ejercicio` FOREIGN KEY (`id_ejercicio`) REFERENCES `cat_ejercicios` (`id_ejercicio`),
  CONSTRAINT `fk_objetivo` FOREIGN KEY (`id_campana_objetivo`) REFERENCES `cat_campana_objetivos` (`id_campana_objetivo`),
  CONSTRAINT `fk_solicitante` FOREIGN KEY (`id_so_solicitante`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`),
  CONSTRAINT `fk_subtipo` FOREIGN KEY (`id_campana_subtipo`) REFERENCES `cat_campana_subtipos` (`id_campana_subtipo`),
  CONSTRAINT `fk_tema` FOREIGN KEY (`id_campana_tema`) REFERENCES `cat_campana_temas` (`id_campana_tema`),
  CONSTRAINT `fk_tiempo` FOREIGN KEY (`id_tiempo_oficial`) REFERENCES `sys_logico` (`id_logico`),
  CONSTRAINT `fk_tipo` FOREIGN KEY (`id_campana_tipo`) REFERENCES `cat_campana_tipos` (`id_campana_tipo`),
  CONSTRAINT `fk_trimestre` FOREIGN KEY (`id_trimestre`) REFERENCES `cat_trimestres` (`id_trimestre`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_contratos
CREATE TABLE IF NOT EXISTS `tab_contratos` (
  `id_contrato` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_procedimiento` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_proveedor` bigint(20) unsigned NOT NULL,
  `id_ejercicio` bigint(20) unsigned NOT NULL,
  `id_trimestre` bigint(20) unsigned NOT NULL,
  `id_so_contratante` bigint(20) unsigned NOT NULL,
  `id_so_solicitante` bigint(20) unsigned NOT NULL,
  `numero_contrato` varchar(50) NOT NULL,
  `objeto_contrato` text NOT NULL,
  `descripcion_justificacion` text NOT NULL,
  `fundamento_juridico` text NOT NULL,
  `fecha_celebracion` date NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `monto_contrato` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `file_contrato` varchar(255) DEFAULT NULL,
  `fecha_validacion` date DEFAULT NULL,
  `area_responsable` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `nota` text,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_contrato`),
  UNIQUE KEY `fl_numero` (`numero_contrato`) USING BTREE,
  KEY `fk_procedimiento_contra` (`id_procedimiento`),
  KEY `fk_ejercicio_contra` (`id_ejercicio`),
  KEY `fk_proveedor_contra` (`id_proveedor`),
  KEY `fk_trimestre_contra` (`id_trimestre`),
  KEY `fk_so_contratante` (`id_so_contratante`),
  KEY `fk_so_solicitante` (`id_so_solicitante`),
  KEY `id_contrato` (`id_contrato`,`id_proveedor`),
  CONSTRAINT `fk_ejercicio_contra` FOREIGN KEY (`id_ejercicio`) REFERENCES `cat_ejercicios` (`id_ejercicio`),
  CONSTRAINT `fk_procedimiento_contra` FOREIGN KEY (`id_procedimiento`) REFERENCES `cat_procedimientos` (`id_procedimiento`),
  CONSTRAINT `fk_proveedor_contra` FOREIGN KEY (`id_proveedor`) REFERENCES `tab_proveedores` (`id_proveedor`),
  CONSTRAINT `fk_so_contratante` FOREIGN KEY (`id_so_contratante`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`),
  CONSTRAINT `fk_so_solicitante` FOREIGN KEY (`id_so_solicitante`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`),
  CONSTRAINT `fk_trimestre_contra` FOREIGN KEY (`id_trimestre`) REFERENCES `cat_trimestres` (`id_trimestre`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_convenios_modificatorios
CREATE TABLE IF NOT EXISTS `tab_convenios_modificatorios` (
  `id_convenio_modificatorio` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_contrato` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_ejercicio` bigint(20) unsigned NOT NULL,
  `id_trimestre` bigint(20) unsigned NOT NULL,
  `numero_convenio` varchar(255) NOT NULL,
  `objeto_convenio` text NOT NULL,
  `fundamento_juridico` text NOT NULL,
  `fecha_celebracion` date NOT NULL,
  `monto_convenio` decimal(15,2) NOT NULL DEFAULT '0.00',
  `file_convenio` varchar(255) DEFAULT NULL,
  `fecha_validacion` date DEFAULT NULL,
  `area_responsable` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `nota` text,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_convenio_modificatorio`),
  UNIQUE KEY `lk_numero` (`numero_convenio`) USING BTREE,
  KEY `fk_contrato_convenio` (`id_contrato`),
  KEY `fk_ejercicio_convenio` (`id_ejercicio`),
  KEY `fk_trimestre_convenio` (`id_trimestre`),
  CONSTRAINT `fk_contrato_convenio` FOREIGN KEY (`id_contrato`) REFERENCES `tab_contratos` (`id_contrato`),
  CONSTRAINT `fk_ejercicio_convenio` FOREIGN KEY (`id_ejercicio`) REFERENCES `cat_ejercicios` (`id_ejercicio`),
  CONSTRAINT `fk_trimestre_convenio` FOREIGN KEY (`id_trimestre`) REFERENCES `cat_trimestres` (`id_trimestre`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_facturas
CREATE TABLE IF NOT EXISTS `tab_facturas` (
  `id_factura` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_proveedor` bigint(20) unsigned NOT NULL,
  `id_contrato` bigint(20) unsigned NOT NULL,
  `id_orden_compra` bigint(20) unsigned NOT NULL,
  `id_ejercicio` bigint(20) unsigned NOT NULL,
  `id_trimestre` bigint(20) unsigned NOT NULL,
  `id_so_contratante` bigint(20) unsigned NOT NULL,
  `id_presupuesto_concepto` bigint(20) unsigned NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `fecha_erogacion` date NOT NULL,
  `file_factura_pdf` varchar(255) DEFAULT NULL,
  `file_factura_xml` varchar(255) DEFAULT '1',
  `fecha_validacion` date DEFAULT NULL,
  `area_responsable` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `nota` text,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_factura`),
  KEY `fk_proveedor_fac` (`id_proveedor`),
  KEY `fk_contrato_fac` (`id_contrato`),
  KEY `fk_oc_fac` (`id_orden_compra`),
  KEY `fk_ejercicio_fac` (`id_ejercicio`),
  KEY `fk_trimestre_fac` (`id_trimestre`),
  KEY `fk_so_contratante_fac` (`id_so_contratante`),
  KEY `FK_tab_facturas_tab_presupuestos_desglose` (`id_presupuesto_concepto`),
  CONSTRAINT `FK_tab_facturas_tab_presupuestos_desglose` FOREIGN KEY (`id_presupuesto_concepto`) REFERENCES `cat_presupuesto_conceptos` (`id_presupesto_concepto`),
  CONSTRAINT `fk_contrato_fac` FOREIGN KEY (`id_contrato`) REFERENCES `tab_contratos` (`id_contrato`),
  CONSTRAINT `fk_ejercicio_fac` FOREIGN KEY (`id_ejercicio`) REFERENCES `cat_ejercicios` (`id_ejercicio`),
  CONSTRAINT `fk_oc_fac` FOREIGN KEY (`id_orden_compra`) REFERENCES `tab_ordenes_compra` (`id_orden_compra`),
  CONSTRAINT `fk_proveedor_fac` FOREIGN KEY (`id_proveedor`) REFERENCES `tab_proveedores` (`id_proveedor`),
  CONSTRAINT `fk_so_contratante_fac` FOREIGN KEY (`id_so_contratante`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`),
  CONSTRAINT `fk_trimestre_fac` FOREIGN KEY (`id_trimestre`) REFERENCES `cat_trimestres` (`id_trimestre`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_facturas_desglose
CREATE TABLE IF NOT EXISTS `tab_facturas_desglose` (
  `id_factura_desglose` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_factura` bigint(20) unsigned NOT NULL,
  `id_campana_aviso` bigint(20) unsigned NOT NULL,
  `id_servicio_clasificacion` bigint(20) unsigned NOT NULL,
  `id_servicio_categoria` bigint(20) unsigned NOT NULL,
  `id_servicio_subcategoria` bigint(20) unsigned NOT NULL,
  `id_servicio_unidad` bigint(20) unsigned NULL DEFAULT 0,
  `id_so_solicitante` bigint(20) unsigned NOT NULL,
  `numero_partida` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `descripcion_servicios` text NOT NULL,
  `cantidad` decimal(15,2) NOT NULL DEFAULT '1.00',
  `precio_unitarios` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `monto_desglose` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `area_administrativa` varchar(255) DEFAULT NULL,
  `fecha_validacion` date DEFAULT NULL,
  `area_responsable` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `nota` text,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_factura_desglose`),
  KEY `fk_factura_df` (`id_factura`),
  KEY `fk_campana_df` (`id_campana_aviso`),
  KEY `FK_tab_facturas_desglose_tab_sujetos_obligados` (`id_so_solicitante`),
  KEY `FK1` (`id_servicio_categoria`),
  KEY `FK2` (`id_servicio_clasificacion`),
  KEY `FK3` (`id_servicio_subcategoria`),
  KEY `FK_tab_facturas_desglose_cat_servicios_unidades` (`id_servicio_unidad`),
  CONSTRAINT `FK1` FOREIGN KEY (`id_servicio_categoria`) REFERENCES `cat_servicios_categorias` (`id_servicio_categoria`),
  CONSTRAINT `FK2` FOREIGN KEY (`id_servicio_clasificacion`) REFERENCES `cat_servicios_clasificacion` (`id_servicio_clasificacion`),
  CONSTRAINT `FK3` FOREIGN KEY (`id_servicio_subcategoria`) REFERENCES `cat_servicios_subcategorias` (`id_servicio_subcategoria`),
  CONSTRAINT `FK_tab_facturas_desglose_cat_servicios_unidades` FOREIGN KEY (`id_servicio_unidad`) REFERENCES `cat_servicios_unidades` (`id_servicio_unidad`),
  CONSTRAINT `FK_tab_facturas_desglose_tab_sujetos_obligados` FOREIGN KEY (`id_so_solicitante`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`),
  CONSTRAINT `fk_campana_df` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`),
  CONSTRAINT `fk_factura_df` FOREIGN KEY (`id_factura`) REFERENCES `tab_facturas` (`id_factura`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_ordenes_compra
CREATE TABLE IF NOT EXISTS `tab_ordenes_compra` (
  `id_orden_compra` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_procedimiento` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_proveedor` bigint(20) unsigned NOT NULL,
  `id_contrato` bigint(20) unsigned DEFAULT NULL,
  `id_ejercicio` bigint(20) unsigned NOT NULL,
  `id_trimestre` bigint(20) unsigned NOT NULL,
  `id_so_contratante` bigint(20) unsigned NOT NULL,
  `id_so_solicitante` bigint(20) unsigned NOT NULL,
  `id_campana_aviso` bigint(20) unsigned NOT NULL,
  `numero_orden_compra` varchar(255) NOT NULL,
  `descripcion_justificacion` text NOT NULL,
  `motivo_adjudicacion` text NOT NULL,
  `fecha_orden` date NOT NULL,
  `file_orden` varchar(255) DEFAULT NULL,
  `fecha_validacion` date DEFAULT NULL,
  `area_responsable` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `nota` text,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_orden_compra`),
  KEY `lk_numero_oc` (`numero_orden_compra`) USING BTREE,
  KEY `fk_proveedor_oc` (`id_proveedor`),
  KEY `fk_contrato_oc` (`id_contrato`,`id_proveedor`),
  KEY `fk_ejercicio_oc` (`id_ejercicio`),
  KEY `fk_trimestre_oc` (`id_trimestre`),
  KEY `fk_so_contratante_oc` (`id_so_contratante`),
  KEY `fk_so_solicitante_oc` (`id_so_solicitante`),
  KEY `fk_campana_oc` (`id_campana_aviso`),
  KEY `FK_tab_ordenes_compra_cat_procedimientos` (`id_procedimiento`),
  CONSTRAINT `FK_tab_ordenes_compra_cat_procedimientos` FOREIGN KEY (`id_procedimiento`) REFERENCES `cat_procedimientos` (`id_procedimiento`),
  CONSTRAINT `fk_campana_oc` FOREIGN KEY (`id_campana_aviso`) REFERENCES `tab_campana_aviso` (`id_campana_aviso`),
  CONSTRAINT `fk_contrato_oc` FOREIGN KEY (`id_contrato`) REFERENCES `tab_contratos` (`id_contrato`),
  CONSTRAINT `fk_ejercicio_oc` FOREIGN KEY (`id_ejercicio`) REFERENCES `cat_ejercicios` (`id_ejercicio`),
  CONSTRAINT `fk_proveedor_oc` FOREIGN KEY (`id_proveedor`) REFERENCES `tab_proveedores` (`id_proveedor`),
  CONSTRAINT `fk_so_contratante_oc` FOREIGN KEY (`id_so_contratante`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`),
  CONSTRAINT `fk_so_solicitante_oc` FOREIGN KEY (`id_so_solicitante`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`),
  CONSTRAINT `fk_trimestre_oc` FOREIGN KEY (`id_trimestre`) REFERENCES `cat_trimestres` (`id_trimestre`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_presupuestos
CREATE TABLE IF NOT EXISTS `tab_presupuestos` (
  `id_presupuesto` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_ejercicio` bigint(20) unsigned NOT NULL,
  `id_sujeto_obligado` bigint(20) unsigned NOT NULL DEFAULT '0',
  `denominacion` text,
  `fecha_publicacion` date DEFAULT NULL,
  `file_programa_anual` varchar(255) DEFAULT NULL,
  `fecha_validacion` date DEFAULT NULL,
  `area_responsable` varchar(255) DEFAULT NULL,
  `anio` bigint(20) unsigned DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `nota` text,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_presupuesto`),
  UNIQUE KEY `uk_ejercicio_sujeto` (`id_ejercicio`,`id_sujeto_obligado`),
  KEY `FK_tab_presupuestos_tab_sujetos_obligados` (`id_sujeto_obligado`),
  CONSTRAINT `FK_tab_presupuestos_cat_ejercicios` FOREIGN KEY (`id_ejercicio`) REFERENCES `cat_ejercicios` (`id_ejercicio`),
  CONSTRAINT `FK_tab_presupuestos_tab_sujetos_obligados` FOREIGN KEY (`id_sujeto_obligado`) REFERENCES `tab_sujetos_obligados` (`id_sujeto_obligado`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_presupuestos_desglose
CREATE TABLE IF NOT EXISTS `tab_presupuestos_desglose` (
  `id_presupuesto_desglose` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_presupuesto` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_presupuesto_concepto` bigint(20) unsigned NOT NULL DEFAULT '0',
  `monto_presupuesto` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `monto_modificacion` decimal(15,2) NOT NULL DEFAULT '0.00',
  `fecha_validacion` date DEFAULT NULL,
  `area_responsable` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `nota` text,
  `denominacion` varchar(255) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `active` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_presupuesto_desglose`),
  UNIQUE KEY `uk_preusouesto` (`id_presupuesto`,`id_presupuesto_concepto`),
  KEY `FK_tab_presupuestos_desglose_cat_presupuesto_conceptos` (`id_presupuesto_concepto`),
  CONSTRAINT `FK_tab_presupuestos_desglose_cat_presupuesto_conceptos` FOREIGN KEY (`id_presupuesto_concepto`) REFERENCES `cat_presupuesto_conceptos` (`id_presupesto_concepto`),
  CONSTRAINT `FK_tab_presupuestos_desglose_tab_presupuestos` FOREIGN KEY (`id_presupuesto`) REFERENCES `tab_presupuestos` (`id_presupuesto`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_proveedores
CREATE TABLE IF NOT EXISTS `tab_proveedores` (
  `id_proveedor` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_personalidad_juridica` bigint(20) unsigned NOT NULL,
  `nombre_razon_social` varchar(255) NOT NULL,
  `nombre_comercial` varchar(255) NOT NULL DEFAULT 'Persona física',
  `rfc` varchar(30) NOT NULL,
  `primer_apellido` varchar(255) DEFAULT NULL,
  `segundo_apellido` varchar(255) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `fecha_validacion` date DEFAULT NULL,
  `area_responsable` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `nota` text,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `rfc` (`rfc`),
  KEY `fk_persona_pro` (`id_personalidad_juridica`),
  CONSTRAINT `fk_persona_pro` FOREIGN KEY (`id_personalidad_juridica`) REFERENCES `cat_personalidad_juridica` (`id_personalidad_juridica`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_servicios
CREATE TABLE IF NOT EXISTS `tab_servicios` (
  `id_servicio` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_servicio_clasificacion` bigint(255) unsigned NOT NULL,
  `id_servicio_categoria` bigint(20) unsigned NOT NULL,
  `id_servicio_subcategoria` bigint(20) unsigned NOT NULL,
  `id_servicio_unidad` bigint(20) unsigned NOT NULL,
  `nombre_servicio` varchar(255) NOT NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_servicio`),
  KEY `fk_clasi` (`id_servicio_clasificacion`),
  KEY `fk_catego` (`id_servicio_categoria`),
  KEY `FK_tab_servicios_cat_servicios_subcategorias` (`id_servicio_subcategoria`),
  KEY `FK_tab_servicios_cat_servicios_unidades` (`id_servicio_unidad`),
  CONSTRAINT `FK_tab_servicios_cat_servicios_subcategorias` FOREIGN KEY (`id_servicio_subcategoria`) REFERENCES `cat_servicios_subcategorias` (`id_servicio_subcategoria`),
  CONSTRAINT `FK_tab_servicios_cat_servicios_unidades` FOREIGN KEY (`id_servicio_unidad`) REFERENCES `cat_servicios_unidades` (`id_servicio_unidad`),
  CONSTRAINT `fk_catego` FOREIGN KEY (`id_servicio_categoria`) REFERENCES `cat_servicios_categorias` (`id_servicio_categoria`),
  CONSTRAINT `fk_clasi` FOREIGN KEY (`id_servicio_clasificacion`) REFERENCES `cat_servicios_clasificacion` (`id_servicio_clasificacion`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla rusiainf_inai.tab_sujetos_obligados
CREATE TABLE IF NOT EXISTS `tab_sujetos_obligados` (
  `id_sujeto_obligado` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_so_atribucion` bigint(20) unsigned NOT NULL,
  `id_so_orden_gobierno` bigint(20) unsigned NOT NULL,
  `id_so_estado` bigint(20) unsigned NOT NULL,
  `nombre_sujeto_obligado` varchar(255) NOT NULL,
  `siglas_sujeto_obligado` varchar(50) NULL,
  `url_sujeto_obligado` varchar(255) NULL,
  `active` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_sujeto_obligado`),
  KEY `fk_atribucion` (`id_so_atribucion`),
  KEY `fk_orden_gobierno` (`id_so_orden_gobierno`),
  KEY `fk_estado` (`id_so_estado`),
  CONSTRAINT `fk_atribucion` FOREIGN KEY (`id_so_atribucion`) REFERENCES `cat_so_atribucion` (`id_so_atribucion`),
  CONSTRAINT `fk_estado` FOREIGN KEY (`id_so_estado`) REFERENCES `cat_so_estados` (`id_so_estado`),
  CONSTRAINT `fk_orden_gobierno` FOREIGN KEY (`id_so_orden_gobierno`) REFERENCES `cat_so_ordenes_gobierno` (`id_so_orden_gobierno`)
) DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para vista rusiainf_inai.vact_campana_aviso
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_campana_aviso` (
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_cobertura` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_tipo` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_subtipo` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_tema` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_objetivo` BIGINT(20) UNSIGNED NOT NULL,
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_trimestre` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_contratante` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_solicitante` BIGINT(20) UNSIGNED NOT NULL,
	`id_tiempo_oficial` BIGINT(20) UNSIGNED NOT NULL,
	`nombre_campana_aviso` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`objetivo_comunicacion` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fecha_inicio` DATE NOT NULL,
	`fecha_termino` DATE NOT NULL,
	`fecha_inicio_to` DATE NULL,
	`fecha_termino_to` DATE NULL,
	`publicacion_segob` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`campana_ambito_geo` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`plan_acs` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`fecha_dof` DATE NOT NULL,
	`evaluacion` TEXT NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_contratos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_contratos` (
	`id_contrato` BIGINT(20) UNSIGNED NOT NULL,
	`id_procedimiento` BIGINT(20) UNSIGNED NOT NULL,
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_trimestre` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_contratante` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_solicitante` BIGINT(20) UNSIGNED NOT NULL,
	`numero_contrato` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`objeto_contrato` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`descripcion_justificacion` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fundamento_juridico` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fecha_celebracion` DATE NOT NULL,
	`fecha_inicio` DATE NOT NULL,
	`fecha_fin` DATE NOT NULL,
	`monto_contrato` DECIMAL(15,2) UNSIGNED NOT NULL,
	`file_contrato` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_convenios_modificatorios
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_convenios_modificatorios` (
	`id_convenio_modificatorio` BIGINT(20) UNSIGNED NOT NULL,
	`id_contrato` BIGINT(20) UNSIGNED NOT NULL,
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_trimestre` BIGINT(20) UNSIGNED NOT NULL,
	`numero_convenio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`objeto_convenio` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fundamento_juridico` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fecha_celebracion` DATE NOT NULL,
	`monto_convenio` DECIMAL(15,2) NOT NULL,
	`file_convenio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_ejercicios
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_ejercicios` (
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_facturas
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_facturas` (
	`id_factura` BIGINT(20) UNSIGNED NOT NULL,
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`id_contrato` BIGINT(20) UNSIGNED NULL,
	`id_orden_compra` BIGINT(20) UNSIGNED NULL,
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_trimestre` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_contratante` BIGINT(20) UNSIGNED NOT NULL,
	`id_presupuesto_concepto` BIGINT(20) UNSIGNED NOT NULL,
	`numero_factura` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`fecha_erogacion` DATE NOT NULL,
	`file_factura_pdf` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`file_factura_xml` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_facturas_desglose
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_facturas_desglose` (
	`id_factura_desglose` BIGINT(20) UNSIGNED NOT NULL,
	`id_factura` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`id_servicio_clasificacion` BIGINT(20) UNSIGNED NOT NULL,
	`id_servicio_categoria` BIGINT(20) UNSIGNED NOT NULL,
	`id_servicio_subcategoria` BIGINT(20) UNSIGNED NOT NULL,
	`id_servicio_unidad` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_solicitante` BIGINT(20) UNSIGNED NOT NULL,
	`numero_partida` BIGINT(20) UNSIGNED NOT NULL,
	`descripcion_servicios` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`cantidad` DECIMAL(15,2) NOT NULL,
	`precio_unitarios` DECIMAL(15,2) UNSIGNED NOT NULL,
	`monto_desglose` DECIMAL(15,2) UNSIGNED NOT NULL,
	`area_administrativa` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`fecha_validacion` DATE NULL,
	`area_responsable` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`periodo` INT(11) NULL,
	`fecha_actualizacion` DATE NULL,
	`nota` TEXT NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_ordenes_compra
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_ordenes_compra` (
	`id_orden_compra` BIGINT(20) UNSIGNED NOT NULL,
	`id_procedimiento` BIGINT(20) UNSIGNED NOT NULL,
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`id_contrato` BIGINT(20) UNSIGNED NULL,
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_trimestre` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_contratante` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_solicitante` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`numero_orden_compra` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`descripcion_justificacion` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fecha_orden` DATE NOT NULL,
	`file_orden` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_ordenes_compra_montos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_ordenes_compra_montos` (
	`id_orden_compra` BIGINT(20) UNSIGNED NOT NULL,
	`id_procedimiento` BIGINT(20) UNSIGNED NOT NULL,
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`id_contrato` BIGINT(20) UNSIGNED NULL,
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_trimestre` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_contratante` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_solicitante` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`numero_orden_compra` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`descripcion_justificacion` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fecha_orden` DATE NOT NULL,
	`file_orden` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL,
	`monto` DECIMAL(59,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_presupuestos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_presupuestos` (
	`id_presupuesto` BIGINT(20) UNSIGNED NOT NULL,
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_sujeto_obligado` BIGINT(20) UNSIGNED NOT NULL,
	`file_programa_anual` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_presupuestos_desglose
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_presupuestos_desglose` (
	`id_presupuesto_desglose` BIGINT(20) UNSIGNED NOT NULL,
	`id_presupuesto` BIGINT(20) UNSIGNED NOT NULL,
	`id_presupuesto_concepto` BIGINT(20) UNSIGNED NOT NULL,
	`monto_presupuesto` DECIMAL(15,2) UNSIGNED NOT NULL,
	`monto_modificacion` DECIMAL(15,2) NOT NULL,
	`active` DOUBLE NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_presupuesto_conceptos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_presupuesto_conceptos` (
	`id_presupesto_concepto` BIGINT(20) UNSIGNED NOT NULL,
	`capitulo` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`concepto` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`partida` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`denominacion` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`descripcion` MEDIUMTEXT NOT NULL COLLATE 'utf8_general_ci',
	`id_captura` BIGINT(20) NOT NULL,
	`active` BIGINT(20) NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_proveedores
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_proveedores` (
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`id_personalidad_juridica` BIGINT(20) UNSIGNED NOT NULL,
	`nombre_razon_social` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`nombre_comercial` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`rfc` VARCHAR(30) NOT NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_servicios
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_servicios` (
	`id_servicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_servicio_clasificacion` BIGINT(255) UNSIGNED NOT NULL,
	`id_servicio_categoria` BIGINT(20) UNSIGNED NOT NULL,
	`id_servicio_subcategoria` BIGINT(20) UNSIGNED NOT NULL,
	`id_servicio_unidad` BIGINT(20) UNSIGNED NOT NULL,
	`nombre_servicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_sujetos_obligados
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vact_sujetos_obligados` (
	`id_sujeto_obligado` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_atribucion` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_orden_gobierno` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_estado` BIGINT(20) UNSIGNED NOT NULL,
	`nombre_sujeto_obligado` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`siglas_sujeto_obligado` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`url_sujeto_obligado` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vcampanasyavisos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcampanasyavisos` (
	`id_campana_tipo` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`trimestre` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`nombre_campana_tipo` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`nombre_campana_aviso` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`contratante` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`solicitante` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`nombre_tipo_tiempo` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`monto_total` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vcapitulo_denominacion
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcapitulo_denominacion` (
	`id_presupesto_concepto` BIGINT(20) UNSIGNED NOT NULL,
	`capitulo` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`concepto` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`partida` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`denominacion` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`descripcion` MEDIUMTEXT NOT NULL COLLATE 'utf8_general_ci',
	`id_captura` BIGINT(20) NOT NULL,
	`active` BIGINT(20) NOT NULL,
	`capitulo_denominacion` VARCHAR(285) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vcap_conceptos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcap_conceptos` (
	`id_presupesto_concepto` BIGINT(20) UNSIGNED NOT NULL,
	`capitulo` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`concepto` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`partida` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`denominacion` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`descripcion` MEDIUMTEXT NOT NULL COLLATE 'utf8_general_ci',
	`id_captura` BIGINT(20) NOT NULL,
	`active` BIGINT(20) NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vcat_categorias
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcat_categorias` (
	`id_categoria` BIGINT(20) UNSIGNED NOT NULL,
	`id_clasificacion` BIGINT(20) UNSIGNED NOT NULL,
	`nombre_categoria` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vcat_conceptos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcat_conceptos` (
	`id_presupesto_concepto` BIGINT(20) UNSIGNED NOT NULL,
	`capitulo` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`concepto` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`partida` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`denominacion` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`descripcion` MEDIUMTEXT NOT NULL COLLATE 'utf8_general_ci',
	`id_captura` BIGINT(20) NOT NULL,
	`active` BIGINT(20) NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vcontratos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcontratos` (
	`id_contrato` BIGINT(20) UNSIGNED NOT NULL,
	`id_procedimiento` BIGINT(20) UNSIGNED NOT NULL,
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_trimestre` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_contratante` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_solicitante` BIGINT(20) UNSIGNED NOT NULL,
	`numero_contrato` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`objeto_contrato` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`descripcion_justificacion` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fundamento_juridico` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fecha_celebracion` DATE NOT NULL,
	`fecha_inicio` DATE NOT NULL,
	`fecha_fin` DATE NOT NULL,
	`monto_contrato` DECIMAL(15,2) UNSIGNED NOT NULL,
	`file_contrato` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vcontratosyordenes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcontratosyordenes` (
	`id_contrato` BIGINT(20) UNSIGNED NOT NULL,
	`id_orden_compra` BIGINT(20) UNSIGNED NOT NULL,
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`trimestre` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`numero_contrato` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`numero_orden_compra` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`contratante` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`solicitante` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`proveedor` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`monto_contrato` DECIMAL(15,2) UNSIGNED NULL,
	`monto_ejercido` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vcont_x_anio_x_prov
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vcont_x_anio_x_prov` (
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`nombre_razon_social` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`count_contratos` BIGINT(21) NOT NULL,
	`cont_anio` INT(4) NULL,
	`sum_contratos` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vfacturas
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vfacturas` (
	`id_factura` BIGINT(20) UNSIGNED NOT NULL,
	`ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`trimestre` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`proveedor` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`numero_factura` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`fecha_erogacion` DATE NOT NULL,
	`monto_ejercido` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vgasto_clasf_servicio
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vgasto_clasf_servicio` (
	`id_servicio_clasificacion` BIGINT(20) UNSIGNED NOT NULL,
	`id_contrato` BIGINT(20) UNSIGNED NULL,
	`id_orden_compra` BIGINT(20) UNSIGNED NULL,
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`id_factura` BIGINT(20) UNSIGNED NOT NULL,
	`ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`factura` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`fecha_erogacion` DATE NOT NULL,
	`proveedor` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`nombre_servicio_clasificacion` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`nombre_servicio_categoria` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`nombre_servicio_subcategoria` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`tipo` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`nombre_campana_aviso` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`monto_servicio` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vgrafica1
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vgrafica1` (
	`ejercicio` INT(4) NULL,
	`servicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`campana` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`partida` VARCHAR(265) NOT NULL COLLATE 'utf8_general_ci',
	`ejercido` DECIMAL(37,2) NULL,
	`tipo` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`fecha` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`proveedor` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`presupuesto` DECIMAL(41,6) NULL,
	`modificacion` DECIMAL(42,6) NULL,
	`proveedores` DECIMAL(24,4) NULL,
	`totalcampanas` DECIMAL(24,4) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vlimite
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vlimite` (
	`categoria` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`tipo` VARCHAR(17) NOT NULL COLLATE 'utf8mb4_general_ci',
	`proveedor` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(37,2) NULL,
	`numero` BIGINT(21) NOT NULL,
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vlimite_act
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vlimite_act` (
	`limite` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vlinks_proveedor
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vlinks_proveedor` (
	`tipo` VARCHAR(17) NOT NULL COLLATE 'utf8mb4_general_ci',
	`proveedor` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(59,2) NULL,
	`numero` BIGINT(21) NOT NULL,
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vlinks_tipo
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vlinks_tipo` (
	`categoria` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`tipo` VARCHAR(17) NOT NULL COLLATE 'utf8mb4_general_ci',
	`total` DECIMAL(59,2) NULL,
	`numero` BIGINT(21) NOT NULL,
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vlista_contratos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vlista_contratos` (
	`id_contrato` BIGINT(20) UNSIGNED NOT NULL,
	`ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`trimestre` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`numero_contrato` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`solicitante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`contratante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`proveedor` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`monto_contrato` DECIMAL(15,2) UNSIGNED NOT NULL,
	`monto_ejercido` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vlista_oc
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vlista_oc` (
	`id_orden_compra` BIGINT(20) UNSIGNED NOT NULL,
	`ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`trimestre` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`numero_orden_compra` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`solicitante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`contratante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`proveedor` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`monto_ejercido` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vlista_por_proveedor
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vlista_por_proveedor` (
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`lista` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vmeses_porservicio
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vmeses_porservicio` (
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`id_mes` BIGINT(20) UNSIGNED NOT NULL,
	`mes_corto` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`nombre_servicio_categoria` VARCHAR(30) NOT NULL COLLATE 'utf8_general_ci',
	`monto` DECIMAL(37,2) NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vmonto_campana
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vmonto_campana` (
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`monto` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vmonto_oc
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vmonto_oc` (
	`id_orden_compra` BIGINT(20) UNSIGNED NULL,
	`monto` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.voc_monto_factura
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `voc_monto_factura` (
	`id_orden_compra` BIGINT(20) UNSIGNED NULL,
	`monto` VARCHAR(87) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.voc_monto_factura_sf
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `voc_monto_factura_sf` (
	`id_orden_compra` BIGINT(20) UNSIGNED NULL,
	`monto` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vordenes_compra
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vordenes_compra` (
	`id_orden_compra` BIGINT(20) UNSIGNED NOT NULL,
	`id_procedimiento` BIGINT(20) UNSIGNED NOT NULL,
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`id_contrato` BIGINT(20) UNSIGNED NULL,
	`id_ejercicio` BIGINT(20) UNSIGNED NOT NULL,
	`id_trimestre` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_contratante` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_solicitante` BIGINT(20) UNSIGNED NOT NULL,
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`numero_orden_compra` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`descripcion_justificacion` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`fecha_orden` DATE NOT NULL,
	`file_orden` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_campana_aviso
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_campana_aviso` (
	`ID de campana o aviso institucional` BIGINT(20) UNSIGNED NOT NULL,
	`Campana o aviso institucional` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Subtipo` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Nombre` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Trimestre` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Sujeto obligado contratant` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Sujeto obligado solicitante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Tema` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Objetivo institucional` TEXT NULL COLLATE 'utf8_general_ci',
	`Objetivo de comunicación` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`Cobertura` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Ámbito geográfico` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`Fecha inicio` DATE NOT NULL,
	`Fecha término` DATE NOT NULL,
	`Tiempo oficial` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Fecha inicio tiempo oficial` DATE NULL,
	`Fecha término tiempo oficial` DATE NULL,
	`Publicación SEGOB.` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Documento del PACS` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Fecha publicación` DATE NOT NULL,
	`Evaluación` TEXT NULL COLLATE 'utf8_general_ci',
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_campana_grupo_edad
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_campana_grupo_edad` (
	`ID de grupo de edad` BIGINT(20) UNSIGNED NOT NULL,
	`ID de campaña o aviso institucional` BIGINT(20) UNSIGNED NOT NULL,
	`Grupo de edad` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_campana_lugar
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_campana_lugar` (
	`ID de lugar` BIGINT(20) UNSIGNED NOT NULL,
	`ID de campana o aviso institucional` BIGINT(20) UNSIGNED NOT NULL,
	`Lugar` VARCHAR(250) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_campana_maudio
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_campana_maudio` (
	`ID de audios` BIGINT(20) UNSIGNED NOT NULL,
	`ID de campana o aviso institucional` BIGINT(20) UNSIGNED NOT NULL,
	`Nombre Audio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Audios (Vínculo al archivo)` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Audios (Vínculo al repositorio)` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_campana_mimagenes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_campana_mimagenes` (
	`ID de imagenes` BIGINT(20) UNSIGNED NOT NULL,
	`ID de campana o aviso institucional` BIGINT(20) UNSIGNED NOT NULL,
	`Nombre Imagen` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Imagenes (Vínculo al archivo)` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Imagenes (Vínculo al repositorio)` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_campana_mvideo
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_campana_mvideo` (
	`ID de Videos` BIGINT(20) UNSIGNED NOT NULL,
	`ID de campana o aviso institucional` BIGINT(20) UNSIGNED NOT NULL,
	`Nombre Video` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Videos(Vínculo al archivo)` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Videos(Vínculo al repositorio)` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_campana_nivel
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_campana_nivel` (
	`ID de nivel socioeconómico` BIGINT(20) UNSIGNED NOT NULL,
	`ID de campana o aviso institucional` BIGINT(20) UNSIGNED NOT NULL,
	`Nivel socioeconómico` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_campana_nivel_educativo
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_campana_nivel_educativo` (
	`ID de educación` BIGINT(20) UNSIGNED NOT NULL,
	`ID de campana o aviso institucional` BIGINT(20) UNSIGNED NOT NULL,
	`Educación` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_campana_sexo
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_campana_sexo` (
	`ID de sexo` BIGINT(20) UNSIGNED NOT NULL,
	`ID de campana o aviso institucional` BIGINT(20) UNSIGNED NOT NULL,
	`Sexo` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_contratos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_contratos` (
	`ID (Número de contrato)` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`Procedimiento` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Proveedor` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Trimestre` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Contratante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Solicitante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Objeto del contrato` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`Descripción` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`Fundamento jurídico` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`Fecha celebración` DATE NOT NULL,
	`Fecha inicio` DATE NOT NULL,
	`Fecha fin` DATE NOT NULL,
	`Monto original del contrato` DECIMAL(15,2) UNSIGNED NOT NULL,
	`Monto modificado` DECIMAL(37,2) NULL,
	`Monto total` DECIMAL(38,2) NULL,
	`Monto pagado a la fecha` DECIMAL(37,2) NULL,
	`Archivo contrato en PDF (Vinculo al archivo)` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_convenios_modificatorios
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_convenios_modificatorios` (
	`ID (Número de convenio modificatorio)` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`ID (Número de contrato)` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`Ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Trimestre` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Objeto` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`Fundamento jurídico` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`Fecha celebración` DATE NOT NULL,
	`Monto` DECIMAL(15,2) NOT NULL,
	`Archivo convenio en PDF (Vinculo al archivo)` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_facturas
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_facturas` (
	`ID Factura` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`Proveedor` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Contrato` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`Orden` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Trimestre` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Sujeto obligado contratante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Partida` VARCHAR(7) NULL COLLATE 'utf8_general_ci',
	`Monto` DECIMAL(37,2) NULL,
	`Archivo factura en PDF (Vínculo al archivo)` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Archivo factura en XML (Vínculo al archivo)` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Fecha de erogación` DATE NOT NULL,
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_facturas_desglose
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_facturas_desglose` (
	`ID Detalle Factura` BIGINT(20) UNSIGNED NOT NULL,
	`ID Factura` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`Campana o aviso institucional` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Nombre campana o aviso institucional` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Clasificación del servicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Categoría del servicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Subcategoría del servicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Unidad` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Sujeto obligado solicitante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Área administrativa solicitante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Descripción del servicio o producto adquirido` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`Cantidad` DECIMAL(15,2) NOT NULL,
	`Precio unitario con I.V.A incluido` DECIMAL(15,2) UNSIGNED NOT NULL,
	`Monto` DECIMAL(15,2) UNSIGNED NOT NULL,
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_gasto_x_proveedor
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_gasto_x_proveedor` (
	`ID de proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`Personalidad jurídica` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Nombre o razón social` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Nombre comercial` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`R.F.C.` VARCHAR(30) NOT NULL COLLATE 'utf8_general_ci',
	`Monto total pagado` DECIMAL(37,2) NULL,
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_oc_x_proveedor
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_oc_x_proveedor` (
	`ID (Orden de compra)` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`ID de proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`Nombre Proveedor` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Procedimiento` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`ID (Número de contrato)` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`Ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Trimestre` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Sujeto obligado ordenante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Campana o aviso institucional` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Sujeto obligado solicitante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Justificación` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`Fecha de orden` DATE NOT NULL,
	`Archivo de la orden de compra en PDF` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_ordenes_compra
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_ordenes_compra` (
	`ID_Orden_de_compra)` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Proveedor` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Procedimiento` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Contrato` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`Ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Trimestre` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Sujeto_obligado_ordenante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Campana o aviso institucional` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Sujeto obligado solicitante` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`numero_orden_de_compra` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Justificación` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`Fecha_de_orden` DATE NOT NULL,
	`Archivo_de_la_orden_de_compra_en_PDF_(Vínculo_al_documento)` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_presupuestos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_presupuestos` (
	`ID de presupuesto` BIGINT(20) UNSIGNED NOT NULL,
	`Ejercicio` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Sujeto obligado` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Presupuesto original` DECIMAL(37,2) NULL,
	`Monto modificado` DECIMAL(37,2) NULL,
	`Presupuesto modificado` DECIMAL(38,2) NULL,
	`Presupuesto ejercido` DECIMAL(37,2) NULL,
	`Programa Anual` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_presupuestos_desglose
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_presupuestos_desglose` (
	`ID de desglose` BIGINT(20) UNSIGNED NOT NULL,
	`ID de presupuesto` BIGINT(20) UNSIGNED NOT NULL,
	`Partida presupuestal` VARCHAR(7) NULL COLLATE 'utf8_general_ci',
	`Monto asignado` DECIMAL(15,2) UNSIGNED NOT NULL,
	`Monto de modificación` DECIMAL(15,2) NOT NULL,
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_proveedores
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_proveedores` (
	`ID` BIGINT(20) UNSIGNED NOT NULL,
	`Personalidad jurídica` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Nombre o razón social` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Nombre comercial` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`R.F.C.` VARCHAR(30) NOT NULL COLLATE 'utf8_general_ci',
	`Estatus` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vout_sujetos_obligados
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vout_sujetos_obligados` (
	`ID de S.O.` BIGINT(20) UNSIGNED NOT NULL,
	`Función` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Orden (Federal, Estatal, Municipal)` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`Estado` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`Nombre` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Siglas` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`URL de página` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vpor_proveedor
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vpor_proveedor` (
	`categoria` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`tipo` VARCHAR(17) NOT NULL COLLATE 'utf8mb4_general_ci',
	`proveedor` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(37,2) NULL,
	`numero` BIGINT(21) NOT NULL,
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vpregrafica1
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vpregrafica1` (
	`ejercicio` INT(4) NULL,
	`servicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`campana` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`partida` VARCHAR(265) NOT NULL COLLATE 'utf8_general_ci',
	`ejercido` DECIMAL(37,2) NULL,
	`tipo` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`fecha` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`proveedor` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`campana_aviso` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vso_actual
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vso_actual` (
	`id_user` BIGINT(20) UNSIGNED NOT NULL,
	`username` VARCHAR(30) NOT NULL COLLATE 'utf8_general_ci',
	`password` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`cookie_id` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`token` VARCHAR(128) NOT NULL COLLATE 'utf8_general_ci',
	`email` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`fname` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`lname` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`public_office` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`phone` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`created` DATETIME NOT NULL,
	`lastlogin` DATETIME NOT NULL,
	`lastip` VARCHAR(16) NULL COLLATE 'utf8_general_ci',
	`notes` TEXT NULL COLLATE 'utf8_general_ci',
	`record_user` BIGINT(20) UNSIGNED NOT NULL,
	`last_update` DATE NOT NULL,
	`active` ENUM('a','i') NOT NULL COLLATE 'utf8_general_ci',
	`id_sujeto_obligado` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_atribucion` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vso_contratante
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vso_contratante` (
	`id_sujeto_obligado` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_atribucion` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_orden_gobierno` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_estado` BIGINT(20) UNSIGNED NOT NULL,
	`nombre_sujeto_obligado` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`siglas_sujeto_obligado` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`url_sujeto_obligado` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vso_solicitante
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vso_solicitante` (
	`id_sujeto_obligado` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_atribucion` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_orden_gobierno` BIGINT(20) UNSIGNED NOT NULL,
	`id_so_estado` BIGINT(20) UNSIGNED NOT NULL,
	`nombre_sujeto_obligado` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`siglas_sujeto_obligado` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`url_sujeto_obligado` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`active` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vsujetosobligados
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vsujetosobligados` (
	`id_sujeto_obligado` BIGINT(20) UNSIGNED NOT NULL,
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`funcion` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`orden` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`estado` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`nombre` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`siglas` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`URL` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`monto_total` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vtable1
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vtable1` (
	`Clave de partida` VARCHAR(23) NOT NULL COLLATE 'utf8_general_ci',
	`Descripción` MEDIUMTEXT NOT NULL COLLATE 'utf8_general_ci',
	`Ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Prespuesto Original` DECIMAL(37,2) NULL,
	`Monto Modificado` DECIMAL(37,2) NULL,
	`Presupuesto Modificado` DECIMAL(38,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vtable2
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vtable2` (
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`Nombre o razón social` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Contratos` BIGINT(21) NULL,
	`Órdenes de compra sin contrato` BIGINT(21) NULL,
	`Monto total pagado` DECIMAL(37,2) NULL,
	`Ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vtab_contratos_oc
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vtab_contratos_oc` (
	`numero_contrato` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`numero_orden_compra` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`tipo` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`nombre` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`anio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`monto_presupuesto` DECIMAL(35,0) NULL,
	`id_contrato` BIGINT(20) UNSIGNED NOT NULL,
	`id_orden_compra` BIGINT(20) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vtab_presupuesto
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vtab_presupuesto` (
	`partida` VARCHAR(7) NOT NULL COLLATE 'utf8_general_ci',
	`descripcion` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`original` DECIMAL(37,2) NULL,
	`modificaciones` DECIMAL(37,2) NULL,
	`presupuesto` DECIMAL(38,2) NULL,
	`ejercido` DECIMAL(37,2) NOT NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vtab_proveedores
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vtab_proveedores` (
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`ejercicio` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`nombre` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`contratos` BIGINT(21) NULL,
	`ordenes` BIGINT(21) NULL,
	`monto` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vtipo_campana_proveedor
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vtipo_campana_proveedor` (
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`campana_aviso` TEXT NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vtop10_campanas
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vtop10_campanas` (
	`id_campana_aviso` BIGINT(20) UNSIGNED NOT NULL,
	`sum(a.monto_desglose)` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vtop10_proveedores
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vtop10_proveedores` (
	`id_proveedor` BIGINT(20) UNSIGNED NOT NULL,
	`sum(a.monto_desglose)` DECIMAL(37,2) NULL
) ENGINE=MyISAM;


-- Volcando estructura para vista rusiainf_inai.vact_campana_aviso
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_campana_aviso`;
CREATE VIEW `vact_campana_aviso` AS select `tab_campana_aviso`.`id_campana_aviso` AS `id_campana_aviso`,`tab_campana_aviso`.`id_campana_cobertura` AS `id_campana_cobertura`,`tab_campana_aviso`.`id_campana_tipo` AS `id_campana_tipo`,`tab_campana_aviso`.`id_campana_subtipo` AS `id_campana_subtipo`,`tab_campana_aviso`.`id_campana_tema` AS `id_campana_tema`,`tab_campana_aviso`.`id_campana_objetivo` AS `id_campana_objetivo`,`tab_campana_aviso`.`id_ejercicio` AS `id_ejercicio`,`tab_campana_aviso`.`id_trimestre` AS `id_trimestre`,`tab_campana_aviso`.`id_so_contratante` AS `id_so_contratante`,`tab_campana_aviso`.`id_so_solicitante` AS `id_so_solicitante`,`tab_campana_aviso`.`id_tiempo_oficial` AS `id_tiempo_oficial`,`tab_campana_aviso`.`nombre_campana_aviso` AS `nombre_campana_aviso`,`tab_campana_aviso`.`objetivo_comunicacion` AS `objetivo_comunicacion`,`tab_campana_aviso`.`fecha_inicio` AS `fecha_inicio`,`tab_campana_aviso`.`fecha_termino` AS `fecha_termino`,`tab_campana_aviso`.`fecha_inicio_to` AS `fecha_inicio_to`,`tab_campana_aviso`.`fecha_termino_to` AS `fecha_termino_to`,`tab_campana_aviso`.`publicacion_segob` AS `publicacion_segob`,`tab_campana_aviso`.`campana_ambito_geo` AS `campana_ambito_geo`,`tab_campana_aviso`.`plan_acs` AS `plan_acs`,`tab_campana_aviso`.`fecha_dof` AS `fecha_dof`,`tab_campana_aviso`.`evaluacion` AS `evaluacion`,`tab_campana_aviso`.`active` AS `active` from `tab_campana_aviso` where (`tab_campana_aviso`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_contratos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_contratos`;
CREATE VIEW `vact_contratos` AS select `tab_contratos`.`id_contrato` AS `id_contrato`,`tab_contratos`.`id_procedimiento` AS `id_procedimiento`,`tab_contratos`.`id_proveedor` AS `id_proveedor`,`tab_contratos`.`id_ejercicio` AS `id_ejercicio`,`tab_contratos`.`id_trimestre` AS `id_trimestre`,`tab_contratos`.`id_so_contratante` AS `id_so_contratante`,`tab_contratos`.`id_so_solicitante` AS `id_so_solicitante`,`tab_contratos`.`numero_contrato` AS `numero_contrato`,`tab_contratos`.`objeto_contrato` AS `objeto_contrato`,`tab_contratos`.`descripcion_justificacion` AS `descripcion_justificacion`,`tab_contratos`.`fundamento_juridico` AS `fundamento_juridico`,`tab_contratos`.`fecha_celebracion` AS `fecha_celebracion`,`tab_contratos`.`fecha_inicio` AS `fecha_inicio`,`tab_contratos`.`fecha_fin` AS `fecha_fin`,`tab_contratos`.`monto_contrato` AS `monto_contrato`,`tab_contratos`.`file_contrato` AS `file_contrato`,`tab_contratos`.`active` AS `active` from `tab_contratos` where (`tab_contratos`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_convenios_modificatorios
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_convenios_modificatorios`;
CREATE VIEW `vact_convenios_modificatorios` AS select `tab_convenios_modificatorios`.`id_convenio_modificatorio` AS `id_convenio_modificatorio`,`tab_convenios_modificatorios`.`id_contrato` AS `id_contrato`,`tab_convenios_modificatorios`.`id_ejercicio` AS `id_ejercicio`,`tab_convenios_modificatorios`.`id_trimestre` AS `id_trimestre`,`tab_convenios_modificatorios`.`numero_convenio` AS `numero_convenio`,`tab_convenios_modificatorios`.`objeto_convenio` AS `objeto_convenio`,`tab_convenios_modificatorios`.`fundamento_juridico` AS `fundamento_juridico`,`tab_convenios_modificatorios`.`fecha_celebracion` AS `fecha_celebracion`,`tab_convenios_modificatorios`.`monto_convenio` AS `monto_convenio`,`tab_convenios_modificatorios`.`file_convenio` AS `file_convenio`,`tab_convenios_modificatorios`.`active` AS `active` from `tab_convenios_modificatorios` where (`tab_convenios_modificatorios`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_ejercicios
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_ejercicios`;
CREATE VIEW `vact_ejercicios` AS select `cat_ejercicios`.`id_ejercicio` AS `id_ejercicio`,`cat_ejercicios`.`ejercicio` AS `ejercicio`,`cat_ejercicios`.`active` AS `active` from `cat_ejercicios` where (`cat_ejercicios`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_facturas
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_facturas`;
CREATE VIEW `vact_facturas` AS select `tab_facturas`.`id_factura` AS `id_factura`,`tab_facturas`.`id_proveedor` AS `id_proveedor`,`tab_facturas`.`id_contrato` AS `id_contrato`,`tab_facturas`.`id_orden_compra` AS `id_orden_compra`,`tab_facturas`.`id_ejercicio` AS `id_ejercicio`,`tab_facturas`.`id_trimestre` AS `id_trimestre`,`tab_facturas`.`id_so_contratante` AS `id_so_contratante`,`tab_facturas`.`id_presupuesto_concepto` AS `id_presupuesto_concepto`,`tab_facturas`.`numero_factura` AS `numero_factura`,`tab_facturas`.`fecha_erogacion` AS `fecha_erogacion`,`tab_facturas`.`file_factura_pdf` AS `file_factura_pdf`,`tab_facturas`.`file_factura_xml` AS `file_factura_xml`,`tab_facturas`.`active` AS `active` from `tab_facturas` where (`tab_facturas`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_facturas_desglose
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_facturas_desglose`;
CREATE VIEW `vact_facturas_desglose` AS select `tab_facturas_desglose`.`id_factura_desglose` AS `id_factura_desglose`,`tab_facturas_desglose`.`id_factura` AS `id_factura`,`tab_facturas_desglose`.`id_campana_aviso` AS `id_campana_aviso`,`tab_facturas_desglose`.`id_servicio_clasificacion` AS `id_servicio_clasificacion`,`tab_facturas_desglose`.`id_servicio_categoria` AS `id_servicio_categoria`,`tab_facturas_desglose`.`id_servicio_subcategoria` AS `id_servicio_subcategoria`,`tab_facturas_desglose`.`id_servicio_unidad` AS `id_servicio_unidad`,`tab_facturas_desglose`.`id_so_solicitante` AS `id_so_solicitante`,`tab_facturas_desglose`.`numero_partida` AS `numero_partida`,`tab_facturas_desglose`.`descripcion_servicios` AS `descripcion_servicios`,`tab_facturas_desglose`.`cantidad` AS `cantidad`,`tab_facturas_desglose`.`precio_unitarios` AS `precio_unitarios`,`tab_facturas_desglose`.`monto_desglose` AS `monto_desglose`,`tab_facturas_desglose`.`area_administrativa` AS `area_administrativa`,`tab_facturas_desglose`.`fecha_validacion` AS `fecha_validacion`,`tab_facturas_desglose`.`area_responsable` AS `area_responsable`,`tab_facturas_desglose`.`periodo` AS `periodo`,`tab_facturas_desglose`.`fecha_actualizacion` AS `fecha_actualizacion`,`tab_facturas_desglose`.`nota` AS `nota`,`tab_facturas_desglose`.`active` AS `active` from `tab_facturas_desglose` where (`tab_facturas_desglose`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_ordenes_compra
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_ordenes_compra`;
CREATE VIEW `vact_ordenes_compra` AS select `tab_ordenes_compra`.`id_orden_compra` AS `id_orden_compra`,`tab_ordenes_compra`.`id_procedimiento` AS `id_procedimiento`,`tab_ordenes_compra`.`id_proveedor` AS `id_proveedor`,`tab_ordenes_compra`.`id_contrato` AS `id_contrato`,`tab_ordenes_compra`.`id_ejercicio` AS `id_ejercicio`,`tab_ordenes_compra`.`id_trimestre` AS `id_trimestre`,`tab_ordenes_compra`.`id_so_contratante` AS `id_so_contratante`,`tab_ordenes_compra`.`id_so_solicitante` AS `id_so_solicitante`,`tab_ordenes_compra`.`id_campana_aviso` AS `id_campana_aviso`,`tab_ordenes_compra`.`numero_orden_compra` AS `numero_orden_compra`,`tab_ordenes_compra`.`descripcion_justificacion` AS `descripcion_justificacion`,`tab_ordenes_compra`.`fecha_orden` AS `fecha_orden`,`tab_ordenes_compra`.`file_orden` AS `file_orden`,`tab_ordenes_compra`.`active` AS `active` from `tab_ordenes_compra` where (`tab_ordenes_compra`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_ordenes_compra_montos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_ordenes_compra_montos`;
CREATE VIEW `vact_ordenes_compra_montos` AS select `a`.`id_orden_compra` AS `id_orden_compra`,`a`.`id_procedimiento` AS `id_procedimiento`,`a`.`id_proveedor` AS `id_proveedor`,`a`.`id_contrato` AS `id_contrato`,`a`.`id_ejercicio` AS `id_ejercicio`,`a`.`id_trimestre` AS `id_trimestre`,`a`.`id_so_contratante` AS `id_so_contratante`,`a`.`id_so_solicitante` AS `id_so_solicitante`,`a`.`id_campana_aviso` AS `id_campana_aviso`,`a`.`numero_orden_compra` AS `numero_orden_compra`,`a`.`descripcion_justificacion` AS `descripcion_justificacion`,`a`.`fecha_orden` AS `fecha_orden`,`a`.`file_orden` AS `file_orden`,`a`.`active` AS `active`,(select ifnull(sum(`b`.`monto`),0) from `voc_monto_factura_sf` `b` where (`a`.`id_orden_compra` = `b`.`id_orden_compra`)) AS `monto` from `vact_ordenes_compra` `a`;


-- Volcando estructura para vista rusiainf_inai.vact_presupuestos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_presupuestos`;
CREATE VIEW `vact_presupuestos` AS select `tab_presupuestos`.`id_presupuesto` AS `id_presupuesto`,`tab_presupuestos`.`id_ejercicio` AS `id_ejercicio`,`tab_presupuestos`.`id_sujeto_obligado` AS `id_sujeto_obligado`,`tab_presupuestos`.`file_programa_anual` AS `file_programa_anual`,`tab_presupuestos`.`active` AS `active` from `tab_presupuestos` where (`tab_presupuestos`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_presupuestos_desglose
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_presupuestos_desglose`;
CREATE VIEW `vact_presupuestos_desglose` AS select `tab_presupuestos_desglose`.`id_presupuesto_desglose` AS `id_presupuesto_desglose`,`tab_presupuestos_desglose`.`id_presupuesto` AS `id_presupuesto`,`tab_presupuestos_desglose`.`id_presupuesto_concepto` AS `id_presupuesto_concepto`,`tab_presupuestos_desglose`.`monto_presupuesto` AS `monto_presupuesto`,`tab_presupuestos_desglose`.`monto_modificacion` AS `monto_modificacion`,`tab_presupuestos_desglose`.`active` AS `active` from `tab_presupuestos_desglose` where (`tab_presupuestos_desglose`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_presupuesto_conceptos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_presupuesto_conceptos`;
CREATE VIEW `vact_presupuesto_conceptos` AS select `cat_presupuesto_conceptos`.`id_presupesto_concepto` AS `id_presupesto_concepto`,`cat_presupuesto_conceptos`.`capitulo` AS `capitulo`,`cat_presupuesto_conceptos`.`concepto` AS `concepto`,`cat_presupuesto_conceptos`.`partida` AS `partida`,`cat_presupuesto_conceptos`.`denominacion` AS `denominacion`,`cat_presupuesto_conceptos`.`descripcion` AS `descripcion`,`cat_presupuesto_conceptos`.`id_captura` AS `id_captura`,`cat_presupuesto_conceptos`.`active` AS `active` from `cat_presupuesto_conceptos` where ((`cat_presupuesto_conceptos`.`concepto` <> '') and (`cat_presupuesto_conceptos`.`partida` <> ''));


-- Volcando estructura para vista rusiainf_inai.vact_proveedores
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_proveedores`;
CREATE VIEW `vact_proveedores` AS select `tab_proveedores`.`id_proveedor` AS `id_proveedor`,`tab_proveedores`.`id_personalidad_juridica` AS `id_personalidad_juridica`,`tab_proveedores`.`nombre_razon_social` AS `nombre_razon_social`,`tab_proveedores`.`nombre_comercial` AS `nombre_comercial`,`tab_proveedores`.`rfc` AS `rfc`,`tab_proveedores`.`active` AS `active` from `tab_proveedores` where (`tab_proveedores`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_servicios
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_servicios`;
CREATE VIEW `vact_servicios` AS select `tab_servicios`.`id_servicio` AS `id_servicio`,`tab_servicios`.`id_servicio_clasificacion` AS `id_servicio_clasificacion`,`tab_servicios`.`id_servicio_categoria` AS `id_servicio_categoria`,`tab_servicios`.`id_servicio_subcategoria` AS `id_servicio_subcategoria`,`tab_servicios`.`id_servicio_unidad` AS `id_servicio_unidad`,`tab_servicios`.`nombre_servicio` AS `nombre_servicio`,`tab_servicios`.`active` AS `active` from `tab_servicios` where (`tab_servicios`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vact_sujetos_obligados
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vact_sujetos_obligados`;
CREATE VIEW `vact_sujetos_obligados` AS select `tab_sujetos_obligados`.`id_sujeto_obligado` AS `id_sujeto_obligado`,`tab_sujetos_obligados`.`id_so_atribucion` AS `id_so_atribucion`,`tab_sujetos_obligados`.`id_so_orden_gobierno` AS `id_so_orden_gobierno`,`tab_sujetos_obligados`.`id_so_estado` AS `id_so_estado`,`tab_sujetos_obligados`.`nombre_sujeto_obligado` AS `nombre_sujeto_obligado`,`tab_sujetos_obligados`.`siglas_sujeto_obligado` AS `siglas_sujeto_obligado`,`tab_sujetos_obligados`.`url_sujeto_obligado` AS `url_sujeto_obligado`,`tab_sujetos_obligados`.`active` AS `active` from `tab_sujetos_obligados` where (`tab_sujetos_obligados`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vcampanasyavisos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcampanasyavisos`;
CREATE VIEW `vcampanasyavisos` AS
select 
`g`.`id_campana_tipo` AS `id_campana_tipo`,
`g`.`id_campana_aviso` AS `id_campana_aviso`,
`c`.`ejercicio` AS `ejercicio`,
`d`.`trimestre` AS `trimestre`,
`h`.`nombre_campana_tipo` AS `nombre_campana_tipo`,
`g`.`nombre_campana_aviso` AS `nombre_campana_aviso`,
`e`.`nombre_sujeto_obligado` AS `contratante`,
`f`.`nombre_sujeto_obligado` AS `solicitante`,
`i`.`nombre_tipo_tiempo` AS `nombre_tipo_tiempo`,
(
select IFNULL(sum(`b`.`monto_desglose`),0) from 
`vact_facturas` `a`, `vact_facturas_desglose` `b` where
`a`.`id_factura` = `b`.`id_factura` and 
`b`.`id_campana_aviso` = `g`.`id_campana_aviso`
) AS `monto_total` 
from (((((((
`vact_ejercicios` `c`) join 
`cat_trimestres` `d`) join 
`vact_sujetos_obligados` `e`) join 
`vact_sujetos_obligados` `f`) join 
`vact_campana_aviso` `g`) join `cat_campana_tipos` `h`) join `cat_tiempo_tipos` `i`) 
where ((`g`.`id_campana_tipo` = `h`.`id_campana_tipo`) and (`g`.`id_tiempo_oficial` = `i`.`id_tiempo_tipo`)) 
and
`g`.`id_ejercicio` = `c`.`id_ejercicio` and 
`g`.`id_trimestre` = `d`.`id_trimestre` and 
`g`.`id_so_contratante` = `e`.`id_sujeto_obligado` and 
`g`.`id_so_solicitante` = `f`.`id_sujeto_obligado` and
`g`.`id_campana_aviso` = `g`.`id_campana_aviso`
group by `c`.`ejercicio`,`d`.`trimestre`,`g`.`id_campana_tipo`,`g`.`nombre_campana_aviso`,`e`.`nombre_sujeto_obligado`,`f`.`nombre_sujeto_obligado`,`g`.`id_tiempo_oficial`;


-- Volcando estructura para vista rusiainf_inai.vcapitulo_denominacion
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcapitulo_denominacion`;
CREATE VIEW `vcapitulo_denominacion` AS select `a`.`id_presupesto_concepto` AS `id_presupesto_concepto`,`a`.`capitulo` AS `capitulo`,`a`.`concepto` AS `concepto`,`a`.`partida` AS `partida`,`a`.`denominacion` AS `denominacion`,`a`.`descripcion` AS `descripcion`,`a`.`id_captura` AS `id_captura`,`a`.`active` AS `active`,concat_ws(' - ',`a`.`capitulo`,`a`.`concepto`,`a`.`partida`,`a`.`denominacion`) AS `capitulo_denominacion` from `vact_presupuesto_conceptos` `a` where (`a`.`active` = 1) order by `a`.`id_presupesto_concepto`;


-- Volcando estructura para vista rusiainf_inai.vcap_conceptos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcap_conceptos`;
CREATE VIEW `vcap_conceptos` AS select `vcat_conceptos`.`id_presupesto_concepto` AS `id_presupesto_concepto`,`vcat_conceptos`.`capitulo` AS `capitulo`,`vcat_conceptos`.`concepto` AS `concepto`,`vcat_conceptos`.`partida` AS `partida`,`vcat_conceptos`.`denominacion` AS `denominacion`,`vcat_conceptos`.`descripcion` AS `descripcion`,`vcat_conceptos`.`id_captura` AS `id_captura`,`vcat_conceptos`.`active` AS `active` from `vcat_conceptos` where ((trim(`vcat_conceptos`.`partida`) <> '') and (`vcat_conceptos`.`partida` is not null));


-- Volcando estructura para vista rusiainf_inai.vcat_categorias
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcat_categorias`;
CREATE VIEW `vcat_categorias` AS select `cat_servicios_categorias`.`id_servicio_categoria` AS `id_categoria`,`cat_servicios_categorias`.`id_servicio_clasificacion` AS `id_clasificacion`,`cat_servicios_categorias`.`nombre_servicio_categoria` AS `nombre_categoria` from `cat_servicios_categorias` where (`cat_servicios_categorias`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vcat_conceptos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcat_conceptos`;
CREATE VIEW `vcat_conceptos` AS select `cat_presupuesto_conceptos`.`id_presupesto_concepto` AS `id_presupesto_concepto`,`cat_presupuesto_conceptos`.`capitulo` AS `capitulo`,`cat_presupuesto_conceptos`.`concepto` AS `concepto`,`cat_presupuesto_conceptos`.`partida` AS `partida`,`cat_presupuesto_conceptos`.`denominacion` AS `denominacion`,`cat_presupuesto_conceptos`.`descripcion` AS `descripcion`,`cat_presupuesto_conceptos`.`id_captura` AS `id_captura`,`cat_presupuesto_conceptos`.`active` AS `active` from `cat_presupuesto_conceptos` where (`cat_presupuesto_conceptos`.`active` = 1);


-- Volcando estructura para vista rusiainf_inai.vcontratos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcontratos`;
CREATE VIEW `vcontratos` AS select `tab_contratos`.`id_contrato` AS `id_contrato`,`tab_contratos`.`id_procedimiento` AS `id_procedimiento`,`tab_contratos`.`id_proveedor` AS `id_proveedor`,`tab_contratos`.`id_ejercicio` AS `id_ejercicio`,`tab_contratos`.`id_trimestre` AS `id_trimestre`,`tab_contratos`.`id_so_contratante` AS `id_so_contratante`,`tab_contratos`.`id_so_solicitante` AS `id_so_solicitante`,`tab_contratos`.`numero_contrato` AS `numero_contrato`,`tab_contratos`.`objeto_contrato` AS `objeto_contrato`,`tab_contratos`.`descripcion_justificacion` AS `descripcion_justificacion`,`tab_contratos`.`fundamento_juridico` AS `fundamento_juridico`,`tab_contratos`.`fecha_celebracion` AS `fecha_celebracion`,`tab_contratos`.`fecha_inicio` AS `fecha_inicio`,`tab_contratos`.`fecha_fin` AS `fecha_fin`,`tab_contratos`.`monto_contrato` AS `monto_contrato`,`tab_contratos`.`file_contrato` AS `file_contrato`,`tab_contratos`.`active` AS `active` from `tab_contratos` where (`tab_contratos`.`id_contrato` > 1);


-- Volcando estructura para vista rusiainf_inai.vcontratosyordenes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcontratosyordenes`;
CREATE VIEW `vcontratosyordenes` AS select `e`.`id_contrato` AS `id_contrato`,`f`.`id_orden_compra` AS `id_orden_compra`,`c`.`ejercicio` AS `ejercicio`,`d`.`trimestre` AS `trimestre`,`e`.`numero_contrato` AS `numero_contrato`,`f`.`numero_orden_compra` AS `numero_orden_compra`,`g`.`nombre_sujeto_obligado` AS `contratante`,`h`.`nombre_sujeto_obligado` AS `solicitante`,`i`.`nombre_razon_social` AS `proveedor`,(select `c`.`monto_contrato` from `tab_contratos` `c` where (`a`.`id_contrato` = `c`.`id_contrato`)) AS `monto_contrato`,sum(`b`.`monto_desglose`) AS `monto_ejercido` from ((((((((`vact_facturas` `a` join `vact_facturas_desglose` `b`) join `vact_ejercicios` `c`) join `cat_trimestres` `d`) join `vact_contratos` `e`) join `vact_ordenes_compra` `f`) join `vact_sujetos_obligados` `g`) join `vact_sujetos_obligados` `h`) join `vact_proveedores` `i`) where ((`a`.`id_factura` = `b`.`id_factura`) and (`a`.`id_ejercicio` = `c`.`id_ejercicio`) and (`a`.`id_trimestre` = `d`.`id_trimestre`) and (`a`.`id_contrato` = `e`.`id_contrato`) and (`a`.`id_orden_compra` = `f`.`id_orden_compra`) and (`e`.`id_so_contratante` = `g`.`id_sujeto_obligado`) and (`e`.`id_so_solicitante` = `h`.`id_sujeto_obligado`) and (`a`.`id_proveedor` = `i`.`id_proveedor`)) group by `c`.`ejercicio`,`d`.`trimestre`,`e`.`numero_contrato`,`f`.`numero_orden_compra`,`a`.`id_so_contratante`,`b`.`id_so_solicitante`,`a`.`id_proveedor`;


-- Volcando estructura para vista rusiainf_inai.vcont_x_anio_x_prov
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vcont_x_anio_x_prov`;
CREATE VIEW `vcont_x_anio_x_prov` AS select `tab_contratos`.`id_proveedor` AS `id_proveedor`,`tab_proveedores`.`nombre_razon_social` AS `nombre_razon_social`,count(`tab_contratos`.`id_contrato`) AS `count_contratos`,year(`tab_contratos`.`fecha_celebracion`) AS `cont_anio`,sum(`tab_contratos`.`monto_contrato`) AS `sum_contratos` from (`tab_contratos` join `tab_proveedores` on((`tab_proveedores`.`id_proveedor` = `tab_contratos`.`id_proveedor`))) group by `tab_contratos`.`id_proveedor`,year(`tab_contratos`.`fecha_celebracion`);


-- Volcando estructura para vista rusiainf_inai.vfacturas
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vfacturas`;
CREATE VIEW `vfacturas` AS select `vact_facturas`.`id_factura` AS `id_factura`,(select `c`.`ejercicio` from `cat_ejercicios` `c` where (`vact_facturas`.`id_ejercicio` = `c`.`id_ejercicio`)) AS `ejercicio`,(select `d`.`trimestre` from `cat_trimestres` `d` where (`vact_facturas`.`id_trimestre` = `d`.`id_trimestre`)) AS `trimestre`,(select `d`.`nombre_razon_social` from `tab_proveedores` `d` where (`vact_facturas`.`id_proveedor` = `d`.`id_proveedor`)) AS `proveedor`,`vact_facturas`.`numero_factura` AS `numero_factura`,`vact_facturas`.`fecha_erogacion` AS `fecha_erogacion`,sum(`vact_facturas_desglose`.`monto_desglose`) AS `monto_ejercido` from (`vact_facturas` left join `vact_facturas_desglose` on((`vact_facturas`.`id_factura` = `vact_facturas_desglose`.`id_factura`))) group by `vact_facturas`.`id_ejercicio`,`vact_facturas`.`id_trimestre`,`vact_facturas`.`numero_factura`,`vact_facturas`.`fecha_erogacion`;


-- Volcando estructura para vista rusiainf_inai.vgasto_clasf_servicio
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vgasto_clasf_servicio`;
CREATE VIEW `vgasto_clasf_servicio` AS select `b`.`id_servicio_clasificacion` AS `id_servicio_clasificacion`,`a`.`id_contrato` AS `id_contrato`,`a`.`id_orden_compra` AS `id_orden_compra`,`a`.`id_proveedor` AS `id_proveedor`,`b`.`id_campana_aviso` AS `id_campana_aviso`,`a`.`id_factura` AS `id_factura`,(select `c`.`ejercicio` from `cat_ejercicios` `c` where (`a`.`id_ejercicio` = `c`.`id_ejercicio`)) AS `ejercicio`,`a`.`numero_factura` AS `factura`,`a`.`fecha_erogacion` AS `fecha_erogacion`,(select `d`.`nombre_razon_social` from `tab_proveedores` `d` where (`a`.`id_proveedor` = `d`.`id_proveedor`)) AS `proveedor`,(select `e`.`nombre_servicio_clasificacion` from `cat_servicios_clasificacion` `e` where (`b`.`id_servicio_clasificacion` = `e`.`id_servicio_clasificacion`)) AS `nombre_servicio_clasificacion`,(select `f`.`nombre_servicio_categoria` from `cat_servicios_categorias` `f` where (`b`.`id_servicio_categoria` = `f`.`id_servicio_categoria`)) AS `nombre_servicio_categoria`,(select `g`.`nombre_servicio_subcategoria` from `cat_servicios_subcategorias` `g` where (`b`.`id_servicio_subcategoria` = `g`.`id_servicio_subcategoria`)) AS `nombre_servicio_subcategoria`,(select `j`.`nombre_campana_tipo` from (`tab_campana_aviso` `i` join `cat_campana_tipos` `j`) where ((`b`.`id_campana_aviso` = `i`.`id_campana_aviso`) and (`i`.`id_campana_tipo` = `j`.`id_campana_tipo`))) AS `tipo`,(select `h`.`nombre_campana_aviso` from `tab_campana_aviso` `h` where (`b`.`id_campana_aviso` = `h`.`id_campana_aviso`)) AS `nombre_campana_aviso`,sum(`b`.`monto_desglose`) AS `monto_servicio` from (`vact_facturas` `a` join `vact_facturas_desglose` `b`) where (`a`.`id_factura` = `b`.`id_factura`) group by `a`.`id_factura`,`a`.`id_ejercicio`,`a`.`numero_factura`,`a`.`fecha_erogacion`,`a`.`id_proveedor`,`b`.`id_servicio_clasificacion`,`b`.`id_servicio_categoria`,`b`.`id_servicio_subcategoria`,`b`.`id_campana_aviso`,`b`.`id_campana_aviso`;


-- Volcando estructura para vista rusiainf_inai.vgrafica1
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vgrafica1`;
CREATE VIEW `vgrafica1` AS select `a`.`ejercicio` AS `ejercicio`,`a`.`servicio` AS `servicio`,`a`.`campana` AS `campana`,`a`.`partida` AS `partida`,`a`.`ejercido` AS `ejercido`,`a`.`tipo` AS `tipo`,`a`.`fecha` AS `fecha`,`a`.`proveedor` AS `proveedor`,`a`.`campana_aviso` AS `campana_aviso`,(select (sum(`c`.`monto_presupuesto`) / (select count(0) from `vpregrafica1` `b`)) from `vact_presupuestos_desglose` `c`) AS `presupuesto`,((select (sum(`c`.`monto_presupuesto`) / (select count(0) from `vpregrafica1` `b`)) from `vact_presupuestos_desglose` `c`) + (select (sum(`c`.`monto_modificacion`) / (select count(0) from `vpregrafica1` `b`)) from `vact_presupuestos_desglose` `c`)) AS `modificacion`,(select (count(0) / (select count(0) from `vpregrafica1`)) from `vtab_proveedores` `z` where (`z`.`ejercicio` = `a`.`ejercicio`)) AS `proveedores`,(select (count(0) / (select count(0) from `vpregrafica1`)) from `tab_campana_aviso`) AS `totalcampanas` from `vpregrafica1` `a`;


-- Volcando estructura para vista rusiainf_inai.vlimite
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vlimite`;
CREATE VIEW `vlimite` AS select `vpor_proveedor`.`categoria` AS `categoria`,`vpor_proveedor`.`tipo` AS `tipo`,`vpor_proveedor`.`proveedor` AS `proveedor`,`vpor_proveedor`.`total` AS `total`,`vpor_proveedor`.`numero` AS `numero`,`vpor_proveedor`.`ejercicio` AS `ejercicio` from `vpor_proveedor` order by `vpor_proveedor`.`total` desc limit 30;


-- Volcando estructura para vista rusiainf_inai.vlimite_act
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vlimite_act`;
CREATE VIEW `vlimite_act` AS select `vlimite`.`total` AS `limite` from `vlimite` order by `vlimite`.`total` limit 1;


-- Volcando estructura para vista rusiainf_inai.vlinks_proveedor
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vlinks_proveedor`;
CREATE VIEW `vlinks_proveedor` AS select `vpor_proveedor`.`tipo` AS `tipo`,`vpor_proveedor`.`proveedor` AS `proveedor`,sum(`vpor_proveedor`.`total`) AS `total`,count(0) AS `numero`,`vpor_proveedor`.`ejercicio` AS `ejercicio` from `vpor_proveedor` group by `vpor_proveedor`.`tipo`,`vpor_proveedor`.`proveedor`,`vpor_proveedor`.`ejercicio` order by `vpor_proveedor`.`tipo`,`vpor_proveedor`.`proveedor`,`vpor_proveedor`.`ejercicio`;


-- Volcando estructura para vista rusiainf_inai.vlinks_tipo
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vlinks_tipo`;
CREATE VIEW `vlinks_tipo` AS select `vpor_proveedor`.`categoria` AS `categoria`,`vpor_proveedor`.`tipo` AS `tipo`,sum(`vpor_proveedor`.`total`) AS `total`,count(0) AS `numero`,`vpor_proveedor`.`ejercicio` AS `ejercicio` from `vpor_proveedor` group by `vpor_proveedor`.`categoria`,`vpor_proveedor`.`tipo`,`vpor_proveedor`.`ejercicio` order by `vpor_proveedor`.`categoria`,`vpor_proveedor`.`tipo`,`vpor_proveedor`.`ejercicio`;


-- Volcando estructura para vista rusiainf_inai.vlista_contratos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vlista_contratos`;
CREATE VIEW `vlista_contratos` AS select `a`.`id_contrato` AS `id_contrato`,(select `b`.`ejercicio` from `cat_ejercicios` `b` where (`a`.`id_ejercicio` = `b`.`id_ejercicio`)) AS `ejercicio`,(select `c`.`trimestre` from `cat_trimestres` `c` where (`a`.`id_trimestre` = `c`.`id_trimestre`)) AS `trimestre`,`a`.`numero_contrato` AS `numero_contrato`,(select `d`.`nombre_sujeto_obligado` from `vact_sujetos_obligados` `d` where (`a`.`id_so_solicitante` = `d`.`id_sujeto_obligado`)) AS `solicitante`,(select `e`.`nombre_sujeto_obligado` from `vact_sujetos_obligados` `e` where (`a`.`id_so_contratante` = `e`.`id_sujeto_obligado`)) AS `contratante`,(select `f`.`nombre_razon_social` from `vact_proveedores` `f` where (`a`.`id_proveedor` = `f`.`id_proveedor`)) AS `proveedor`,`a`.`monto_contrato` AS `monto_contrato`,(select ifnull(sum(`g`.`monto_desglose`),0) from (`vact_facturas_desglose` `g` join `vact_facturas` `h`) where ((`g`.`id_factura` = `h`.`id_factura`) and (`h`.`id_contrato` = `a`.`id_contrato`))) AS `monto_ejercido` from `vact_contratos` `a` where (`a`.`id_contrato` > 1);


-- Volcando estructura para vista rusiainf_inai.vlista_oc
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vlista_oc`;
CREATE VIEW `vlista_oc` AS select `a`.`id_orden_compra` AS `id_orden_compra`,(select `b`.`ejercicio` from `cat_ejercicios` `b` where (`a`.`id_ejercicio` = `b`.`id_ejercicio`)) AS `ejercicio`,(select `c`.`trimestre` from `cat_trimestres` `c` where (`a`.`id_trimestre` = `c`.`id_trimestre`)) AS `trimestre`,`a`.`numero_orden_compra` AS `numero_orden_compra`,(select `d`.`nombre_sujeto_obligado` from `vact_sujetos_obligados` `d` where (`a`.`id_so_solicitante` = `d`.`id_sujeto_obligado`)) AS `solicitante`,(select `e`.`nombre_sujeto_obligado` from `vact_sujetos_obligados` `e` where (`a`.`id_so_contratante` = `e`.`id_sujeto_obligado`)) AS `contratante`,(select `f`.`nombre_razon_social` from `vact_proveedores` `f` where (`a`.`id_proveedor` = `f`.`id_proveedor`)) AS `proveedor`,(select ifnull(sum(`g`.`monto_desglose`),0) from (`vact_facturas_desglose` `g` join `vact_facturas` `h`) where ((`g`.`id_factura` = `h`.`id_factura`) and (`h`.`id_orden_compra` = `a`.`id_orden_compra`))) AS `monto_ejercido` from `vact_ordenes_compra` `a` where ((`a`.`id_orden_compra` > 1) and (`a`.`id_contrato` = 1));


-- Volcando estructura para vista rusiainf_inai.vlista_por_proveedor
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vlista_por_proveedor`;
CREATE VIEW `vlista_por_proveedor` AS select distinct `vpor_proveedor`.`ejercicio` AS `ejercicio`,`vpor_proveedor`.`tipo` AS `lista` from `vpor_proveedor` union select distinct `vpor_proveedor`.`ejercicio` AS `ejercicio`,`vpor_proveedor`.`categoria` AS `lista` from `vpor_proveedor` union select distinct `vpor_proveedor`.`ejercicio` AS `ejercicio`,`vpor_proveedor`.`proveedor` AS `lista` from `vpor_proveedor` order by `lista`;


-- Volcando estructura para vista rusiainf_inai.vmeses_porservicio
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vmeses_porservicio`;
CREATE VIEW `vmeses_porservicio` AS select `a`.`ejercicio` AS `ejercicio`,`b`.`id_mes` AS `id_mes`,`b`.`mes_corto` AS `mes_corto`,`c`.`titulo_grafica` AS `nombre_servicio_categoria`,ifnull((select sum(`d`.`monto_desglose`) from (`vact_facturas_desglose` `d` join `vact_facturas` `e`) where ((`d`.`id_factura` = `e`.`id_factura`) and (`d`.`id_servicio_categoria` = `c`.`id_servicio_categoria`) and (`e`.`id_ejercicio` = `a`.`id_ejercicio`) and (month(`e`.`fecha_erogacion`) = `b`.`id_mes`))),0) AS `monto` from ((`vact_ejercicios` `a` join `cat_meses` `b`) join `cat_servicios_categorias` `c`) order by `a`.`id_ejercicio`,`b`.`id_mes`;


-- Volcando estructura para vista rusiainf_inai.vmonto_campana
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vmonto_campana`;
CREATE VIEW `vmonto_campana` AS select `b`.`id_campana_aviso` AS `id_campana_aviso`,sum(`b`.`monto_desglose`) AS `monto` from (`tab_facturas` `a` join `tab_facturas_desglose` `b`) where (`a`.`id_factura` = `b`.`id_factura`) group by `b`.`id_campana_aviso`;


-- Volcando estructura para vista rusiainf_inai.vmonto_oc
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vmonto_oc`;
CREATE VIEW `vmonto_oc` AS select `a`.`id_orden_compra` AS `id_orden_compra`,sum(`b`.`monto_desglose`) AS `monto` from (`tab_facturas` `a` join `tab_facturas_desglose` `b`) where ((`a`.`id_orden_compra` > 1) and (`a`.`id_factura` = `b`.`id_factura`)) group by `a`.`id_orden_compra`;


-- Volcando estructura para vista rusiainf_inai.voc_monto_factura
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `voc_monto_factura`;
CREATE VIEW `voc_monto_factura` AS select `a`.`id_orden_compra` AS `id_orden_compra`,concat('$ ',format(sum(`b`.`monto_desglose`),2)) AS `monto` from (`tab_facturas` `a` join `tab_facturas_desglose` `b`) where (`a`.`id_factura` = `b`.`id_factura`) group by `a`.`id_orden_compra`;


-- Volcando estructura para vista rusiainf_inai.voc_monto_factura_sf
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `voc_monto_factura_sf`;
CREATE VIEW `voc_monto_factura_sf` AS select `a`.`id_orden_compra` AS `id_orden_compra`,sum(`b`.`monto_desglose`) AS `monto` from (`tab_facturas` `a` join `tab_facturas_desglose` `b`) where (`a`.`id_factura` = `b`.`id_factura`) group by `a`.`id_orden_compra`;


-- Volcando estructura para vista rusiainf_inai.vordenes_compra
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vordenes_compra`;
CREATE VIEW `vordenes_compra` AS select `tab_ordenes_compra`.`id_orden_compra` AS `id_orden_compra`,`tab_ordenes_compra`.`id_procedimiento` AS `id_procedimiento`,`tab_ordenes_compra`.`id_proveedor` AS `id_proveedor`,`tab_ordenes_compra`.`id_contrato` AS `id_contrato`,`tab_ordenes_compra`.`id_ejercicio` AS `id_ejercicio`,`tab_ordenes_compra`.`id_trimestre` AS `id_trimestre`,`tab_ordenes_compra`.`id_so_contratante` AS `id_so_contratante`,`tab_ordenes_compra`.`id_so_solicitante` AS `id_so_solicitante`,`tab_ordenes_compra`.`id_campana_aviso` AS `id_campana_aviso`,`tab_ordenes_compra`.`numero_orden_compra` AS `numero_orden_compra`,`tab_ordenes_compra`.`descripcion_justificacion` AS `descripcion_justificacion`,`tab_ordenes_compra`.`fecha_orden` AS `fecha_orden`,`tab_ordenes_compra`.`file_orden` AS `file_orden`,`tab_ordenes_compra`.`active` AS `active` from `tab_ordenes_compra` where (`tab_ordenes_compra`.`id_orden_compra` > 1);


-- Volcando estructura para vista rusiainf_inai.vout_campana_aviso
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_campana_aviso`;
CREATE VIEW `vout_campana_aviso` AS select `a`.`id_campana_aviso` AS `ID de campana o aviso institucional`,(select `l`.`nombre_campana_tipo` from `cat_campana_tipos` `l` where (`a`.`id_campana_tipo` = `l`.`id_campana_tipo`)) AS `Campana o aviso institucional`,(select `l`.`nombre_campana_subtipo` from `cat_campana_subtipos` `l` where (`a`.`id_campana_subtipo` = `l`.`id_campana_subtipo`)) AS `Subtipo`,`a`.`nombre_campana_aviso` AS `Nombre`,(select `e`.`ejercicio` from `cat_ejercicios` `e` where (`a`.`id_ejercicio` = `e`.`id_ejercicio`)) AS `Ejercicio`,(select `f`.`trimestre` from `cat_trimestres` `f` where (`a`.`id_trimestre` = `f`.`id_trimestre`)) AS `Trimestre`,(select `g`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `g` where (`g`.`id_sujeto_obligado` = `a`.`id_so_contratante`)) AS `Sujeto obligado contratant`,(select `i`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `i` where (`i`.`id_sujeto_obligado` = `a`.`id_so_solicitante`)) AS `Sujeto obligado solicitante`,(select `l`.`nombre_campana_tema` from `cat_campana_temas` `l` where (`a`.`id_campana_tema` = `l`.`id_campana_tema`)) AS `Tema`,(select `l`.`campana_objetivo` from `cat_campana_objetivos` `l` where (`a`.`id_campana_objetivo` = `l`.`id_campana_objetivo`)) AS `Objetivo institucional`,`a`.`objetivo_comunicacion` AS `Objetivo de comunicación`,(select `l`.`nombre_campana_cobertura` from `cat_campana_coberturas` `l` where (`a`.`id_campana_cobertura` = `l`.`id_campana_cobertura`)) AS `Cobertura`,`a`.`campana_ambito_geo` AS `Ámbito geográfico`,`a`.`fecha_inicio` AS `Fecha inicio`,`a`.`fecha_termino` AS `Fecha término`,(select `l`.`logico` from `sys_logico` `l` where (`a`.`id_tiempo_oficial` = `l`.`id_logico`)) AS `Tiempo oficial`,`a`.`fecha_inicio_to` AS `Fecha inicio tiempo oficial`,`a`.`fecha_termino_to` AS `Fecha término tiempo oficial`,`a`.`publicacion_segob` AS `Publicación SEGOB.`,`a`.`plan_acs` AS `Documento del PACS`,`a`.`fecha_dof` AS `Fecha publicación`,`a`.`evaluacion` AS `Evaluación`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_campana_aviso` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_campana_grupo_edad
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_campana_grupo_edad`;
CREATE VIEW `vout_campana_grupo_edad` AS select `a`.`id_rel_campana_grupo_edad` AS `ID de grupo de edad`,`a`.`id_campana_aviso` AS `ID de campaña o aviso institucional`,(select `b`.`nombre_poblacion_grupo_edad` from `cat_poblacion_grupo_edad` `b` where (`b`.`id_poblacion_grupo_edad` = `a`.`id_poblacion_grupo_edad`)) AS `Grupo de edad` from `rel_campana_grupo_edad` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_campana_lugar
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_campana_lugar`;
CREATE VIEW `vout_campana_lugar` AS select `a`.`id_campana_lugar` AS `ID de lugar`,`a`.`id_campana_aviso` AS `ID de campana o aviso institucional`,`a`.`poblacion_lugar` AS `Lugar` from `rel_campana_lugar` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_campana_maudio
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_campana_maudio`;
CREATE VIEW `vout_campana_maudio` AS select `a`.`id_campana_maudio` AS `ID de audios`,`a`.`id_campana_aviso` AS `ID de campana o aviso institucional`,`a`.`nombre_campana_maudio` AS `Nombre Audio`,`a`.`file_audio` AS `Audios (Vínculo al archivo)`,`a`.`url_audio` AS `Audios (Vínculo al repositorio)` from `rel_campana_maudio` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_campana_mimagenes
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_campana_mimagenes`;
CREATE VIEW `vout_campana_mimagenes` AS select `a`.`id_campana_mimagen` AS `ID de imagenes`,`a`.`id_campana_aviso` AS `ID de campana o aviso institucional`,`a`.`nombre_campana_mimagen` AS `Nombre Imagen`,`a`.`file_imagen` AS `Imagenes (Vínculo al archivo)`,`a`.`url_imagen` AS `Imagenes (Vínculo al repositorio)` from `rel_campana_mimagenes` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_campana_mvideo
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_campana_mvideo`;
CREATE VIEW `vout_campana_mvideo` AS select `a`.`id_campana_mvideo` AS `ID de Videos`,`a`.`id_campana_aviso` AS `ID de campana o aviso institucional`,`a`.`nombre_campana_mvideo` AS `Nombre Video`,`a`.`file_video` AS `Videos(Vínculo al archivo)`,`a`.`url_video` AS `Videos(Vínculo al repositorio)` from `rel_campana_mvideo` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_campana_nivel
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_campana_nivel`;
CREATE VIEW `vout_campana_nivel` AS select `a`.`id_rel_campana_nivel` AS `ID de nivel socioeconómico`,`a`.`id_campana_aviso` AS `ID de campana o aviso institucional`,(select `b`.`nombre_poblacion_nivel` from `cat_poblacion_nivel` `b` where (`b`.`id_poblacion_nivel` = `a`.`id_poblacion_nivel`)) AS `Nivel socioeconómico` from `rel_campana_nivel` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_campana_nivel_educativo
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_campana_nivel_educativo`;
CREATE VIEW `vout_campana_nivel_educativo` AS select `a`.`id_rel_campana_nivel_educativo` AS `ID de educación`,`a`.`id_campana_aviso` AS `ID de campana o aviso institucional`,(select `b`.`nombre_poblacion_nivel_educativo` from `cat_poblacion_nivel_educativo` `b` where (`b`.`id_poblacion_nivel_educativo` = `a`.`id_poblacion_nivel_educativo`)) AS `Educación` from `rel_campana_nivel_educativo` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_campana_sexo
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_campana_sexo`;
CREATE VIEW `vout_campana_sexo` AS select `a`.`id_rel_campana_sexo` AS `ID de sexo`,`a`.`id_campana_aviso` AS `ID de campana o aviso institucional`,(select `b`.`nombre_poblacion_sexo` from `cat_poblacion_sexo` `b` where (`b`.`id_poblacion_sexo` = `a`.`id_poblacion_sexo`)) AS `Sexo` from `rel_campana_sexo` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_contratos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_contratos`;
CREATE VIEW `vout_contratos` AS select `a`.`numero_contrato` AS `ID (Número de contrato)`,(select `c`.`nombre_procedimiento` from `cat_procedimientos` `c` where (`a`.`id_procedimiento` = `c`.`id_procedimiento`)) AS `Procedimiento`,(select `b`.`nombre_razon_social` from `tab_proveedores` `b` where (`a`.`id_proveedor` = `b`.`id_proveedor`)) AS `Proveedor`,(select `e`.`ejercicio` from `cat_ejercicios` `e` where (`a`.`id_ejercicio` = `e`.`id_ejercicio`)) AS `Ejercicio`,(select `f`.`trimestre` from `cat_trimestres` `f` where (`a`.`id_trimestre` = `f`.`id_trimestre`)) AS `Trimestre`,(select `g`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `g` where (`g`.`id_sujeto_obligado` = `a`.`id_so_contratante`)) AS `Contratante`,(select `i`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `i` where (`i`.`id_sujeto_obligado` = `a`.`id_so_solicitante`)) AS `Solicitante`,`a`.`objeto_contrato` AS `Objeto del contrato`,`a`.`descripcion_justificacion` AS `Descripción`,`a`.`fundamento_juridico` AS `Fundamento jurídico`,`a`.`fecha_celebracion` AS `Fecha celebración`,`a`.`fecha_inicio` AS `Fecha inicio`,`a`.`fecha_fin` AS `Fecha fin`,`a`.`monto_contrato` AS `Monto original del contrato`,if(isnull((select sum(`z`.`monto_convenio`) from `tab_convenios_modificatorios` `z` where (`z`.`id_contrato` = `a`.`id_contrato`))),0,(select sum(`z`.`monto_convenio`) from `tab_convenios_modificatorios` `z` where (`z`.`id_contrato` = `a`.`id_contrato`))) AS `Monto modificado`,(`a`.`monto_contrato` + if(isnull((select sum(`z`.`monto_convenio`) from `tab_convenios_modificatorios` `z` where (`z`.`id_contrato` = `a`.`id_contrato`))),0,(select sum(`z`.`monto_convenio`) from `tab_convenios_modificatorios` `z` where (`z`.`id_contrato` = `a`.`id_contrato`)))) AS `Monto total`,(select sum(`y`.`monto_desglose`) from (`tab_facturas_desglose` `y` join `tab_facturas` `x`) where ((`x`.`id_factura` = `y`.`id_factura`) and (`x`.`id_contrato` = `a`.`id_contrato`))) AS `Monto pagado a la fecha`,`a`.`file_contrato` AS `Archivo contrato en PDF (Vinculo al archivo)`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_contratos` `a` where (`a`.`id_contrato` > 1);


-- Volcando estructura para vista rusiainf_inai.vout_convenios_modificatorios
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_convenios_modificatorios`;
CREATE VIEW `vout_convenios_modificatorios` AS select `a`.`numero_convenio` AS `ID (Número de convenio modificatorio)`,(select `b`.`numero_contrato` from `tab_contratos` `b` where (`a`.`id_contrato` = `b`.`id_contrato`)) AS `ID (Número de contrato)`,(select `e`.`ejercicio` from `cat_ejercicios` `e` where (`a`.`id_ejercicio` = `e`.`id_ejercicio`)) AS `Ejercicio`,(select `f`.`trimestre` from `cat_trimestres` `f` where (`a`.`id_trimestre` = `f`.`id_trimestre`)) AS `Trimestre`,`a`.`objeto_convenio` AS `Objeto`,`a`.`fundamento_juridico` AS `Fundamento jurídico`,`a`.`fecha_celebracion` AS `Fecha celebración`,`a`.`monto_convenio` AS `Monto`,`a`.`file_convenio` AS `Archivo convenio en PDF (Vinculo al archivo)`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_convenios_modificatorios` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_facturas
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_facturas`;
CREATE VIEW `vout_facturas` AS select `a`.`numero_factura` AS `ID Factura`,(select `b`.`nombre_razon_social` from `tab_proveedores` `b` where (`a`.`id_proveedor` = `b`.`id_proveedor`)) AS `Proveedor`,(select `c`.`numero_contrato` from `tab_contratos` `c` where (`a`.`id_contrato` = `c`.`id_contrato`)) AS `Contrato`,(select `d`.`numero_orden_compra` from `tab_ordenes_compra` `d` where (`a`.`id_orden_compra` = `d`.`id_orden_compra`)) AS `Orden`,(select `e`.`ejercicio` from `cat_ejercicios` `e` where (`a`.`id_ejercicio` = `e`.`id_ejercicio`)) AS `Ejercicio`,(select `f`.`trimestre` from `cat_trimestres` `f` where (`a`.`id_trimestre` = `f`.`id_trimestre`)) AS `Trimestre`,(select `g`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `g` where (`a`.`id_so_contratante` = `g`.`id_sujeto_obligado`)) AS `Sujeto obligado contratante`,(select `h`.`partida` from `cat_presupuesto_conceptos` `h` where (`a`.`id_presupuesto_concepto` = `h`.`id_presupesto_concepto`)) AS `Partida`,(select sum(`i`.`monto_desglose`) from `tab_facturas_desglose` `i` where (`a`.`id_factura` = `i`.`id_factura`)) AS `Monto`,`a`.`file_factura_pdf` AS `Archivo factura en PDF (Vínculo al archivo)`,`a`.`file_factura_xml` AS `Archivo factura en XML (Vínculo al archivo)`,`a`.`fecha_erogacion` AS `Fecha de erogación`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_facturas` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_facturas_desglose
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_facturas_desglose`;
CREATE VIEW `vout_facturas_desglose` AS select `a`.`id_factura_desglose` AS `ID Detalle Factura`,(select `b`.`numero_factura` from `tab_facturas` `b` where (`a`.`id_factura` = `b`.`id_factura`)) AS `ID Factura`,(select `g`.`nombre_campana_tipo` from (`vact_campana_aviso` `b` join `cat_campana_tipos` `g`) where ((`a`.`id_campana_aviso` = `b`.`id_campana_aviso`) and (`b`.`id_campana_tipo` = `g`.`id_campana_tipo`))) AS `Campana o aviso institucional`,(select `b`.`nombre_campana_aviso` from `vact_campana_aviso` `b` where (`a`.`id_campana_aviso` = `b`.`id_campana_aviso`)) AS `Nombre campana o aviso institucional`,(select `c`.`nombre_servicio_clasificacion` from `cat_servicios_clasificacion` `c` where (`c`.`id_servicio_clasificacion` = `a`.`id_servicio_clasificacion`)) AS `Clasificación del servicio`,(select `d`.`nombre_servicio_categoria` from `cat_servicios_categorias` `d` where (`d`.`id_servicio_categoria` = `a`.`id_servicio_categoria`)) AS `Categoría del servicio`,(select `e`.`nombre_servicio_subcategoria` from `cat_servicios_subcategorias` `e` where (`e`.`id_servicio_subcategoria` = `a`.`id_servicio_subcategoria`)) AS `Subcategoría del servicio`,(select `g`.`nombre_servicio_unidad` from `cat_servicios_unidades` `g` where (`a`.`id_servicio_unidad` = `g`.`id_servicio_unidad`)) AS `Unidad`,(select `f`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `f` where (`f`.`id_sujeto_obligado` = `a`.`id_so_solicitante`)) AS `Sujeto obligado solicitante`,`a`.`area_administrativa` AS `Área administrativa solicitante`,`a`.`descripcion_servicios` AS `Descripción del servicio o producto adquirido`,`a`.`cantidad` AS `Cantidad`,`a`.`precio_unitarios` AS `Precio unitario con I.V.A incluido`,`a`.`monto_desglose` AS `Monto`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_facturas_desglose` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_gasto_x_proveedor
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_gasto_x_proveedor`;
CREATE VIEW `vout_gasto_x_proveedor` AS select `a`.`id_proveedor` AS `ID de proveedor`,(select `b`.`nombre_personalidad_juridica` from `cat_personalidad_juridica` `b` where (`a`.`id_personalidad_juridica` = `b`.`id_personalidad_juridica`)) AS `Personalidad jurídica`,`a`.`nombre_razon_social` AS `Nombre o razón social`,`a`.`nombre_comercial` AS `Nombre comercial`,`a`.`rfc` AS `R.F.C.`,(select sum(`c`.`monto_desglose`) from (`vact_facturas` `b` join `vact_facturas_desglose` `c`) where ((`b`.`id_factura` = `c`.`id_factura`) and (`a`.`id_proveedor` = `b`.`id_proveedor`))) AS `Monto total pagado`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_proveedores` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_oc_x_proveedor
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_oc_x_proveedor`;
CREATE VIEW `vout_oc_x_proveedor` AS select `a`.`numero_orden_compra` AS `ID (Orden de compra)`,`a`.`id_proveedor` AS `ID de proveedor`,(select `b`.`nombre_razon_social` from `tab_proveedores` `b` where (`a`.`id_proveedor` = `b`.`id_proveedor`)) AS `Nombre Proveedor`,(select `c`.`nombre_procedimiento` from `cat_procedimientos` `c` where (`a`.`id_procedimiento` = `c`.`id_procedimiento`)) AS `Procedimiento`,(select `c`.`numero_contrato` from `tab_contratos` `c` where (`a`.`id_contrato` = `c`.`id_contrato`)) AS `ID (Número de contrato)`,(select `e`.`ejercicio` from `cat_ejercicios` `e` where (`a`.`id_ejercicio` = `e`.`id_ejercicio`)) AS `Ejercicio`,(select `f`.`trimestre` from `cat_trimestres` `f` where (`a`.`id_trimestre` = `f`.`id_trimestre`)) AS `Trimestre`,(select `g`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `g` where (`a`.`id_so_contratante` = `g`.`id_sujeto_obligado`)) AS `Sujeto obligado ordenante`,(select `l`.`nombre_campana_tipo` from (`vact_campana_aviso` `k` join `cat_campana_tipos` `l`) where ((`a`.`id_campana_aviso` = `k`.`id_campana_aviso`) and (`k`.`id_campana_tipo` = `l`.`id_campana_tipo`))) AS `Campana o aviso institucional`,(select `g`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `g` where (`a`.`id_so_solicitante` = `g`.`id_sujeto_obligado`)) AS `Sujeto obligado solicitante`,`a`.`descripcion_justificacion` AS `Justificación`,`a`.`fecha_orden` AS `Fecha de orden`,`a`.`file_orden` AS `Archivo de la orden de compra en PDF`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_ordenes_compra` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_ordenes_compra
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_ordenes_compra`;
CREATE VIEW `vout_ordenes_compra` AS select `a`.`numero_orden_compra` AS `ID_Orden_de_compra)`,(select `b`.`nombre_razon_social` from `tab_proveedores` `b` where (`a`.`id_proveedor` = `b`.`id_proveedor`)) AS `Proveedor`,(select `c`.`nombre_procedimiento` from `cat_procedimientos` `c` where (`a`.`id_procedimiento` = `c`.`id_procedimiento`)) AS `Procedimiento`,(select `d`.`numero_contrato` from `tab_contratos` `d` where (`a`.`id_contrato` = `d`.`id_contrato`)) AS `Contrato`,(select `e`.`ejercicio` from `cat_ejercicios` `e` where (`a`.`id_ejercicio` = `e`.`id_ejercicio`)) AS `Ejercicio`,(select `f`.`trimestre` from `cat_trimestres` `f` where (`a`.`id_trimestre` = `f`.`id_trimestre`)) AS `Trimestre`,(select `g`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `g` where (`g`.`id_sujeto_obligado` = `a`.`id_so_contratante`)) AS `Sujeto_obligado_ordenante`,(select `l`.`nombre_campana_tipo` from (`vact_campana_aviso` `k` join `cat_campana_tipos` `l`) where ((`a`.`id_campana_aviso` = `k`.`id_campana_aviso`) and (`k`.`id_campana_tipo` = `l`.`id_campana_tipo`))) AS `Campana o aviso institucional`,(select `i`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `i` where (`i`.`id_sujeto_obligado` = `a`.`id_so_solicitante`)) AS `Sujeto obligado solicitante`,`a`.`numero_orden_compra` AS `numero_orden_de_compra`,`a`.`descripcion_justificacion` AS `Justificación`,`a`.`fecha_orden` AS `Fecha_de_orden`,`a`.`file_orden` AS `Archivo_de_la_orden_de_compra_en_PDF_(Vínculo_al_documento)`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_ordenes_compra` `a` where (`a`.`id_orden_compra` > 1);


-- Volcando estructura para vista rusiainf_inai.vout_presupuestos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_presupuestos`;
CREATE VIEW `vout_presupuestos` AS select `a`.`id_presupuesto` AS `ID de presupuesto`,(select `e`.`ejercicio` from `cat_ejercicios` `e` where (`a`.`id_ejercicio` = `e`.`id_ejercicio`)) AS `Ejercicio`,(select `g`.`nombre_sujeto_obligado` from `tab_sujetos_obligados` `g` where (`g`.`id_sujeto_obligado` = `a`.`id_sujeto_obligado`)) AS `Sujeto obligado`,(select ifnull(sum(`b`.`monto_presupuesto`),0) from `tab_presupuestos_desglose` `b` where (`b`.`id_presupuesto` = `a`.`id_presupuesto`)) AS `Presupuesto original`,(select ifnull(sum(`b`.`monto_modificacion`),0) from `tab_presupuestos_desglose` `b` where (`b`.`id_presupuesto` = `a`.`id_presupuesto`)) AS `Monto modificado`,(select ifnull((sum(`b`.`monto_presupuesto`) + sum(`b`.`monto_modificacion`)),0) from `tab_presupuestos_desglose` `b` where (`b`.`id_presupuesto` = `a`.`id_presupuesto`)) AS `Presupuesto modificado`,(select ifnull(sum(`y`.`monto_desglose`),0) from ((`tab_facturas_desglose` `y` join `tab_facturas` `x`) join `tab_presupuestos_desglose` `b`) where ((`x`.`id_factura` = `y`.`id_factura`) and (`x`.`id_so_contratante` = `a`.`id_sujeto_obligado`) and (`x`.`id_presupuesto_concepto` = `b`.`id_presupuesto_concepto`) and (`a`.`id_presupuesto` = `b`.`id_presupuesto`) and (`a`.`id_ejercicio` = `x`.`id_ejercicio`))) AS `Presupuesto ejercido`,ifnull(`a`.`file_programa_anual`,'') AS `Programa Anual`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_presupuestos` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_presupuestos_desglose
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_presupuestos_desglose`;
CREATE VIEW `vout_presupuestos_desglose` AS select `a`.`id_presupuesto_desglose` AS `ID de desglose`,`a`.`id_presupuesto` AS `ID de presupuesto`,(select `b`.`partida` from `cat_presupuesto_conceptos` `b` where (`a`.`id_presupuesto_concepto` = `b`.`id_presupesto_concepto`)) AS `Partida presupuestal`,`a`.`monto_presupuesto` AS `Monto asignado`,`a`.`monto_modificacion` AS `Monto de modificación`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_presupuestos_desglose` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_proveedores
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_proveedores`;
CREATE VIEW `vout_proveedores` AS select `a`.`id_proveedor` AS `ID`,(select `b`.`nombre_personalidad_juridica` from `cat_personalidad_juridica` `b` where (`a`.`id_personalidad_juridica` = `b`.`id_personalidad_juridica`)) AS `Personalidad jurídica`,`a`.`nombre_razon_social` AS `Nombre o razón social`,`a`.`nombre_comercial` AS `Nombre comercial`,`a`.`rfc` AS `R.F.C.`,(select `j`.`name_active` from `sys_active` `j` where (`a`.`active` = `j`.`id_active`)) AS `Estatus` from `vact_proveedores` `a`;


-- Volcando estructura para vista rusiainf_inai.vout_sujetos_obligados
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vout_sujetos_obligados`;
CREATE VIEW `vout_sujetos_obligados` AS select `a`.`id_sujeto_obligado` AS `ID de S.O.`,(select `b`.`nombre_so_atribucion` from `cat_so_atribucion` `b` where (`b`.`id_so_atribucion` = `a`.`id_so_atribucion`)) AS `Función`,(select `b`.`nombre_so_orden_gobierno` from `cat_so_ordenes_gobierno` `b` where (`b`.`id_so_orden_gobierno` = `a`.`id_so_orden_gobierno`)) AS `Orden (Federal, Estatal, Municipal)`,(select `b`.`nombre_so_estado` from `cat_so_estados` `b` where (`b`.`id_so_estado` = `a`.`id_so_estado`)) AS `Estado`,`a`.`nombre_sujeto_obligado` AS `Nombre`,`a`.`siglas_sujeto_obligado` AS `Siglas`,`a`.`url_sujeto_obligado` AS `URL de página` from `vact_sujetos_obligados` `a`;


-- Volcando estructura para vista rusiainf_inai.vpor_proveedor
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vpor_proveedor`;
CREATE VIEW `vpor_proveedor` AS select `a`.`nombre_servicio_categoria` AS `categoria`,'Contratos' AS `tipo`,`d`.`nombre_razon_social` AS `proveedor`,sum(`b`.`monto_desglose`) AS `total`,count(0) AS `numero`,`e`.`ejercicio` AS `ejercicio` from ((((`cat_servicios_categorias` `a` join `vact_facturas_desglose` `b`) join `vact_facturas` `c`) join `vact_proveedores` `d`) join `vact_ejercicios` `e`) where ((`a`.`id_servicio_categoria` = `b`.`id_servicio_categoria`) and (`b`.`id_factura` = `c`.`id_factura`) and (`c`.`id_proveedor` = `d`.`id_proveedor`) and (`c`.`id_ejercicio` = `e`.`id_ejercicio`) and (`c`.`id_contrato` > 1)) group by `e`.`ejercicio`,`a`.`nombre_servicio_categoria`,'Contrato',`d`.`nombre_razon_social` union select `a`.`nombre_servicio_categoria` AS `categoria`,'Órdenes de compra' AS `tipo`,`d`.`nombre_razon_social` AS `proveedor`,sum(`b`.`monto_desglose`) AS `total`,count(0) AS `numero`,`e`.`ejercicio` AS `ejercicio` from ((((`cat_servicios_categorias` `a` join `vact_facturas_desglose` `b`) join `vact_facturas` `c`) join `vact_proveedores` `d`) join `vact_ejercicios` `e`) where ((`a`.`id_servicio_categoria` = `b`.`id_servicio_categoria`) and (`b`.`id_factura` = `c`.`id_factura`) and (`c`.`id_proveedor` = `d`.`id_proveedor`) and (`c`.`id_ejercicio` = `e`.`id_ejercicio`) and (`c`.`id_contrato` = 1) and (`c`.`id_orden_compra` > 1)) group by `e`.`ejercicio`,`a`.`nombre_servicio_categoria`,'Ordenes',`d`.`nombre_razon_social`;


-- Volcando estructura para vista rusiainf_inai.vpregrafica1
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vpregrafica1`;
CREATE VIEW `vpregrafica1` AS select year(`a`.`fecha_erogacion`) AS `ejercicio`,`e`.`nombre_servicio_categoria` AS `servicio`,if(`d`.`id_campana_aviso` in (select `vtop10_campanas`.`id_campana_aviso` from `vtop10_campanas`),`d`.`nombre_campana_aviso`,'Otras') AS `campana`,concat(`h`.`partida`,' - ',`h`.`denominacion`) AS `partida`,sum(`b`.`monto_desglose`) AS `ejercido`,`i`.`nombre_campana_tipo` AS `tipo`,date_format(`a`.`fecha_erogacion`,'%d/%m/%Y') AS `fecha`,if(`j`.`id_proveedor` in (select `vtop10_proveedores`.`id_proveedor` from `vtop10_proveedores`),`j`.`nombre_razon_social`,'Otros') AS `proveedor`,`d`.`id_campana_tipo` AS `campana_aviso` from ((((((((`vact_facturas` `a` join `vact_facturas_desglose` `b`) join `vact_ordenes_compra` `c`) join `vact_campana_aviso` `d`) join `cat_servicios_categorias` `e`) join `cat_campana_temas` `g`) join `cat_presupuesto_conceptos` `h`) join `cat_campana_tipos` `i`) join `tab_proveedores` `j`) where ((`a`.`id_factura` = `b`.`id_factura`) and (`a`.`id_proveedor` = `j`.`id_proveedor`) and (`a`.`id_orden_compra` = `c`.`id_orden_compra`) and (`b`.`id_campana_aviso` = `d`.`id_campana_aviso`) and (`b`.`id_servicio_categoria` = `e`.`id_servicio_categoria`) and (`d`.`id_campana_tema` = `g`.`id_campana_tema`) and (`a`.`id_presupuesto_concepto` = `h`.`id_presupesto_concepto`) and (`d`.`id_campana_tipo` = `i`.`id_campana_tipo`)) group by year(`a`.`fecha_erogacion`),`e`.`nombre_servicio_categoria`,if(`d`.`id_campana_aviso` in (select `vtop10_campanas`.`id_campana_aviso` from `vtop10_campanas`),`d`.`nombre_campana_aviso`,'Otras'),`h`.`partida`,`i`.`nombre_campana_tipo`,date_format(`a`.`fecha_erogacion`,'%d/%m/%Y'),if(`j`.`id_proveedor` in (select `vtop10_proveedores`.`id_proveedor` from `vtop10_proveedores`),`j`.`nombre_razon_social`,'Otros'),`d`.`id_campana_tipo`;


-- Volcando estructura para vista rusiainf_inai.vso_actual
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vso_actual`;
CREATE VIEW `vso_actual` AS select `a`.`id_user` AS `id_user`,`a`.`username` AS `username`,`a`.`password` AS `password`,`a`.`cookie_id` AS `cookie_id`,`a`.`token` AS `token`,`a`.`email` AS `email`,`a`.`fname` AS `fname`,`a`.`lname` AS `lname`,`a`.`public_office` AS `public_office`,`a`.`phone` AS `phone`,`a`.`created` AS `created`,`a`.`lastlogin` AS `lastlogin`,`a`.`lastip` AS `lastip`,`a`.`notes` AS `notes`,`a`.`record_user` AS `record_user`,`a`.`last_update` AS `last_update`,`a`.`active` AS `active`,`b`.`id_sujeto_obligado` AS `id_sujeto_obligado`,`b`.`id_so_atribucion` AS `id_so_atribucion` from (`sec_users` `a` join `tab_sujetos_obligados` `b`) where (`a`.`record_user` = `b`.`id_sujeto_obligado`);


-- Volcando estructura para vista rusiainf_inai.vso_contratante
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vso_contratante`;
CREATE VIEW `vso_contratante` AS select `tab_sujetos_obligados`.`id_sujeto_obligado` AS `id_sujeto_obligado`,`tab_sujetos_obligados`.`id_so_atribucion` AS `id_so_atribucion`,`tab_sujetos_obligados`.`id_so_orden_gobierno` AS `id_so_orden_gobierno`,`tab_sujetos_obligados`.`id_so_estado` AS `id_so_estado`,`tab_sujetos_obligados`.`nombre_sujeto_obligado` AS `nombre_sujeto_obligado`,`tab_sujetos_obligados`.`siglas_sujeto_obligado` AS `siglas_sujeto_obligado`,`tab_sujetos_obligados`.`url_sujeto_obligado` AS `url_sujeto_obligado`,`tab_sujetos_obligados`.`active` AS `active` from `tab_sujetos_obligados` where (`tab_sujetos_obligados`.`id_so_atribucion` in (1,3));


-- Volcando estructura para vista rusiainf_inai.vso_solicitante
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vso_solicitante`;
CREATE VIEW `vso_solicitante` AS select `tab_sujetos_obligados`.`id_sujeto_obligado` AS `id_sujeto_obligado`,`tab_sujetos_obligados`.`id_so_atribucion` AS `id_so_atribucion`,`tab_sujetos_obligados`.`id_so_orden_gobierno` AS `id_so_orden_gobierno`,`tab_sujetos_obligados`.`id_so_estado` AS `id_so_estado`,`tab_sujetos_obligados`.`nombre_sujeto_obligado` AS `nombre_sujeto_obligado`,`tab_sujetos_obligados`.`siglas_sujeto_obligado` AS `siglas_sujeto_obligado`,`tab_sujetos_obligados`.`url_sujeto_obligado` AS `url_sujeto_obligado`,`tab_sujetos_obligados`.`active` AS `active` from `tab_sujetos_obligados` where (`tab_sujetos_obligados`.`id_so_atribucion` in (2,3));


-- Volcando estructura para vista rusiainf_inai.vsujetosobligados
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vsujetosobligados`;
CREATE VIEW `vsujetosobligados` AS select `a`.`id_sujeto_obligado` AS `id_sujeto_obligado`,`b`.`ejercicio` AS `ejercicio`,`d`.`nombre_so_atribucion` AS `funcion`,`e`.`nombre_so_orden_gobierno` AS `orden`,`f`.`nombre_so_estado` AS `estado`,`a`.`nombre_sujeto_obligado` AS `nombre`,`a`.`siglas_sujeto_obligado` AS `siglas`,`a`.`url_sujeto_obligado` AS `URL`,(select ifnull(sum(`g`.`monto_desglose`),0) from (`vact_facturas` `h` join `vact_facturas_desglose` `g`) where ((`h`.`id_factura` = `g`.`id_factura`) and (`h`.`id_so_contratante` = `a`.`id_sujeto_obligado`) and (`h`.`id_ejercicio` = `b`.`id_ejercicio`))) AS `monto_total` from ((((`vact_sujetos_obligados` `a` join `cat_ejercicios` `b`) join `cat_so_atribucion` `d`) join `cat_so_ordenes_gobierno` `e`) join `cat_so_estados` `f`) where ((`b`.`active` = 1) and (`a`.`id_so_atribucion` = `d`.`id_so_atribucion`) and (`a`.`id_so_orden_gobierno` = `e`.`id_so_orden_gobierno`) and (`a`.`id_so_estado` = `f`.`id_so_estado`)) order by `a`.`id_sujeto_obligado`,`b`.`ejercicio`;


-- Volcando estructura para vista rusiainf_inai.vtable1
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vtable1`;
CREATE VIEW `vtable1` AS select concat(`b`.`capitulo`,'.',`b`.`concepto`,'.',`b`.`partida`) AS `Clave de partida`,`b`.`descripcion` AS `Descripción`,`d`.`ejercicio` AS `Ejercicio`,sum(`a`.`monto_presupuesto`) AS `Prespuesto Original`,sum(`a`.`monto_modificacion`) AS `Monto Modificado`,sum((`a`.`monto_presupuesto` + `a`.`monto_modificacion`)) AS `Presupuesto Modificado` from (((`tab_presupuestos_desglose` `a` join `cat_presupuesto_conceptos` `b`) join `tab_presupuestos` `c`) join `cat_ejercicios` `d`) where ((`a`.`id_presupuesto_concepto` = `b`.`id_presupesto_concepto`) and (`a`.`id_presupuesto` = `c`.`id_presupuesto`) and (`c`.`id_ejercicio` = `d`.`id_ejercicio`)) group by `b`.`partida`,`b`.`descripcion`,`d`.`ejercicio`;


-- Volcando estructura para vista rusiainf_inai.vtable2
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vtable2`;
CREATE VIEW `vtable2` AS select `b`.`id_proveedor` AS `id_proveedor`,`b`.`nombre_comercial` AS `Nombre o razón social`,(select count(0) from `tab_contratos` `c` where ((`c`.`id_ejercicio` = `a`.`id_ejercicio`) and (`c`.`id_proveedor` = `b`.`id_proveedor`))) AS `Contratos`,(select count(0) from `tab_ordenes_compra` `d` where ((`d`.`id_ejercicio` = `a`.`id_ejercicio`) and (`d`.`id_proveedor` = `b`.`id_proveedor`) and (`d`.`id_contrato` = 1))) AS `Órdenes de compra sin contrato`,(select if(isnull(sum(`e`.`monto_desglose`)),0,sum(`e`.`monto_desglose`)) from (`tab_facturas_desglose` `e` join `tab_facturas` `f`) where ((`e`.`id_factura` = `f`.`id_factura`) and (`f`.`id_ejercicio` = `a`.`id_ejercicio`) and (`f`.`id_proveedor` = `b`.`id_proveedor`))) AS `Monto total pagado`,`a`.`ejercicio` AS `Ejercicio` from (`cat_ejercicios` `a` join `tab_proveedores` `b`);


-- Volcando estructura para vista rusiainf_inai.vtab_contratos_oc
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vtab_contratos_oc`;
CREATE VIEW `vtab_contratos_oc` AS select `a`.`numero_contrato` AS `numero_contrato`,`b`.`numero_orden_compra` AS `numero_orden_compra`,`d`.`nombre_campana_tipo` AS `tipo`,`c`.`nombre_campana_aviso` AS `nombre`,`e`.`ejercicio` AS `anio`,truncate((sum(`a`.`monto_contrato`) / 1000),0) AS `monto_presupuesto`,`a`.`id_contrato` AS `id_contrato`,`b`.`id_orden_compra` AS `id_orden_compra` from ((((`tab_contratos` `a` join `tab_ordenes_compra` `b`) join `tab_campana_aviso` `c`) join `cat_campana_tipos` `d`) join `cat_ejercicios` `e`) where ((`b`.`id_contrato` = `a`.`id_contrato`) and (`b`.`id_campana_aviso` = `c`.`id_campana_aviso`) and (`d`.`id_campana_tipo` = `c`.`id_campana_tipo`) and (`a`.`id_ejercicio` = `e`.`id_ejercicio`) and (`a`.`id_contrato` <> 1) and (`b`.`id_orden_compra` <> 1)) group by `a`.`numero_contrato`,`b`.`numero_orden_compra`,`d`.`nombre_campana_tipo`,`c`.`nombre_campana_aviso`,`e`.`ejercicio`,`a`.`id_contrato`,`b`.`id_orden_compra`;


-- Volcando estructura para vista rusiainf_inai.vtab_presupuesto
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vtab_presupuesto`;
CREATE VIEW `vtab_presupuesto` AS select `b`.`partida` AS `partida`,`b`.`denominacion` AS `descripcion`,`d`.`ejercicio` AS `ejercicio`,sum(`a`.`monto_presupuesto`) AS `original`,sum(`a`.`monto_modificacion`) AS `modificaciones`,(sum(`a`.`monto_presupuesto`) + sum(`a`.`monto_modificacion`)) AS `presupuesto`,ifnull((select sum(`f`.`monto_desglose`) from (`tab_facturas` `e` join `tab_facturas_desglose` `f`) where ((`e`.`active` = 1) and (`f`.`active` = 1) and (`e`.`id_factura` = `f`.`id_factura`) and (`e`.`id_presupuesto_concepto` = `a`.`id_presupuesto_concepto`))),0) AS `ejercido` from (((`tab_presupuestos_desglose` `a` join `cat_presupuesto_conceptos` `b`) join `tab_presupuestos` `c`) join `cat_ejercicios` `d`) where ((`a`.`active` = 1) and (`b`.`active` = 1) and (`c`.`active` = 1) and (`d`.`active` = 1) and (`a`.`id_presupuesto` = `c`.`id_presupuesto`) and (`a`.`id_presupuesto_concepto` = `b`.`id_presupesto_concepto`) and (`d`.`id_ejercicio` = `c`.`id_ejercicio`)) group by `d`.`ejercicio`,`b`.`denominacion`;


-- Volcando estructura para vista rusiainf_inai.vtab_proveedores
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vtab_proveedores`;
CREATE VIEW `vtab_proveedores` AS select `a`.`id_proveedor` AS `id_proveedor`,`b`.`ejercicio` AS `ejercicio`,`a`.`nombre_razon_social` AS `nombre`,(select count(0) from `tab_contratos` `c` where ((`a`.`id_proveedor` = `c`.`id_proveedor`) and (`c`.`id_ejercicio` = `b`.`id_ejercicio`) and (`c`.`id_contrato` > 1))) AS `contratos`,(select count(0) from `tab_ordenes_compra` `f` where ((`a`.`id_proveedor` = `f`.`id_proveedor`) and (`f`.`id_ejercicio` = `b`.`id_ejercicio`) and (`f`.`id_orden_compra` > 1) and (`f`.`id_contrato` = 1))) AS `ordenes`,(select ifnull(sum(`e`.`monto_desglose`),0) from (`tab_facturas` `d` join `tab_facturas_desglose` `e`) where ((`d`.`id_factura` = `e`.`id_factura`) and (`a`.`id_proveedor` = `d`.`id_proveedor`) and (`d`.`id_ejercicio` = `b`.`id_ejercicio`))) AS `monto` from (`tab_proveedores` `a` join `cat_ejercicios` `b`) having (`monto` <> 0);


-- Volcando estructura para vista rusiainf_inai.vtipo_campana_proveedor
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vtipo_campana_proveedor`;
CREATE VIEW `vtipo_campana_proveedor` AS select `tab_campana_aviso`.`id_campana_aviso` AS `id_campana_aviso`,concat(`cat_campana_tipos`.`nombre_campana_tipo`,' - ',`tab_campana_aviso`.`nombre_campana_aviso`,' <a href=\'Sys_Detalle5?campana=',`tab_campana_aviso`.`id_campana_aviso`,'\' target=\'_blank\'></a>') AS `campana_aviso` from (`tab_campana_aviso` join `cat_campana_tipos`) where (`cat_campana_tipos`.`id_campana_tipo` = `tab_campana_aviso`.`id_campana_tipo`);


-- Volcando estructura para vista rusiainf_inai.vtop10_campanas
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vtop10_campanas`;
CREATE VIEW `vtop10_campanas` AS select `a`.`id_campana_aviso` AS `id_campana_aviso`,sum(`a`.`monto_desglose`) AS `sum(a.monto_desglose)` from `vact_facturas_desglose` `a` group by `a`.`id_campana_aviso` order by sum(`a`.`monto_desglose`) desc limit 10;


-- Volcando estructura para vista rusiainf_inai.vtop10_proveedores
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vtop10_proveedores`;
CREATE VIEW `vtop10_proveedores` AS select `b`.`id_proveedor` AS `id_proveedor`,sum(`a`.`monto_desglose`) AS `sum(a.monto_desglose)` from (`vact_facturas_desglose` `a` join `vact_facturas` `b`) where (`a`.`id_factura` = `b`.`id_factura`) group by `b`.`id_proveedor` order by sum(`a`.`monto_desglose`) desc limit 10;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


-- Volcando estructura para disparador tpov1.FDESGLOSE_INTSERT_TRIGGER
CREATE TRIGGER `FDESGLOSE_INTSERT_TRIGGER` BEFORE INSERT ON `tab_facturas_desglose` FOR EACH ROW BEGIN SET NEW.monto_desglose = NEW.cantidad * NEW.precio_unitarios; END;

-- Volcando estructura para disparador tpov1.FDESGLOSE_UPDATE_TRIGGER
CREATE TRIGGER `FDESGLOSE_UPDATE_TRIGGER` BEFORE UPDATE ON `tab_facturas_desglose` FOR EACH ROW BEGIN SET NEW.monto_desglose = NEW.cantidad * NEW.precio_unitarios; END;


