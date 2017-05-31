/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- Volcando datos para la tabla rusiainf_inai.cat_campana_ambito_geo: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_campana_ambito_geo` DISABLE KEYS */;
INSERT INTO `cat_campana_ambito_geo` (`id_campana_ambito_geo`, `nombre_campana_ambito_geo`, `active`) VALUES
	(1, 'Nacional', 1),
	(2, 'Estatal', 1),
	(3, 'Municipal', 1);
/*!40000 ALTER TABLE `cat_campana_ambito_geo` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_campana_coberturas: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_campana_coberturas` DISABLE KEYS */;
INSERT INTO `cat_campana_coberturas` (`id_campana_cobertura`, `nombre_campana_cobertura`, `active`) VALUES
	(1, 'Municipal', 1),
	(2, 'Estatal', 1),
	(3, 'Nacional', 1),
	(4, 'Internacional', 1);
/*!40000 ALTER TABLE `cat_campana_coberturas` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_campana_estatus: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_campana_estatus` DISABLE KEYS */;
INSERT INTO `cat_campana_estatus` (`id_campana_estatus`, `nombre_campana_estatus`, `active`) VALUES
	(1, 'En proceso', 1),
	(2, 'Concluida', 1);
/*!40000 ALTER TABLE `cat_campana_estatus` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_campana_objetivos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_campana_objetivos` DISABLE KEYS */;
INSERT INTO `cat_campana_objetivos` (`id_campana_objetivo`, `campana_objetivo`, `active`) VALUES
	(1, 'Garantizar el óptimo cumplimiento de los derechos de acceso a la información pública y la protección de datos personales', 1),
	(2, 'Promover el pleno ejercicio de los derechos de acceso a la información pública y de protección de datos personales', 1),
	(3, 'Coordinar el Sistema Nacional de Transparencia y de Protecciónn de Datos Personales, para que los órganos garantes establezcan, apliquen y evalúen acciones de acceso a la información pública y de protección y debido tratamiento de datos personales', 1),
	(4, 'Impulsar el desempeño organizacional y promover un modelo institucional de servicio público orientado a resultados con un enfoque de derechos humanos y perspectiva de género', 1);
/*!40000 ALTER TABLE `cat_campana_objetivos` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_campana_subtipos: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_campana_subtipos` DISABLE KEYS */;
INSERT INTO `cat_campana_subtipos` (`id_campana_subtipo`, `id_campana_tipo`, `nombre_campana_subtipo`, `active`) VALUES
	(1, 1, 'Avisos', 1),
	(2, 1, 'Precisiones', 1),
	(3, 1, 'Convocatorias', 1),
	(4, 1, 'Edictos', 1),
	(5, 1, 'Bases', 1),
	(6, 1, 'Licitaciones', 1),
	(7, 1, 'Padrones de beneficiarios', 1),
	(8, 1, 'Concursos', 1),
	(9, 1, 'Aclaraciones', 1),
	(10, 1, 'Otros', 1),
	(11, 2, 'Campaña de comunicación social', 1),
	(12, 2, 'Campaña de promoción y publicidad', 1);
/*!40000 ALTER TABLE `cat_campana_subtipos` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_campana_temas: ~34 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_campana_temas` DISABLE KEYS */;
INSERT INTO `cat_campana_temas` (`id_campana_tema`, `nombre_campana_tema`, `active`) VALUES
	(1, 'Salud', 1),
	(2, 'Educación', 1),
	(3, 'Deportes', 1),
	(4, 'Turismo', 1),
	(5, 'Economía y negocios', 1),
	(6, 'Agricultura, ganadería, desarrollo rural, pesca y alimentación', 1),
	(7, 'Trabajo y Previsión Social', 1),
	(8, 'Relaciones Exteriores', 1),
	(9, 'Energía e Hidrocarburos', 1),
	(10, 'Desarrollo Político, Leyes Constitucionales', 1),
	(11, 'Marina', 1),
	(12, 'Finanzas públicas', 1),
	(13, 'Seguridad nacional', 1),
	(14, 'Cultura y artes', 1),
	(15, 'Entretenimiento y actividades recreativas', 1),
	(16, 'Ciencia y tecnología', 1),
	(17, 'Obras públicas', 1),
	(18, 'Protección civil, emergencias y desastres naturales', 1),
	(19, 'Vialidad y transporte', 1),
	(20, 'Seguridad pública y justicia', 1),
	(21, 'Informes de gobierno', 1),
	(22, 'Civismo y legalidad', 1),
	(23, 'Desarrollo social y humano', 1),
	(24, 'Trámites y servicios', 1),
	(25, 'Derechos humanos', 1),
	(26, 'Derechos de los niños', 1),
	(27, 'Equidad de género', 1),
	(28, 'Pueblos indígenas', 1),
	(29, 'Ecología y medio ambiente', 1),
	(30, 'Acceso a la información, transparencia y rendición de cuentas', 1),
	(31, 'Protección de datos personales', 1),
	(32, 'Participación ciudadana', 1),
	(33, 'Felicitaciones, esquelas y condolencias', 1),
	(34, 'Otro', 1);
/*!40000 ALTER TABLE `cat_campana_temas` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_campana_tipos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_campana_tipos` DISABLE KEYS */;
INSERT INTO `cat_campana_tipos` (`id_campana_tipo`, `nombre_campana_tipo`, `active`) VALUES
	(1, 'Avisos Institucionales', 1),
	(2, 'Campañas', 1);
/*!40000 ALTER TABLE `cat_campana_tipos` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_ejercicios: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_ejercicios` DISABLE KEYS */;
INSERT INTO `cat_ejercicios` (`id_ejercicio`, `ejercicio`, `active`) VALUES
	(1, '2015', 1),
	(2, '2016', 2),
	(3, '2017', 2);
