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
  

Fecha de actualización 
31/05/2017

1.- En el archivo compressor.php, ubicado en la ruta tpov1/plugins/d3d/compress/, en la línea 68 agregar: "$cacheDir .", con esto se cambian los permisos para crear el folder.

mkdir($cacheDir . '/js', 0777) or die($cacheDir . 'Unable to create css cache folder');


Fecha de actualización 
05/07/2017

1.- Se modifica el archivo structure.sql del módulo del administrador, ubicado en la ruta tpoadminv1/install/system/db/. Para visualizar de manera correcta los montos por partida y ejercicio 

correspondiente, se agrega una nueva vista a la base de datos, sustituyendo el query existente, y se usa en la vista-ci /pages/Presupuesto.php. Sustituir el query para mostrar el monto correcto en 

la creación de la vista: CREATE VIEW `vtab_presupuesto`

DROP TABLE IF EXISTS `vtab_presupuesto_des`;
CREATE VIEW vtab_presupuesto_des AS
SELECT ej.ejercicio AS ejercicio, con.partida AS partida, con.denominacion AS descripcion,
des.monto_presupuesto as original, des.monto_modificacion as modificaciones,
( SUM(des.monto_presupuesto) + SUM(des.monto_modificacion)) AS presupuesto,
( SELECT SUM(fglo.monto_desglose)
FROM tab_facturas fac
JOIN tab_facturas_desglose fglo ON fac.id_factura = fglo.id_factura
WHERE fac.active = 1 and fglo.active = 1 AND
fac.id_ejercicio = ej.id_ejercicio AND
fac.id_presupuesto_concepto = des.id_presupuesto_concepto ) AS ejercido
FROM tab_presupuestos_desglose des
JOIN tab_presupuestos pres ON pres.id_presupuesto = des.id_presupuesto
JOIN cat_ejercicios ej ON ej.id_ejercicio = pres.id_ejercicio
JOIN cat_presupuesto_conceptos con ON con.id_presupesto_concepto = des.id_presupuesto_concepto
GROUP BY con.denominacion, ej.ejercicio;


2.- En el archivo Graficas_model.php, ubicado en la ruta tpov1/application/models/, se modifica la forma de selección y origen de los montos correspondientes a cada ejercicio y partida, para que 

se agrupen de acuerdo al ejercicio correspondiente. 

--Comentar la línea 14 y en su lugar se agrega la siguiente línea de código: 

(select sum(z.monto_desglose) from vact_facturas as y, vact_facturas_desglose as z where y.id_factura = z.id_factura ) as monto_ejercido,".


--Se borra el código en la línea 56 y se sustituye de la siguiente manera:

(select sum(z.monto_desglose) from vact_facturas as y, vact_facturas_desglose as z, cat_ejercicios as x where y.id_factura = z.id_factura and x.id_ejercicio = y.id_ejercicio and x.ejercicio = '" . 

$ejercicio .  "') as monto_ejercido,


--Se agrega en la línea 75 del código lo siguiente:

(select sum(z.monto_desglose) from vact_facturas as y, vact_facturas_desglose as z, cat_ejercicios as x where y.id_factura = z.id_factura and y.id_presupuesto_concepto =a.id_presupuesto_concepto 

and x.id_ejercicio = y.id_ejercicio and x.ejercicio = '" . $ejercicio .  "') as monto_ejercido,


3.- En el archivo Presupuesto.php, ubicado en la ruta tpov1/application/views/pages/, se usa como base la tabla 'vtab_presupuesto_des' para verificar los montos respectivos a cada partida y 

ejercicio correspondiente. En la línea 127 del archivo, se cambia la tabla de la cual se toman los datos correspondientes para cada partida y ejercicio.

$xcrud->table('vtab_presupuesto_des');


Fecha de actualización 
21/07/2017

1.- En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, se realiza la modificación en la query de exportación para que la descarga del archivo PNT.zip se descargue. 

--Se agrega el siguiente código después de la línea 806

$sql = 'SELECT CONCAT(a.id_factura,"-",a.id_orden_compra,"-",a.id_contrato,"-",a.id_proveedor) as id_respecto_proveedor, 
(SELECT GROUP_CONCAT(procedimiento)
FROM (SELECT GROUP_CONCAT(c.nombre_procedimiento) AS procedimiento FROM tab_facturas AS a, tab_ordenes_compra AS b, cat_procedimientos AS c WHERE b.id_orden_compra > 1 AND b.id_procedimiento = 

c.id_procedimiento AND b.id_orden_compra = a.id_orden_compra UNION
SELECT GROUP_CONCAT(c.nombre_procedimiento) AS procedimiento FROM tab_facturas AS a, tab_contratos AS b, cat_procedimientos AS c WHERE b.id_contrato > 1 AND b.id_procedimiento = c.id_procedimiento 

AND b.id_contrato = a.id_contrato) proc) as procedimiento, 
e.rfc, e.nombre_razon_social as razon_social, 
(SELECT GROUP_CONCAT(razones)
FROM ( SELECT GROUP_CONCAT(b.motivo_adjudicacion) AS razones FROM tab_facturas AS a, tab_ordenes_compra AS b where b.id_orden_compra > 1 AND b.id_orden_compra = a.id_orden_compra UNION 
SELECT GROUP_CONCAT(b.descripcion_justificacion) FROM tab_facturas AS a, tab_contratos AS b where b.id_contrato > 1 AND b.id_contrato = a.id_contrato ) raz) as razones, 
e.segundo_apellido, 
(SELECT GROUP_CONCAT(fundamento)
FROM ( SELECT GROUP_CONCAT(b.descripcion_justificacion) as fundamento from  tab_facturas AS a, tab_ordenes_compra as b where b.id_orden_compra > 1 and b.id_orden_compra = a.id_orden_compra union 
select b.fundamento_juridico from  tab_facturas AS a, tab_contratos as b where b.id_contrato > 1 and b.id_contrato = a.id_contrato) fund) as fundamento, 
e.primer_apellido, e.nombres, e.nombre_comercial from tab_facturas as a, tab_proveedores as e where a.id_proveedor = e.id_proveedor';


--Se comenta la línea 1154

// $continuar = $this->gasto_x_proveedor();


--En la línea 1246 se agrega lo siguiente

/**/


--En la línea 1251 se agrega lo siguiente

/**/

