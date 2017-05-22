Actualizaciones del modulo de TPOv1, se corrigen algunas incidencias.

Fecha de actualización 
09/12/2016

1.- Corrección del filtro "Montos mayores a" de la gráfica de la sección  "Gasto por proveedores", la cual por default estaba asignada a una cantidad específica. Con este cambio el filtro toma el valor promedio de todos los registros.

	Se comentan las líneas 67, 68 y 69:
	// else {
           
	// setD3D("filtro", 150000);

	// }

Y se agrega entre la línea 122 y 125:

	if (!isset($_GET['filtro'])) {
                                   
	setD3D('filtro', $maximo);

2.- Homologación de abreviaturas "k" y "m" en las cifras destacadas referente a los montos ahí mostrados, en la sección de "Contratos y órdenes de compra". En la línea 75 del archivo "Contratos.php" ubicado en la ruta: tpov1/application/views/pages/ se cambia la letra "M" por la letra "k".

	<span class="number-display"><?php echo number_format(getD3D("indicador3"),0,',',','); ?> k</span>

3.- Corrección del catálogo de "servicios_unidades" ubicado en el archivo dummydata.sql; en la tabla "cat_servicios_unidades" se borran los registros duplicados del catálogo. 


Fecha de actualización 
09/01/2017

1.- Se eliminan los archivos con extensión .csv, dentro de la carpeta de tpov1-data. Estos archivos contienen la información temporal de los registros capturados para poder mostrar los gráficos en el módulo front de la herramienta.


Fecha de actualización 
02/02/2017

1.- Se modifica el archivo structure.sql del módulo del administrador, ubicado en la ruta tpoadminv1/install/system/db/. La modificación en la línea de código de la tabla "vtab_presupuesto", con este cambio en el módulo del sitio público en la sección "Presupuesto", los registros que se visualizan en la tabla se agruparan por ejercicio y no por clave de partida al momento de filtrar por ejercicio.

CREATE VIEW `vtab_presupuesto` AS select `b`.`partida` AS `partida`,`b`.`denominacion` AS `descripcion`,`d`.`ejercicio` AS  `ejercicio`,sum(`a`.`monto_presupuesto`) AS `original`,sum(`a`.`monto_modificacion`) AS `modificaciones`,(sum(`a`.`monto_presupuesto`) + sum(`a`.`monto_modificacion`)) AS `presupuesto`,ifnull((select sum(`f`.`monto_desglose`) from (`tab_facturas` `e` join `tab_facturas_desglose` `f`) where ((`e`.`active` = 1) and (`f`.`active` = 1) and (`e`.`id_factura` = `f`.`id_factura`) and (`e`.`id_presupuesto_concepto` = `a`.`id_presupuesto_concepto`))),0) AS `ejercido` from (((`tab_presupuestos_desglose` `a` join `cat_presupuesto_conceptos` `b`) join `tab_presupuestos` `c`) join `cat_ejercicios` `d`) where ((`a`.`active` = 1) and (`b`.`active` = 1) and (`c`.`active` = 1) and (`d`.`active` = 1) and (`a`.`id_presupuesto` = `c`.`id_presupuesto`) and (`a`.`id_presupuesto_concepto` = `b`.`id_presupesto_concepto`) and (`d`.`id_ejercicio` = `c`.`id_ejercicio`)) group by `d`.`ejercicio`,`b`.`denominacion`;
  