/*!40000 ALTER TABLE `cat_ejercicios` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_meses: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_meses` DISABLE KEYS */;
INSERT INTO `cat_meses` (`id_mes`, `mes`, `mes_corto`, `mes_orden`, `active`) VALUES
	(1, 'Enero', 'ENE', 1, 1),
	(2, 'Febrero', 'FEB', 2, 1),
	(3, 'Marzo', 'MAR', 3, 1),
	(4, 'Abril', 'ABR', 4, 1),
	(5, 'Mayo', 'MAY', 5, 1),
	(6, 'Junio', 'JUN', 6, 1),
	(7, 'Julio', 'JUL', 7, 1),
	(8, 'Agosto', 'AGO', 8, 1),
	(9, 'Septiembre', 'SEP', 9, 1),
	(10, 'Octubre', 'OCT', 10, 1),
	(11, 'Noviembre', 'NOV', 11, 1),
	(12, 'Diciembre', 'DIC', 12, 1);
/*!40000 ALTER TABLE `cat_meses` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_personalidad_juridica: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_personalidad_juridica` DISABLE KEYS */;
INSERT INTO `cat_personalidad_juridica` (`id_personalidad_juridica`, `nombre_personalidad_juridica`, `active`) VALUES
	(1, 'Persona física', 1),
	(2, 'Persona moral', 1);
/*!40000 ALTER TABLE `cat_personalidad_juridica` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_poblacion_grupo_edad: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_poblacion_grupo_edad` DISABLE KEYS */;
INSERT INTO `cat_poblacion_grupo_edad` (`id_poblacion_grupo_edad`, `nombre_poblacion_grupo_edad`, `active`) VALUES
	(1, '18-35', 1),
	(2, '36-60', 1),
	(3, '60 en adelante', 1),
	(4, '13 - 65', 1);
/*!40000 ALTER TABLE `cat_poblacion_grupo_edad` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_poblacion_lugar: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_poblacion_lugar` DISABLE KEYS */;
INSERT INTO `cat_poblacion_lugar` (`id_poblacion_lugar`, `nombre_poblacion_lugar`, `active`) VALUES
	(1, 'Nacional', 1),
	(2, 'DF', 1);
/*!40000 ALTER TABLE `cat_poblacion_lugar` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_poblacion_nivel: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_poblacion_nivel` DISABLE KEYS */;
INSERT INTO `cat_poblacion_nivel` (`id_poblacion_nivel`, `nombre_poblacion_nivel`, `active`) VALUES
	(1, 'AB Alta', 1),
	(2, 'C+ Media Alta', 1),
	(3, 'C Media', 1),
	(4, 'D+ Media Baja', 1),
	(5, 'D Baja', 1),
	(6, 'E Marginada', 1);
/*!40000 ALTER TABLE `cat_poblacion_nivel` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_poblacion_nivel_educativo: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_poblacion_nivel_educativo` DISABLE KEYS */;
INSERT INTO `cat_poblacion_nivel_educativo` (`id_poblacion_nivel_educativo`, `nombre_poblacion_nivel_educativo`, `active`) VALUES
	(1, 'Doctorado', 1),
	(2, 'Maestria', 1),
	(3, 'Superior', 1),
	(4, 'Media Superior', 1),
	(5, 'Secundaria', 1),
	(6, 'Primaria', 1),
	(7, 'Sin educación', 1);
/*!40000 ALTER TABLE `cat_poblacion_nivel_educativo` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_poblacion_sexo: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_poblacion_sexo` DISABLE KEYS */;
INSERT INTO `cat_poblacion_sexo` (`id_poblacion_sexo`, `nombre_poblacion_sexo`, `active`) VALUES
	(1, 'Masculino', 1),
	(2, 'Femenino', 1),
	(3, 'Ambos', 1);
/*!40000 ALTER TABLE `cat_poblacion_sexo` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_presupuesto_conceptos: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_presupuesto_conceptos` DISABLE KEYS */;
INSERT INTO `cat_presupuesto_conceptos` (`id_presupesto_concepto`, `capitulo`, `concepto`, `partida`, `denominacion`, `descripcion`, `id_captura`, `active`) VALUES
	(1, '3300', '', ' ', 'Servicios profesionales, científicos, técnicos y otros servicios', 'Asignaciones destinadas a cubrir erogaciones por contrataci&oacute;n de personas f&iacute;sicas y morales para la prestaci&oacute;n de servicios profesionales independientes, tales como inform&aacute;tico, de asesor&iacute;a, consultor&iacute;a, capacitaci&oacute;n, estudios e investigaciones, protecci&oacute;n y seguridad; incluye los servicios subrogados que se contraten; se excluyen los estudios de preinversi&oacute;n previstos en el cap&iacute;tulo de Inversi&oacute;n P&uacute;blica, as&iacute; como los honorarios asimilables a salarios.</p>', 1, 1),
	(2, '3300', '336', ' ', 'Servicios de apoyo administrativo, traducción, fotocopiado e impresión', '<p>Asignaciones destinadas a cubrir el costo de la contrataci&oacute;n de servicios de fotocopiado y preparaci&oacute;n de documentos; digitalizaci&oacute;n de documentos oficiales, fax, engargolado, enmicado, encuadernaci&oacute;n, corte de papel, recepci&oacute;n de correspondencia y otros afines. Incluye servicios de apoyo secretarial, servicios de estenograf&iacute;a en los tribunales, transcripci&oacute;n simult&aacute;nea de di&aacute;logos para la televisi&oacute;n, reuniones y conferencias; servicios comerciales no previstos en las dem&aacute;s partidas anteriores. Incluye servicios de impresi&oacute;n de documentos oficiales necesarios tales como: pasaportes, certificados especiales, t&iacute;tulos de cr&eacute;dito, formas fiscales y formas valoradas, y dem&aacute;s documentos para la identificaci&oacute;n, tr&aacute;mites oficiales y servicios a la poblaci&oacute;n; servicios de impresi&oacute;n y elaboraci&oacute;n de material informativo, tales como: padrones de beneficiarios, reglas de operaci&oacute;n, programas sectoriales, regionales, especiales; informes de labores, manuales de organizaci&oacute;n, de procedimientos y de servicios al p&uacute;blico; decretos, convenios, acuerdos, instructivos, proyectos editoriales (libros, revistas y gacetas peri&oacute;dicas), folletos, tr&iacute;pticos, d&iacute;pticos, carteles, mantas, r&oacute;tulos, y dem&aacute;s servicios de impresi&oacute;n y elaboraci&oacute;n de material informativo. Incluye gastos como: avisos, precisiones, convocatorias, edictos, bases, licitaciones, diario oficial, concursos y aclaraciones, y dem&aacute;s informaci&oacute;n en medios masivos. Excluye las inserciones derivadas de campa&ntilde;as publicitarias y de comunicaci&oacute;n social, las cuales se deber&aacute;n registrar en las partidas correspondientes al concepto 3600 Servicios de Comunicaci&oacute;n Social y Publicidad.</p>', 1, 1),
	(3, '3300', '336', '33604', 'Impresión y elaboración de material informativo derivado de la operación y administración de las dependencias y entidades', '<p>Asignaciones destinadas a cubrir el costo de los servicios de impresi&oacute;n y elaboraci&oacute;n de material informativo, tales como: padrones de beneficiarios, reglas de operaci&oacute;n, programas sectoriales, regionales, especiales; informes de labores, manuales de organizaci&oacute;n, de procedimientos y de servicios al p&uacute;blico; decretos, convenios, acuerdos, instructivos, proyectos editoriales (libros, revistas y gacetas peri&oacute;dicas), folletos, tr&iacute;pticos, d&iacute;pticos, carteles, mantas, r&oacute;tulos, y dem&aacute;s servicios de impresi&oacute;n y elaboraci&oacute;n de material informativo que forma parte de los instrumentos de apoyo para la realizaci&oacute;n de los programas presupuestarios de las dependencias y entidades, distintos de los servicios de comunicaci&oacute;n social y publicidad.</p>', 1, 1),
	(4, '3300', '336', '33605', 'Información en medios masivos derivada de la operación y administración de las dependencias y entidades', '<p>Asignaciones destinadas a cubrir los gastos de difusi&oacute;n, en medios impresos y/o complementarios, de informaci&oacute;n, incluyendo aquellas que se realicen en cumplimiento de disposiciones jur&iacute;dicas, como: avisos, precisiones, convocatorias, edictos, bases, licitaciones, padrones de beneficiarios, reglas de operaci&oacute;n, diario oficial, concursos y aclaraciones, y dem&aacute;s informaci&oacute;n en medios masivos, distinta de las inserciones derivadas de campa&ntilde;as publicitarias y de comunicaci&oacute;n social, las cuales se deber&aacute;n registrar en la partida que corresponda del concepto 3600 Servicios de comunicaci&oacute;n social y publicidad.</p>', 1, 1),
	(5, '3600', ' ', ' ', 'Servicios de comunicación social y publicidad', '<p>Asignaciones destinadas a cubrir los gastos de realizaci&oacute;n y difusi&oacute;n de mensajes y campa&ntilde;as para informar a la poblaci&oacute;n sobre los programas, servicios p&uacute;blicos y el quehacer gubernamental en general; as&iacute; como la publicidad comercial de los productos y servicios que generan ingresos para los entes p&uacute;blicos. Incluye la contrataci&oacute;n de servicios de impresi&oacute;n y publicaci&oacute;n de informaci&oacute;n.</p>', 1, 1),
	(6, '3600', '361', '', 'Difusión por radio, televisión y otros medios de mensajes sobre programas y actividades gubernamentales', '<p>Asignaciones destinadas a cubrir el costo de difusi&oacute;n del quehacer gubernamental y de los bienes y servicios p&uacute;blicos que prestan los entes p&uacute;blicos, la publicaci&oacute;n y difusi&oacute;n masiva de las mismas a un p&uacute;blico objetivo determinado a trav&eacute;s de televisi&oacute;n abierta y restringida, radio, cine, prensa, encartes, espectaculares, mobiliario urbano, tarjetas telef&oacute;nicas, medios electr&oacute;nicos e impresos internacionales, folletos, tr&iacute;pticos, d&iacute;pticos, carteles, mantas, r&oacute;tulos, producto integrado y otros medios complementarios; estudios para medir la pertinencia y efectividad de las campa&ntilde;as, as&iacute; como los gastos derivados de la contrataci&oacute;n de personas f&iacute;sicas y/o morales que presten servicios afines para la elaboraci&oacute;n, difusi&oacute;n y evaluaci&oacute;n de dichas campa&ntilde;as.</p>', 1, 1),
	(7, '3600', '361', '36101', 'Difusión de mensajes sobre programas y actividades gubernamentales', '<p>Asignaciones destinadas a cubrir el costo de difusi&oacute;n del quehacer gubernamental y de los bienes y servicios p&uacute;blicos que prestan las dependencias o entidades. Incluye el dise&ntilde;o y conceptualizaci&oacute;n de campa&ntilde;as de comunicaci&oacute;n, preproducci&oacute;n, producci&oacute;n, postproducci&oacute;n y copiado; la publicaci&oacute;n y difusi&oacute;n masiva de las mismas a un p&uacute;blico objetivo determinado a trav&eacute;s de televisi&oacute;n abierta y restringida, radio, cine, prensa, encartes, espectaculares, mobiliario urbano, tarjetas telef&oacute;nicas, Internet, medios electr&oacute;nicos e impresos internacionales, folletos, tr&iacute;pticos, d&iacute;pticos, carteles, mantas, r&oacute;tulos, producto integrado y otros medios complementarios; estudios para medir la pertinencia y efectividad de las campa&ntilde;as, as&iacute; como los gastos derivados de la contrataci&oacute;n de personas f&iacute;sicas y/o morales que presten servicios afines para la elaboraci&oacute;n, difusi&oacute;n y evaluaci&oacute;n de dichas campa&ntilde;as.</p>', 1, 1),
	(8, '3600', '362', '', 'Difusión por radio, televisión y otros medios de mensajes comerciales para promover la venta de bienes o servicios', '<p>Asignaciones destinadas a cubrir el costo de la publicidad derivada de la comercializaci&oacute;n de los productos o servicios de los entes p&uacute;blicos que generan un ingreso para el Estado. Incluye el dise&ntilde;o y conceptualizaci&oacute;n de campa&ntilde;as publicitarias; preproducci&oacute;n, producci&oacute;n, postproducci&oacute;n y copiado; publicaci&oacute;n y difusi&oacute;n masiva de las mismas a un p&uacute;blico objetivo determinado a trav&eacute;s de televisi&oacute;n abierta y restringida, radio, cine, prensa, encartes, espectaculares, mobiliario urbano, tarjetas telef&oacute;nicas, Internet, medios electr&oacute;nicos e impresos internacionales, folletos, tr&iacute;pticos, d&iacute;pticos, carteles, mantas, r&oacute;tulos, producto integrado, puntos de venta, art&iacute;culos promocionales, servicios integrales de promoci&oacute;n y otros medios complementarios, estudios para medir la pertinencia y efectividad de campa&ntilde;as; as&iacute; como los gastos derivados de la contrataci&oacute;n de personas f&iacute;sicas y/o morales que presenten servicios afines para la elaboraci&oacute;n, difusi&oacute;n y evaluaci&oacute;n de dichas campa&ntilde;as publicitarias. Excluye los gastos de difusi&oacute;n de mensajes que no comercializan productos o servicios.</p>', 1, 1),
	(9, '3600', '362', '36201', 'Difusión de mensajes comerciales para promover la venta de productos o servicios', '<p>Asignaciones destinadas a cubrir el costo de la publicidad derivada de la comercializaci&oacute;n de los productos o servicios de las entidades que generan un ingreso para el Estado. Incluye el dise&ntilde;o y conceptualizaci&oacute;n de campa&ntilde;as publicitarias; preproducci&oacute;n, producci&oacute;n, postproducci&oacute;n y copiado; publicaci&oacute;n y difusi&oacute;n masiva de las mismas a un p&uacute;blico objetivo determinado a trav&eacute;s de televisi&oacute;n abierta y restringida, radio, cine, prensa, encartes, espectaculares, mobiliario urbano, tarjetas telef&oacute;nicas, Internet, medios electr&oacute;nicos e impresos internacionales, folletos, tr&iacute;pticos, d&iacute;pticos, carteles, mantas, r&oacute;tulos, producto integrado, puntos de venta, art&iacute;culos promocionales, servicios integrales de promoci&oacute;n y otros medios complementarios, estudios para medir la pertinencia y efectividad de campa&ntilde;as; as&iacute; como los gastos derivados de la contrataci&oacute;n de personas f&iacute;sicas y/o morales que presenten servicios afines para la elaboraci&oacute;n, difusi&oacute;n y evaluaci&oacute;n de dichas campa&ntilde;as publicitarias. Excluye los gastos de difusi&oacute;n de mensajes que no comercializan productos o servicios, los cuales deben registrarse en la partida 36101 Difusi&oacute;n de mensajes sobre programas y actividades gubernamentales.</p>', 1, 1),
	(10, '3600', '363', '', 'Servicios de creatividad, preproducción y producción de publicidad, excepto internet', '<p>Asignaciones destinadas a cubrir los gastos por dise&ntilde;o y conceptualizaci&oacute;n de campa&ntilde;as de comunicaci&oacute;n, preproducci&oacute;n, producci&oacute;n y copiado.</p>', 1, 1),
	(11, '3600', '364', '', 'Servicios de revelado de fotografías', '<p>Asignaciones destinadas a cubrir gastos por concepto de revelado o impresi&oacute;n de fotograf&iacute;as</p>', 1, 1),
	(12, '3600', '365', '', 'Servicios de la industria fílmica, del sonido y del video', '<p>Asignaciones destinadas a cubrir el costo por postproducci&oacute;n (doblaje, titulaje, subtitulaje, efectos visuales, animaci&oacute;n, edici&oacute;n, conversi&oacute;n de formato, copiado de videos, entre otros) y otros servicios para la industria f&iacute;lmica y del video (crestomat&iacute;a y servicios prestados por laboratorios f&iacute;lmicos).</p>', 1, 1),
	(13, '3600', '366', '', 'Servicio de creación y difusión de contenido exclusivamente a través de internet', '<p>Asignaciones destinadas a cubrir el gasto por creaci&oacute;n, difusi&oacute;n y transmisi&oacute;n de contenido de inter&eacute;s general o espec&iacute;fico a trav&eacute;s de internet exclusivamente</p>', 1, 1),
	(14, '3600', '369', '', 'Otros servicios de información', '<p>Asignaciones destinadas a cubrir el costo de la contrataci&oacute;n de servicios profesionales con personas f&iacute;sicas o morales, por concepto de monitoreo de informaci&oacute;n en medios masivos de comunicaci&oacute;n, de las actividades de los entes p&uacute;blicos, que no se encuentren comprendidas en las dem&aacute;s partidas de este Cap&iacute;tulo.</p>', 1, 1),
	(15, '3600', '369', '36901', 'Servicios relacionados con monitoreo de información en medios masivos', '<p>Asignaciones destinadas a cubrir el costo de la contrataci&oacute;n de servicios profesionales con personas f&iacute;sicas o morales, por concepto de monitoreo de informaci&oacute;n en medios masivos de comunicaci&oacute;n, de las actividades de las dependencias y entidades, que no se encuentren comprendidas en las dem&aacute;s partidas de este Cap&iacute;tulo.</p>', 1, 1);
/*!40000 ALTER TABLE `cat_presupuesto_conceptos` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_procedimientos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_procedimientos` DISABLE KEYS */;
INSERT INTO `cat_procedimientos` (`id_procedimiento`, `nombre_procedimiento`, `active`) VALUES
	(1, 'Licitación pública', 1),
	(2, 'Adjudicación directa', 1),
	(3, 'Invitación a cuando menos tres proveedores (restringida)', 1);
/*!40000 ALTER TABLE `cat_procedimientos` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_servicios_categorias: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_servicios_categorias` DISABLE KEYS */;
INSERT INTO `cat_servicios_categorias` (`id_servicio_categoria`, `id_servicio_clasificacion`, `nombre_servicio_categoria`, `titulo_grafica`, `color_grafica`, `active`) VALUES
	(1, 1, 'Radio', 'Radio', '#004858', 1),
	(2, 1, 'Televisión', 'TV', '#699DB3', 1),
	(3, 1, 'Cine', 'Cine', '#756EA0', 1),
	(4, 1, 'Medios impresos', 'Medios', '#13B6E3', 1),
	(5, 1, 'Medios complementarios', 'Complementarios', '#1287C1', 1),
	(6, 1, 'Internet', 'Internet', '#81CEF3', 1),
	(7, 2, 'Producción de contenidos', 'Contenidos', '#08AFBC', 1),
	(8, 2, 'Análisis, estudios y métricas', 'Estudios', '#BBE4E7', 1),
	(9, 2, 'Impresiones', 'Impresiones', '#51B27C', 1),
	(10, 2, 'Streaming', 'Streaming', '#A2CCAE', 1);
/*!40000 ALTER TABLE `cat_servicios_categorias` ENABLE KEYS */;


-- Volcando datos para la tabla rusiainf_inai.cat_servicios_clasificacion: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_servicios_clasificacion` DISABLE KEYS */;
INSERT INTO `cat_servicios_clasificacion` (`id_servicio_clasificacion`, `nombre_servicio_clasificacion`, `active`) VALUES
	(1, 'Servicios de difusión en medios de comunicación', 1),
	(2, 'Otros servicios asociados a la comunicación ', 1);
/*!40000 ALTER TABLE `cat_servicios_clasificacion` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_servicios_subcategorias: ~68 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_servicios_subcategorias` DISABLE KEYS */;
INSERT INTO `cat_servicios_subcategorias` (`id_servicio_subcategoria`, `id_servicio_categoria`, `nombre_servicio_subcategoria`, `active`) VALUES
	(1, 3, 'Cine', 1),
	(2, 6, 'Medios Digitales', 1),
	(3, 6, 'Otro tipo de difusión por Internet', 1),
	(4, 6, 'Redes sociales y buscadores', 1),
	(5, 5, 'Artículos promocionales', 1),
	(6, 5, 'Cenefas', 1),
	(7, 5, 'Dovelas', 1),
	(8, 5, 'Mobiliario urbano', 1),
	(9, 5, 'Muros o bardas', 1),
	(10, 5, 'Otros medios complementarios', 1),
	(11, 5, 'Parabuses', 1),
	(12, 5, 'Publicidad móvil', 1),
	(13, 5, 'Rótulos o anuncios exteriores', 1),
	(14, 5, 'Tarjetas telefónicas', 1),
	(15, 5, 'Vallas', 1),
	(16, 5, 'Videobus', 1),
	(17, 4, 'Diarios Editados en el D.F.', 1),
	(18, 4, 'Diarios Editados en los Estados', 1),
	(19, 4, 'Encartes', 1),
	(20, 4, 'Medios Impresos Internacionales', 1),
	(21, 4, 'Otros medios impresos', 1),
	(22, 4, 'Revistas', 1),
	(23, 4, 'Suplementos', 1),
	(24, 1, 'Cadenas radiofónicas', 1),
	(25, 1, 'Radiodifusoras comunitarias e indígenas', 1),
	(26, 1, 'Radiodifusoras internacionales', 1),
	(27, 1, 'Radiodifusoras locales', 1),
	(28, 2, 'Publicidad virtual', 1),
	(29, 2, 'Televisión abierta local', 1),
	(30, 2, 'Televisión abierta nacional', 1),
	(31, 2, 'Televisión internacional', 1),
	(32, 2, 'Televisión restringida', 1),
	(33, 8, 'Estudios (Pre-Campaña, Post-Campaña)', 1),
	(34, 8, 'Plan de medios', 1),
	(35, 9, 'Carteles o Pósters', 1),
	(36, 9, 'Folletos, Dípticos o Trípticos', 1),
	(37, 9, 'Mantas o Lonas', 1),
	(38, 9, 'Otro tipo de materiales impresos', 1),
	(39, 7, 'Copiado', 1),
	(40, 7, 'Diseño y servicios publicitarios', 1),
	(41, 7, 'Otro tipo de servicio de producción', 1),
	(42, 7, 'Post-Producción', 1),
	(43, 7, 'Producción', 1),
	(44, 5, 'Espectaculares', 1),
	(45, 10, 'Streaming', 1);
/*!40000 ALTER TABLE `cat_servicios_subcategorias` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_servicios_unidades: ~169 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_servicios_unidades` DISABLE KEYS */;

INSERT INTO `cat_servicios_unidades` (`id_servicio_unidad`, `id_servicio_subcategoria`, `nombre_servicio_unidad`, `active`) VALUES
(1, 1, 'Cine minutos', 1),
(2, 1, 'Otro formato', 1),
(3, 2, 'Banner', 1),
(4, 2, 'Otro formato', 1),
(5, 3, 'Unidad aplicable', 1),
(6, 4, 'Anuncio de video en YouTube;  Página', 1),
(7, 4, 'Contenido o publicación difundida en Facebook', 1),
(8, 4, 'Cuenta o tuit promovido en Twitter', 1),
(9, 4, 'Anuncios de imagen', 1),
(10, 4, 'Video o carrusel de imágenes en Instagram', 1),
(11, 4, 'Actualización de contenido promocionada en LinkedIn', 1),
(12, 4, 'Contenido promovido en Adwords de Google', 1),
(13, 4, 'Contenido promovido en Anuncios de Bing', 1),
(14, 4, 'Otro', 1),
(15, 5, 'Pieza', 1),
(16, 44, 'Otro formato', 1),
(17, 6, 'Cartelera doble', 1),
(18, 6, 'Cartelera sencilla', 1),
(19, 6, 'Otro formato', 1),
(20, 7, 'Cartelera doble', 1),
(21, 7, 'Cartelera sencilla', 1),
(22, 7, 'Otro formato', 1),
(23, 44, 'Cartelera doble', 1),
(24, 44, 'Cartelera sencilla', 1),
(25, 8, 'Cartelera doble', 1),
(26, 8, 'Cartelera sencilla', 1),
(27, 8, 'Otro formato', 1),
(28, 9, 'Cartelera doble', 1),
(29, 9, 'Cartelera sencilla', 1),
(30, 9, 'Otro formato', 1),
(31, 10, 'Unidades de producto', 1),
(32, 10, 'Unidades de servicio', 1),
(33, 10, 'Otro formato', 1),
(34, 11, 'Cartelera doble', 1),
(35, 11, 'Cartelera sencilla', 1),
(36, 11, 'Otro formato', 1),
(37, 12, 'Cartelera doble', 1),
(38, 12, 'Cartelera sencilla', 1),
(39, 12, 'Otro formato', 1),
(40, 13, 'Cartelera doble', 1),
(41, 14, 'Millar', 1),
(42, 14, 'Otro formato', 1),
(43, 14, 'Unidades de producto', 1),
(44, 15, 'Cartelera doble', 1),
(45, 15, 'Cartelera sencilla', 1),
(46, 15, 'Otro formato', 1),
(47, 16, 'Cartelera doble', 1),
(48, 16, 'Cartelera sencilla', 1),
(49, 16, 'Otro formato', 1),
(50, 17, '1/2 plana', 1),
(51, 17, '1/4 plana', 1),
(52, 17, '1/8 plana', 1),
(53, 17, 'Cintillo', 1),
(54, 17, 'Plana', 1),
(55, 17, 'Robaplana', 1),
(56, 17, 'Otro formato', 1),
(57, 18, '1/2 plana', 1),
(58, 18, '1/4 plana', 1),
(59, 18, '1/8 plana', 1),
(60, 18, 'Cintillo', 1),
(61, 18, 'Plana', 1),
(62, 18, 'Robaplana', 1),
(63, 18, 'Otro formato', 1),
(64, 19, 'Unidades de servicio', 1),
(65, 19, 'Otro formato', 1),
(66, 20, '1/2 plana', 1),
(67, 20, '1/4 plana', 1),
(68, 20, '1/8 plana', 1),
(69, 20, 'Cintillo', 1),
(70, 20, 'Plana', 1),
(71, 20, 'Robaplana', 1),
(72, 20, 'Otro formato', 1),
(73, 21, 'Unidad aplicable', 1),
(74, 22, '1/2 plana', 1),
(75, 22, '1/4 plana', 1),
(76, 22, '1/8 plana', 1),
(77, 22, '2a. Forros', 1),
(78, 22, '3a. Forros', 1),
(79, 22, '4a. Forros', 1),
(80, 22, 'Cintillo', 1),
(81, 22, 'Plana', 1),
(82, 22, 'Robaplana', 1),
(83, 22, 'Otro formato', 1),
(84, 23, 'Unidades de servicio', 1),
(85, 23, 'Otro formato', 1),
(86, 24, 'Cápsula 1 min.', 1),
(87, 24, 'Cápsula 5 min.', 1),
(88, 24, 'Mención', 1),
(89, 24, 'Otro formato', 1),
(90, 24, 'Spot de 20 seg.', 1),
(91, 24, 'Spot de 30 seg.', 1),
(92, 25, 'Cápsula 1 min.', 1),
(93, 25, 'Cápsula 5 min.', 1),
(94, 25, 'Mención', 1),
(95, 25, 'Otro formato', 1),
(96, 25, 'Spot de 20 seg.', 1),
(97, 25, 'Spot de 30 seg.', 1),
(98, 26, 'Cápsula 1 min.', 1),
(99, 26, 'Cápsula 5 min.', 1),
(100, 26, 'Mención', 1),
(101, 26, 'Otro formato', 1),
(102, 26, 'Spot de 20 seg.', 1),
(103, 26, 'Spot de 30 seg.', 1),
(104, 27, 'Cápsula 1 min.', 1),
(105, 27, 'Cápsula 5 min.', 1),
(106, 27, 'Mención', 1),
(107, 27, 'Otro formato', 1),
(108, 27, 'Spot de 20 seg.', 1),
(109, 27, 'Spot de 30 seg.', 1),
(110, 28, 'Cápsula 1 min.', 1),
(111, 28, 'Cápsula 5 min.', 1),
(112, 28, 'Mención', 1),
(113, 28, 'Otro formato', 1),
(114, 28, 'Spot de 20 seg.', 1),
(115, 28, 'Spot de 30 seg.', 1),
(116, 29, 'Cápsula 1 min.', 1),
(117, 29, 'Cápsula 5 min.', 1),
(118, 29, 'Mención', 1),
(119, 29, 'Otro formato', 1),
(120, 29, 'Spot de 20 seg.', 1),
(121, 29, 'Spot de 30 seg.', 1),
(122, 30, 'Cápsula 1 min.', 1),
(123, 30, 'Cápsula 5 min.', 1),
(124, 30, 'Mención', 1),
(125, 30, 'Otro formato', 1),
(126, 30, 'Spot de 20 seg.', 1),
(127, 30, 'Spot de 30 seg.', 1),
(128, 31, 'Cápsula 1 min.', 1),
(129, 31, 'Cápsula 5 min.', 1),
(130, 31, 'Mención', 1),
(131, 31, 'Otro formato', 1),
(132, 31, 'Spot de 20 seg.', 1),
(133, 31, 'Spot de 30 seg.', 1),
(134, 32, 'Cápsula 1 min.', 1),
(135, 32, 'Cápsula 5 min.', 1),
(136, 32, 'Mención', 1),
(137, 32, 'Otro formato', 1),
(138, 32, 'Spot de 20 seg.', 1),
(139, 32, 'Spot de 30 seg.', 1),
(140, 33, 'Otro formato', 1),
(141, 33, 'Unidades de producto', 1),
(142, 33, 'Unidades de servicio', 1),
(143, 34, 'Plan de medios', 1),
(144, 35, 'Pieza', 1),
(145, 36, 'Pieza', 1),
(146, 37, 'Pieza', 1),
(147, 38, 'Pieza', 1),
(148, 39, 'Otro formato', 1),
(149, 39, 'Unidades de producto', 1),
(150, 39, 'Unidades de servicio', 1),
(151, 40, 'Otro formato', 1),
(152, 40, 'Prod. spot radio 20 seg', 1),
(153, 40, 'Prod. spot radio 30 seg', 1),
(154, 40, 'Prod. spot tv 20 seg.', 1),
(155, 40, 'Prod. spot tv 30 seg', 1),
(156, 41, 'Unidades de producto', 1),
(157, 41, 'Unidades de servicio', 1),
(158, 41, 'Otro formato', 1),
(159, 42, 'Otro formato', 1),
(160, 42, 'Prod. spot radio 20 seg', 1),
(161, 42, 'Prod. spot radio 30 seg', 1),
(162, 42, 'Prod. spot tv 20 seg', 1),
(163, 42, 'Prod. spot tv 30 seg', 1),
(164, 43, 'Otro formato', 1),
(165, 43, 'Prod. spot radio 20 seg', 1),
(166, 43, 'Prod. spot radio 30 seg', 1),
(167, 43, 'Prod. spot tv 20 seg', 1),
(168, 43, 'Prod. spot tv 30 seg', 1),
(169, 45, 'Minutos', 1);


/*!40000 ALTER TABLE `cat_servicios_unidades` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_so_atribucion: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_so_atribucion` DISABLE KEYS */;
INSERT INTO `cat_so_atribucion` (`id_so_atribucion`, `nombre_so_atribucion`, `active`) VALUES
	(1, 'Contratante', 1),
	(2, 'Solicitante', 1),
	(3, 'Contratante y solicitante', 1);
/*!40000 ALTER TABLE `cat_so_atribucion` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_so_estados: ~34 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_so_estados` DISABLE KEYS */;
INSERT INTO `cat_so_estados` (`id_so_estado`, `nombre_so_estado`, `codigo_so_estado`, `active`) VALUES
	(1, 'Aguascalientes', 'mx-ag', 1),
	(2, 'Baja California', 'mx-bc', 1),
	(3, 'Baja California Sur', 'mx-bs', 1),
	(4, 'Campeche', 'mx-cm', 1),
	(5, 'Coahuila', 'mx-co', 1),
	(6, 'Colima', 'mx-cl', 1),
	(7, 'Chiapas', 'mx-cs', 1),
	(8, 'Chihuahua', 'mx-ch', 1),
	(9, 'Ciudad de México', 'mx-df', 1),
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
/*!40000 ALTER TABLE `cat_so_estados` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_so_ordenes_gobierno: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_so_ordenes_gobierno` DISABLE KEYS */;
INSERT INTO `cat_so_ordenes_gobierno` (`id_so_orden_gobierno`, `nombre_so_orden_gobierno`, `active`) VALUES
	(1, 'Federal', 1),
	(2, 'Estatal', 1),
	(3, 'Municipal', 1);
/*!40000 ALTER TABLE `cat_so_ordenes_gobierno` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_tiempo_tipos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_tiempo_tipos` DISABLE KEYS */;
INSERT INTO `cat_tiempo_tipos` (`id_tiempo_tipo`, `nombre_tipo_tiempo`, `active`) VALUES
	(1, 'Tiempo de Estado', 1),
	(2, 'Tiempo fiscal', 1);
/*!40000 ALTER TABLE `cat_tiempo_tipos` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_tipo_liga: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_tipo_liga` DISABLE KEYS */;
INSERT INTO `cat_tipo_liga` (`id_tipo_liga`, `tipo_liga`, `active`) VALUES
	(1, 'Referencia de Internet', 1),
	(2, 'Archivo Servidor', 1);
/*!40000 ALTER TABLE `cat_tipo_liga` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.cat_trimestres: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cat_trimestres` DISABLE KEYS */;
INSERT INTO `cat_trimestres` (`id_trimestre`, `trimestre`, `active`) VALUES
	(1, 'enero-marzo', 1),
	(2, 'abril-junio', 1),
	(3, 'julio-septiembre', 1),
	(4, 'octubre-diciembre', 1);
/*!40000 ALTER TABLE `cat_trimestres` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.sys_active: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_active` DISABLE KEYS */;
INSERT INTO `sys_active` (`id_active`, `name_active`) VALUES
	(1, 'Activo'),
	(2, 'Inactivo');
/*!40000 ALTER TABLE `sys_active` ENABLE KEYS */;

-- Volcando datos para la tabla rusiainf_inai.sys_debug: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_debug` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_debug` ENABLE KEYS */;


-- Volcando datos para la tabla rusiainf_inai.sys_logico: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sys_logico` DISABLE KEYS */;
INSERT INTO `sys_logico` (`id_logico`, `logico`, `active`) VALUES
	(1, 'Si', 1),
	(2, 'No', 1);
/*!40000 ALTER TABLE `sys_logico` ENABLE KEYS */;


-- Volcando datos para la tabla rusiainf_inai.tab_sujetos_obligados: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_sujetos_obligados` DISABLE KEYS */;
INSERT INTO `tab_sujetos_obligados` (`id_sujeto_obligado`, `id_so_atribucion`, `id_so_orden_gobierno`, `id_so_estado`, `nombre_sujeto_obligado`, `siglas_sujeto_obligado`, `url_sujeto_obligado`, `active`) VALUES
	(1, 3, 1, 33, 'Instituto Nacional de Transparencia, Acceso a la Información y Protección de Datos Personales', 'INAI', 'http://www.inai.org.mx', 1);

-- Volcando datos para la tabla rusiainf_inai.tab_servicios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_servicios` DISABLE KEYS */;
INSERT INTO `tab_servicios` (`id_servicio`, `id_servicio_clasificacion`, `id_servicio_categoria`, `id_servicio_subcategoria`, `id_servicio_unidad`, `nombre_servicio`, `active`) VALUES
	(1, 1, 3, 1, 1, 'Comercial en cine 120 Seg.', 1);
/*!40000 ALTER TABLE `tab_servicios` ENABLE KEYS */;

/*!40000 ALTER TABLE `tab_proveedores` DISABLE KEYS */;
INSERT INTO `tab_proveedores` (`id_proveedor`, `id_personalidad_juridica`, `nombre_razon_social`, `nombre_comercial`, `rfc`, `primer_apellido`, `segundo_apellido`, `nombres`, `fecha_validacion`, `area_responsable`, `periodo`, `fecha_actualizacion`, `nota`, `active`) VALUES
	(1, 2, 'Proveedor', 'Proveedor', 'Proveedor', NULL, NULL, NULL, '2016-09-20', '', 2016, '2016-11-15', NULL, 1);
/*!40000 ALTER TABLE `tab_proveedores` ENABLE KEYS */;

/*!40000 ALTER TABLE `tab_contratos` DISABLE KEYS */;
INSERT INTO `tab_contratos` (`id_contrato`, `id_procedimiento`, `id_proveedor`, `id_ejercicio`, `id_trimestre`, `id_so_contratante`, `id_so_solicitante`, `numero_contrato`, `objeto_contrato`, `descripcion_justificacion`, `fundamento_juridico`, `fecha_celebracion`, `fecha_inicio`, `fecha_fin`, `monto_contrato`, `file_contrato`, `fecha_validacion`, `area_responsable`, `periodo`, `fecha_actualizacion`, `nota`, `active`) VALUES
	(1, 1, 1, 1, 2, 1, 1, 'Sin contrato', '<p>Sin contrato</p>', '<p>Sin contrato</p>', '<p>Sin contrato</p>', '2015-12-10', '2015-12-15', '2015-12-31', 0.00, 'Ciclo_de_Vida_Proyectos.pdf', NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `tab_contratos` ENABLE KEYS */;

/*!40000 ALTER TABLE `tab_ordenes_compra` DISABLE KEYS */;
INSERT INTO `tab_ordenes_compra` (`id_orden_compra`, `id_procedimiento`, `id_proveedor`, `id_contrato`, `id_ejercicio`, `id_trimestre`, `id_so_contratante`, `id_so_solicitante`, `id_campana_aviso`, `numero_orden_compra`, `descripcion_justificacion`, `motivo_adjudicacion`, `fecha_orden`, `file_orden`, `fecha_validacion`, `area_responsable`, `periodo`, `fecha_actualizacion`, `nota`, `active`) VALUES
	(1, 2, 1, 1, 1, 2, 1, 1, 1, 'Sin orden de compra', '<p>Sin Orden de Compra</p>', '', '2015-12-18', NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `tab_ordenes_compra` ENABLE KEYS */;


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


