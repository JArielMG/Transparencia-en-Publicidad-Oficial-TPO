Actualizaciones de la herramienta de TPOv1, en sus módulos Back-end del administrador y Front-end del Sitio público.

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

Fecha de actualización 
Cambio código 04/08/2017

Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

1.- En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/

--Cambios para los archivos descargables de la PNT.

Se elimina el código de las líneas: 76 - 77

Procedimiento de contratación:\r\n
Registro Federal de Contribuyentes\r\n

Se elimina el código de la línea: 77

Razones que justifican la elección\r\n

Se agrega el código en la línea: 77 - 78

Nombre (s)\r\n
Primer apellido\r\n

Se agrega el código en la línea: 80 - 81

Registro Federal de Contribuyentes\r\n
Procedimiento de contratación:\r\n
Se elimina el código de las líneas: 83 - 84

Primer apellido\r\n
Nombre (s)\r\n

Se agrega el código en la línea: 83

Razones que justifican la elección\r\n

Se elimina el código de las líneas: 91 hasta la 94

Presupuesto ejercido al periodo\r\n
Presupuesto total ejercido por concepto\r\n
Presupuesto modificado por concepto\r\n
Presupuesto modificado por partida\r\n

Se agrega el código en la línea: 91 - 92

Clave del concepto\r\n
Nombre del concepto\r\n

Se agrega el código en la línea: 94 - 95

Presupuesto modificado por concepto\r\n
Presupuesto total ejercido por concepto\r\n

Se modifican las líneas: 98 - 99

Antes
Nombre del concepto\r\n
Clave del concepto\r\n";
Ahora           
Presupuesto modificado por partida\r\n
Presupuesto ejercido al periodo\r\n";

Se modifica la línea: 105

Antes
Fecha de término\r\n
Ahora
Fecha de firma de contrato\r\n

Se elimina la línea: 106

Objeto del contrato\r\n

Se eliminan las líneas: 107 - 108 - 109

Número de Factura\r\n
Hipervínculo al convenio modificatorio, en su caso\r\n
Monto pagado al periodo publicado\r\n

Se agrega el código en la línea: 107

Objeto del contrato\r\n

Se agrega el código en la línea: 109

Hipervínculo al convenio modificatorio, en su caso\r\n

Se eliminan las líneas: 111 - 112 - 113

Hipervínculo a la factura\r\n
Fecha de firma de contrato\r\n
Fecha de inicio\r\n"; 

Se agrega el código en la línea: 111 - 112 - 113 - 114 - 115

Monto pagado al periodo publicado\r\n
Fecha de inicio\r\n
Fecha de término\r\n
Número de Factura\r\n
Hipervínculo a la factura\r\n";

Se agrega el código en la línea: 758 - 759 - 760 - 761 - 762

e.nombre_razon_social as razon_social,
e.nombres,
e.primer_apellido,
e.segundo_apellido,
e.rfc,

Se elimina las líneas: 777 - 778

e.rfc,
e.nombre_razon_social as razon_social,

Se modifica la línea: 778

Antes
select b.motivo_adjudicacion 
Ahora
select b.descripcion_justificacion

Se modifica la línea: 784

select b.descripcion_justificacion 
select b.fundamento_juridico

Se modifica la línea: 788

Antes
b.id_contrato = a.id_contrato), " ") as razones, 
Ahora
b.id_contrato = a.id_contrato), " ") as fundamento,

Se elimina la línea: 789

e.segundo_apellido,

Se modifica la línea: 790

Antes
select b.descripcion_justificacion
Ahora
select b.motivo_adjudicacion

Se modifica la línea: 796

Antes
select b.fundamento_juridico 
Ahora
select b.descripcion_justificacion

Se elimina las líneas: 800 - 801 - 802

b.id_contrato = a.id_contrato), " ") as fundamento, 
e.primer_apellido,
e.nombres,

Se agrega la línea: 800

b.id_contrato = a.id_contrato), " ") as razones,

Se modifican las líneas: 810 - 811

Antes
FROM (SELECT GROUP_CONCAT(c.nombre_procedimiento) AS procedimiento FROM tab_facturas AS a, tab_ordenes_compra AS b, cat_procedimientos AS c WHERE b.id_orden_compra > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_orden_compra = a.id_orden_compra UNION
 SELECT GROUP_CONCAT(c.nombre_procedimiento) AS procedimiento FROM tab_facturas AS a, tab_contratos AS b, cat_procedimientos AS c WHERE b.id_contrato > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_contrato = a.id_contrato) proc) as procedimiento, 
Ahora
FROM (SELECT GROUP_CONCAT(IFNULL(c.nombre_procedimiento, "")) AS procedimiento FROM tab_facturas AS a, tab_ordenes_compra AS b, cat_procedimientos AS c WHERE b.id_orden_compra > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_orden_compra = a.id_orden_compra UNION
SELECT GROUP_CONCAT(IFNULL(c.nombre_procedimiento, "")) AS procedimiento FROM tab_facturas AS a, tab_contratos AS b, cat_procedimientos AS c WHERE b.id_contrato > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_contrato = a.id_contrato) proc) as procedimiento, 

Se modifican las líneas: 814 - 815

Antes
FROM ( SELECT GROUP_CONCAT(b.motivo_adjudicacion) AS razones FROM tab_facturas AS a, tab_ordenes_compra AS b where b.id_orden_compra > 1 AND b.id_orden_compra = a.id_orden_compra UNION 
SELECT GROUP_CONCAT(b.descripcion_justificacion) FROM tab_facturas AS a, tab_contratos AS b where b.id_contrato > 1 AND b.id_contrato = a.id_contrato ) raz) as razones, 
Ahora
FROM ( SELECT GROUP_CONCAT(IFNULL(b.motivo_adjudicacion, "")) AS razones FROM tab_facturas AS a, tab_ordenes_compra AS b where b.id_orden_compra > 1 AND b.id_orden_compra = a.id_orden_compra UNION 
SELECT GROUP_CONCAT(IFNULL(b.descripcion_justificacion, "")) FROM tab_facturas AS a, tab_contratos AS b where b.id_contrato > 1 AND b.id_contrato = a.id_contrato ) raz) as razones, 

Se modifican las líneas: 818 - 819

Antes
FROM ( SELECT GROUP_CONCAT(b.descripcion_justificacion) as fundamento from  tab_facturas AS a, tab_ordenes_compra as b where b.id_orden_compra > 1 and b.id_orden_compra = a.id_orden_compra union 
select b.fundamento_juridico from  tab_facturas AS a, tab_contratos as b where b.id_contrato > 1 and b.id_contrato = a.id_contrato) fund) as fundamento, 
Ahora
FROM ( SELECT GROUP_CONCAT(IFNULL(b.descripcion_justificacion, "")) as fundamento from  tab_facturas AS a, tab_ordenes_compra as b where b.id_orden_compra > 1 and b.id_orden_compra = a.id_orden_compra union 
select GROUP_CONCAT(IFNULL(b.fundamento_juridico, "")) from  tab_facturas AS a, tab_contratos as b where b.id_contrato > 1 and b.id_contrato = a.id_contrato) fund) as fundamento, 

Se eliminan las líneas: 824 - 825

"Procedimiento de contratación:",
"Registro Federal de Contribuyentes",

Se elimina la línea: 825

"Razones que justifican la elección",

Se agregan las líneas: 825 -826

"Nombre (s)",
"Primer apellido",

Se agregan las líneas: 828 -829

"Registro Federal de Contribuyentes",
"Procedimiento de contratación:",

Se eliminan las líneas: 831 - 832

"Primer apellido",
"Nombre (s)",

Se agrega la línea: 831

"Razones que justifican la elección",

Se eliminan las líneas: 872 hasta 877

(select sum(b.monto_desglose) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and
a.id_presupuesto_concepto = e.id_presupuesto_concepto) as "Presupuesto ejercido al periodo",
(select sum(b.monto_desglose) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and
a.id_presupuesto_concepto = e.id_presupuesto_concepto)  as "Presupuesto total ejercido por concepto", 
(sum(e.monto_presupuesto)+sum(e.monto_modificacion)) as "Presupuesto modificado por concepto",
(sum(e.monto_presupuesto)+sum(e.monto_modificacion)) as "Presupuesto modificado por partida",

Se agregan las líneas: 872 - 873

c.capitulo as "Clave del concepto",
(select f.denominacion from cat_presupuesto_conceptos as f where f.capitulo = c.capitulo and trim(f.concepto="") and trim(f.partida="")) as "Nombre del concepto",

Se agregan las líneas: 875 - 876 - 877

(sum(e.monto_presupuesto)+sum(e.monto_modificacion)) as "Presupuesto modificado por concepto",
(select sum(b.monto_desglose) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and
a.id_presupuesto_concepto = e.id_presupuesto_concepto)  as "Presupuesto total ejercido por concepto",

Se eliminan las líneas: 880 - 881

(select f.denominacion from cat_presupuesto_conceptos as f where f.capitulo = c.capitulo and trim(f.concepto="") and trim(f.partida="")) as "Nombre del concepto",
c.capitulo as "Clave del concepto"
 
Se agregan las líneas: 880 - 881 - 882

(sum(e.monto_presupuesto)+sum(e.monto_modificacion)) as "Presupuesto modificado por partida",
(select sum(b.monto_desglose) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and
a.id_presupuesto_concepto = e.id_presupuesto_concepto and a.id_ejercicio = d.id_ejercicio ) as "Presupuesto ejercido al periodo"

Se eliminan las líneas: 901 - 902 - 903 - 904

"Presupuesto ejercido al periodo",
"Presupuesto total ejercido por concepto", 
"Presupuesto modificado por concepto",
"Presupuesto modificado por partida",
 
Se agregan las líneas: 901 - 902

"Clave del concepto",
"Nombre del concepto",

Se agregan las líneas: 904 - 905

"Presupuesto modificado por concepto",
"Presupuesto total ejercido por concepto",

Se modifican las líneas: 908 - 909

Antes
"Nombre del concepto",
"Clave del concepto");
Ahora        
"Presupuesto modificado por partida",
"Presupuesto ejercido al periodo"); 

Se eliminan las líneas: 917 - 918

b.fecha_fin as "Fecha de término", 
b.objeto_contrato as "Objeto del contrato",

Se agrega la línea: 917

b.fecha_celebracion as "Fecha de firma de contrato",

Se eliminan las líneas: 919 - 920 - 921

a.numero_factura as "Número de Factura",
(select GROUP_CONCAT(c.file_convenio," * ") from tab_convenios_modificatorios as c where c.id_contrato=b.id_contrato) as "Hipervínculo al convenio modificatorio, en su caso",
sum(e.monto_desglose) as "Monto pagado al periodo publicado",

Se agrega la línea: 919

b.objeto_contrato as "Objeto del contrato",

Se agrega la línea: 921

(select GROUP_CONCAT(c.file_convenio," * ") from tab_convenios_modificatorios as c where c.id_contrato=b.id_contrato) as "Hipervínculo al convenio modificatorio, en su caso",

Se eliminan las líneas: 923 - 924 - 925

a.file_factura_pdf as  "Hipervínculo a la factura",
b.fecha_celebracion as "Fecha de firma de contrato",
b.fecha_inicio as "Fecha de inicio"

Se agregan las líneas: 923 - 924 - 925 -926 - 927

sum(e.monto_desglose) as "Monto pagado al periodo publicado",
b.fecha_inicio as "Fecha de inicio",
b.fecha_fin as "Fecha de término", 
a.numero_factura as "Número de Factura",
a.file_factura_pdf as  "Hipervínculo a la factura"

Se eliminan las líneas: 980 - 981

"Fecha de término", 
"Objeto del contrato",

Se agrega la línea: 980

"Fecha de firma de contrato",

Se eliminan las líneas: 982 - 983 - 984

"Número de Factura",
"Hipervínculo al convenio modificatorio, en su caso",
"Monto pagado al periodo publicado",

Se agrega la línea: 982

"Objeto del contrato",

Se agrega la línea: 984

"Hipervínculo al convenio modificatorio, en su caso",

Se eliminan las líneas: 986 - 987 - 988

"Hipervínculo a la factura",
"Fecha de firma de contrato",
"Fecha de inicio");

Se agregan las líneas: 986 - 987 - 988 - 989 - 990

"Monto pagado al periodo publicado",
"Fecha de inicio",
"Fecha de término", 
"Número de Factura",
"Hipervínculo a la factura");



Fecha de actualización 
Cambio código 07/08/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, Orden correcto de las columnas en la tabla “10632” para la descarga de la PNT.

Se agrega el código desde la línea: 809 hasta la 813

e.nombre_razon_social as razon_social, 
e.nombres, 
e.primer_apellido, 
e.segundo_apellido, 
e.rfc,

Se eliminan las líneas: 817 hasta la 821

e.rfc, e.nombre_razon_social as razon_social, 
(SELECT GROUP_CONCAT(razones)
FROM ( SELECT GROUP_CONCAT(IFNULL(b.motivo_adjudicacion, "")) AS razones FROM tab_facturas AS a, tab_ordenes_compra AS b where b.id_orden_compra > 1 AND b.id_orden_compra = a.id_orden_compra UNION 
SELECT GROUP_CONCAT(IFNULL(b.descripcion_justificacion, "")) FROM tab_facturas AS a, tab_contratos AS b where b.id_contrato > 1 AND b.id_contrato = a.id_contrato ) raz) as razones, 
e.segundo_apellido,

Se elimina la línea: 820

e.primer_apellido, e.nombres, e.nombre_comercial from tab_facturas as a, tab_proveedores as e where a.id_proveedor = e.id_proveedor';

Se agregan las líneas: 820 hasta la 824

(SELECT GROUP_CONCAT(razones)
FROM ( SELECT GROUP_CONCAT(IFNULL(b.motivo_adjudicacion, "")) AS razones FROM tab_facturas AS a, tab_ordenes_compra AS b where b.id_orden_compra > 1 AND b.id_orden_compra = a.id_orden_compra UNION 
SELECT GROUP_CONCAT(IFNULL(b.descripcion_justificacion, "")) FROM tab_facturas AS a, tab_contratos AS b where b.id_contrato > 1 AND b.id_contrato = a.id_contrato ) raz) as razones, 
e.nombre_comercial 
from tab_facturas as a, tab_proveedores as e where a.id_proveedor = e.id_proveedor';


--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, Separar por año el documento “F70FXXIIIB_tabla_10633” para la descarga de la PNT.

Se modifica la línea: 877

Antes
a.id_presupuesto_concepto = e.id_presupuesto_concepto)  as "Presupuesto total ejercido por concepto", 
Ahora
a.id_presupuesto_concepto = e.id_presupuesto_concepto and b.periodo = e.periodo) as "Presupuesto total ejercido por concepto",

En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, Agregar filtros al campo de “Objeto de Contrato” para la descarga de la PNT.

Se agrega la línea: 915

//b.objeto_contrato as "Objeto del contrato",

Se modifica la línea: 920

Antes
b.objeto_contrato as "Objeto del contrato",
Ahora
REPLACE(REPLACE(REPLACE(b.objeto_contrato, ",", "&#44;"), "\r", ""), "\n", "") as "Objeto del contrato",



Fecha de actualización 
Cambio código 08/08/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, Quitar la repetición de algunos campos en los archivos de descargas para la PNT.

Se elimina el código desde la línea: 756 hasta la 806

$sql = 'select 
concat(a.id_factura,"-",a.id_orden_compra,"-",a.id_contrato,"-",a.id_proveedor) as id_respecto_proveedor, 
e.nombre_razon_social as razon_social,
e.nombres,
e.primer_apellido,
e.segundo_apellido,
e.rfc,
CONCAT((
select c.nombre_procedimiento  
from tab_ordenes_compra as b, cat_procedimientos as c
where 
b.id_orden_compra > 1 and
b.id_procedimiento = c.id_procedimiento and
b.id_orden_compra = a.id_orden_compra
union
select c.nombre_procedimiento 
from tab_contratos as b, cat_procedimientos as c
where 
b.id_contrato > 1 and
b.id_procedimiento = c.id_procedimiento and
b.id_contrato = a.id_contrato), " ") as procedimiento, 
CONCAT((
select b.descripcion_justificacion
from tab_ordenes_compra as b
where 
b.id_orden_compra > 1 and
b.id_orden_compra = a.id_orden_compra
union
select b.fundamento_juridico 
from tab_contratos as b
where 
b.id_contrato > 1 and
b.id_contrato = a.id_contrato), " ") as fundamento, 
CONCAT((
select b.motivo_adjudicacion 
from tab_ordenes_compra as b
where 
b.id_orden_compra > 1 and
b.id_orden_compra = a.id_orden_compra
union
select b.descripcion_justificacion 
from tab_contratos as b
where 
b.id_contrato > 1 and
b.id_contrato = a.id_contrato), " ") as razones, 
e.nombre_comercial
from 
tab_facturas as a,
tab_proveedores as e
where
a.id_proveedor = e.id_proveedor';

Se modifican las líneas: 765 - 766 -767 - 768 - 769 - 770

Antes
FROM (SELECT GROUP_CONCAT(IFNULL(c.nombre_procedimiento, "")) AS procedimiento FROM tab_facturas AS a, tab_ordenes_compra AS b, cat_procedimientos AS c WHERE b.id_orden_compra > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_orden_compra = a.id_orden_compra UNION
SELECT GROUP_CONCAT(IFNULL(c.nombre_procedimiento, "")) AS procedimiento FROM tab_facturas AS a, tab_contratos AS b, cat_procedimientos AS c WHERE b.id_contrato > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_contrato = a.id_contrato) proc) as procedimiento, 
(SELECT GROUP_CONCAT(fundamento)
FROM ( SELECT GROUP_CONCAT(IFNULL(b.descripcion_justificacion, "")) as fundamento from  tab_facturas AS a, tab_ordenes_compra as b where b.id_orden_compra > 1 and b.id_orden_compra = a.id_orden_compra union 
select GROUP_CONCAT(IFNULL(b.fundamento_juridico, "")) from  tab_facturas AS a, tab_contratos as b where b.id_contrato > 1 and b.id_contrato = a.id_contrato) fund) as fundamento, 
(SELECT GROUP_CONCAT(razones)
FROM ( SELECT GROUP_CONCAT(IFNULL(b.motivo_adjudicacion, "")) AS razones FROM tab_facturas AS a, tab_ordenes_compra AS b where b.id_orden_compra > 1 AND b.id_orden_compra = a.id_orden_compra UNION 
SELECT GROUP_CONCAT(IFNULL(b.descripcion_justificacion, "")) FROM tab_facturas AS a, tab_contratos AS b where b.id_contrato > 1 AND b.id_contrato = a.id_contrato ) raz) as razones, 
Ahora
FROM (SELECT GROUP_CONCAT( DISTINCT IFNULL(c.nombre_procedimiento, "")) AS procedimiento FROM tab_facturas AS a, tab_ordenes_compra AS b, cat_procedimientos AS c WHERE b.id_orden_compra > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_orden_compra = a.id_orden_compra group by c.nombre_procedimiento UNION
SELECT GROUP_CONCAT( DISTINCT IFNULL(c.nombre_procedimiento, "")) AS procedimiento FROM tab_facturas AS a, tab_contratos AS b, cat_procedimientos AS c WHERE b.id_contrato > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_contrato = a.id_contrato group by c.nombre_procedimiento) proc) as procedimiento, 
(SELECT GROUP_CONCAT(fundamento)FROM ( SELECT GROUP_CONCAT( DISTINCT IFNULL(b.descripcion_justificacion, "")) as fundamento from  tab_facturas AS a, tab_ordenes_compra as b where b.id_orden_compra > 1 and b.id_orden_compra = a.id_orden_compra group by b.descripcion_justificacion union 
select GROUP_CONCAT( DISTINCT IFNULL(b.fundamento_juridico, "")) from  tab_facturas AS a, tab_contratos as b where b.id_contrato > 1 and b.id_contrato = a.id_contrato group by b.fundamento_juridico) fund) as fundamento, 
(SELECT GROUP_CONCAT(razones) FROM ( SELECT GROUP_CONCAT( DISTINCT IFNULL(b.motivo_adjudicacion, "")) AS razones FROM tab_facturas AS a, tab_ordenes_compra AS b where b.id_orden_compra > 1 AND b.id_orden_compra = a.id_orden_compra group by b.motivo_adjudicacion UNION 
SELECT GROUP_CONCAT( DISTINCT IFNULL(b.descripcion_justificacion, "")) FROM tab_facturas AS a, tab_contratos AS b where b.id_contrato > 1 AND b.id_contrato = a.id_contrato group by b.descripcion_justificacion ) raz) as razones, 
 


Fecha de actualización 
Cambio código 14/08/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, Cambios en los archivos de descargas para la PNT.

Se agrega en la línea: 756

/*

Se modifican las líneas: 764 - 765 - 766 -767 - 768

Antes
FROM (SELECT GROUP_CONCAT( DISTINCT IFNULL(c.nombre_procedimiento, "")) AS procedimiento FROM tab_facturas AS a, tab_ordenes_compra AS b, cat_procedimientos AS c WHERE b.id_orden_compra > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_orden_compra = a.id_orden_compra group by c.nombre_procedimiento UNION
SELECT GROUP_CONCAT( DISTINCT IFNULL(c.nombre_procedimiento, "")) AS procedimiento FROM tab_facturas AS a, tab_contratos AS b, cat_procedimientos AS c WHERE b.id_contrato > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_contrato = a.id_contrato group by c.nombre_procedimiento) proc) as procedimiento, 
(SELECT GROUP_CONCAT(fundamento)FROM ( SELECT GROUP_CONCAT( DISTINCT IFNULL(b.descripcion_justificacion, "")) as fundamento from  tab_facturas AS a, tab_ordenes_compra as b where b.id_orden_compra > 1 and b.id_orden_compra = a.id_orden_compra group by b.descripcion_justificacion union 
select GROUP_CONCAT( DISTINCT IFNULL(b.fundamento_juridico, "")) from  tab_facturas AS a, tab_contratos as b where b.id_contrato > 1 and b.id_contrato = a.id_contrato group by b.fundamento_juridico) fund) as fundamento, 
(SELECT GROUP_CONCAT(razones) FROM ( SELECT GROUP_CONCAT( DISTINCT IFNULL(b.motivo_adjudicacion, "")) AS razones FROM tab_facturas AS a, tab_ordenes_compra AS b where b.id_orden_compra > 1 AND b.id_orden_compra = a.id_orden_compra group by b.motivo_adjudicacion UNION 
SELECT GROUP_CONCAT( DISTINCT IFNULL(b.descripcion_justificacion, "")) FROM tab_facturas AS a, tab_contratos AS b where b.id_contrato > 1 AND b.id_contrato = a.id_contrato group by b.descripcion_justificacion ) raz) as razones, 
Ahora
FROM (SELECT GROUP_CONCAT( DISTINCT IFNULL(c.nombre_procedimiento, "")) AS procedimiento FROM tab_facturas AS a, tab_contratos AS b, tab_ordenes_compra AS b2, cat_procedimientos AS c WHERE b.id_contrato > 1 AND b.id_procedimiento = c.id_procedimiento AND b.id_contrato = a.id_contrato AND b2.id_orden_compra > 1 AND b2.id_procedimiento = b.id_procedimiento AND b2.id_orden_compra = a.id_orden_compra GROUP BY c.nombre_procedimiento) proc) as procedimiento, 
(SELECT GROUP_CONCAT(fundamento)FROM ( SELECT GROUP_CONCAT( DISTINCT IFNULL(b.descripcion_justificacion, "")) as fundamento from  tab_facturas AS a, tab_ordenes_compra as b where b.id_orden_compra > 1 and b.id_orden_compra = a.id_orden_compra group by b.descripcion_justificacion union select GROUP_CONCAT( DISTINCT IFNULL(b.fundamento_juridico, "")) from  tab_facturas AS a, tab_contratos as b where b.id_contrato > 1 and b.id_contrato = a.id_contrato group by b.fundamento_juridico) fund) as fundamento, 
(SELECT GROUP_CONCAT(razones) FROM ( SELECT GROUP_CONCAT( DISTINCT IFNULL(b.motivo_adjudicacion, "")) AS razones FROM tab_facturas AS a, tab_ordenes_compra AS b where b.id_orden_compra > 1 AND b.id_orden_compra = a.id_orden_compra group by b.motivo_adjudicacion UNION 
SELECT GROUP_CONCAT( DISTINCT IFNULL(b.descripcion_justificacion, "")) FROM tab_facturas AS a, tab_contratos AS b where b.id_contrato > 1 AND b.id_contrato = a.id_contrato group by b.descripcion_justificacion ) raz) as razones, 

Se agrega el código desde la línea: 771 hasta la 789

 */

$sql = 'SELECT CONCAT(a.id_factura,"-",a.id_orden_compra,"-",a.id_contrato,"-",a.id_proveedor) as id_respecto_proveedor, 
e.nombre_razon_social as razon_social, 
e.nombres, 
e.primer_apellido, 
e.segundo_apellido, 
e.rfc, 
p.procedimiento,
f.fundamento,
r.razones,
e.nombre_comercial 
FROM tab_facturas AS a, tab_proveedores AS e,
( SELECT DISTINCT IFNULL(fundamento_juridico, "") AS fundamento, id_contrato FROM tab_contratos WHERE id_contrato > 1 ) AS f,
( SELECT DISTINCT IFNULL(descripcion_justificacion, "") AS razones, id_orden_compra FROM tab_ordenes_compra AS b WHERE b.id_orden_compra > 1 ) AS r,
( SELECT DISTINCT IFNULL(p.nombre_procedimiento, "") AS procedimiento, c.id_contrato
FROM tab_contratos AS c, tab_ordenes_compra AS o, cat_procedimientos AS p 
WHERE c.id_contrato > 1 AND p.id_procedimiento = c.id_procedimiento AND o.id_procedimiento = p.id_procedimiento AND o.id_orden_compra > 1 ) AS p
WHERE a.id_proveedor = e.id_proveedor AND f.id_contrato = a.id_contrato AND r.id_orden_compra = a.id_orden_compra AND p.id_contrato = a.id_contrato';

Se modifica la línea: 886

Antes
concat(a.id_factura,"-",a.id_orden_compra,"-",a.id_contrato,"-",a.id_proveedor) as id_respecto_contrato, 
Ahora
concat(IFNULL(a.id_factura, ""), "-", IFNULL(a.id_orden_compra, ""), "-", IFNULL( a.id_contrato, "" ), "-", IFNULL( a.id_proveedor, "" ) ) as id_respecto_contrato, 
Se modifica la línea: 907

Antes
concat(a.id_factura,"-",a.id_orden_compra,"-",a.id_contrato,"-",a.id_proveedor), 
Ahora
concat(IFNULL(a.id_factura, ""), "-", IFNULL(a.id_orden_compra, ""), "-", IFNULL( a.id_contrato, "" ), "-", IFNULL( a.id_proveedor, "" ) ), 

Se modifica la línea: 916

Antes
b.fecha_inicio
Ahora
b.fecha_inicio';

Se agrega en la línea: 917

/*

Se modifica la línea: 920

Antes
concat(a.id_factura,"-",a.id_orden_compra,"-",a.id_contrato,"-",a.id_proveedor) as id_respecto_contrato, 
Ahora
concat(IFNULL(a.id_factura, ""), "-", IFNULL(a.id_orden_compra, ""), "-", IFNULL( a.id_contrato, "" ), "-", IFNULL( a.id_proveedor, "" ) ) as id_respecto_contrato, 

Se modifica la línea: 941

Antes
concat(a.id_factura,"-",a.id_orden_compra,"-",a.id_contrato,"-",a.id_proveedor), 
Ahora
concat(IFNULL(a.id_factura, ""), "-", IFNULL(a.id_orden_compra, ""), "-", IFNULL( a.id_contrato, "" ), "-", IFNULL( a.id_proveedor, "" ) ), 

Se modifica la línea: 941

Antes
b.fecha_orden';
Ahora
b.fecha_orden';*/
   


Fecha de actualización 
Cambio código 15/08/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, Cambio de orden de columnas en la tabla “10632”, para la descarga de la PNT.

Se modifica la línea: 781

Antes
r.razones,
Ahora
REPLACE(r.razones, "<!-- [if !supportLists]-->·         <!--[endif]-->", "") AS razones,

Se elimina el código desde la línea: 807 hasta la 837

 /*
$sql = 'select 
concat(a.id_factura,"-",a.id_orden_compra,"-",a.id_contrato,"-",a.id_proveedor) as id_respecto_presupuesto, 
c.partida as "Partida genérica",
sum(b.monto_desglose) as "Presupuesto ejercido al periodo",
sum(b.monto_desglose) as "Presupuesto total ejercido por concepto", 
sum(e.monto_modificacion) as "Presupuesto modificado por concepto",
sum(e.monto_modificacion) as "Presupuesto modificado por partida",
sum(e.monto_presupuesto) as "Presupuesto asignado por concepto",
d.denominacion as "Denominación de cada partida",
(sum(e.monto_presupuesto) + sum(e.monto_modificacion))"Presupuesto total asignado a cada partida",
c.descripcion  as "Nombre del concepto",
c.concepto as "Clave del concepto"
from 
tab_facturas as a,
tab_facturas_desglose as b,
cat_presupuesto_conceptos as c,
tab_presupuestos as d,
tab_presupuestos_desglose as e
where
a.id_factura = b.id_factura and
a.id_presupuesto_concepto = c.id_presupesto_concepto and
a.id_presupuesto_concepto = e.id_presupuesto_concepto and
e.id_presupuesto_concepto = a.id_presupuesto_concepto 
group by 
concat(a.id_factura,"-",a.id_orden_compra,"-",a.id_contrato,"-",a.id_proveedor),
c.partida,
d.denominacion,
c.descripcion,
c.concepto';
*/

Se modifican las líneas: 813 - 814 - 815
Antes
sum(e.monto_presupuesto) as "Presupuesto asignado por concepto",
(sum(e.monto_presupuesto)+sum(e.monto_modificacion)) as "Presupuesto modificado por concepto",
(select sum(b.monto_desglose) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and
Ahora
sum(IFNULL(e.monto_presupuesto, 0)) as "Presupuesto asignado por concepto",
(sum(IFNULL(e.monto_presupuesto, 0))+sum(IFNULL(e.monto_modificacion, 0))) as "Presupuesto modificado por concepto",
(select sum(IFNULL(b.monto_desglose, 0)) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and

Se modifican las líneas: 818 - 819 - 820

Antes
(sum(e.monto_presupuesto)) as "Presupuesto total asignado a cada partida",
(sum(e.monto_presupuesto)+sum(e.monto_modificacion)) as "Presupuesto modificado por partida",
(select sum(b.monto_desglose) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and
Ahora
(sum(IFNULL(e.monto_presupuesto, 0))) as "Presupuesto total asignado a cada partida",
(sum(IFNULL(e.monto_presupuesto, 0))+sum(IFNULL(e.monto_modificacion, 0))) as "Presupuesto modificado por partida",
(select sum(IFNULL(b.monto_desglose, 0)) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and

Se modifica la línea: 885

Antes
b.fecha_inicio';
Ahora
b.fecha_inicio


Se elimina la línea: 886

/* 

Se agrega el código desde la línea: 889 hasta la 917

b.fecha_orden as "Fecha de firma de contrato",
b.numero_orden_compra as  "Número o referencia de identificación del contrato",
b.descripcion_justificacion as "Objeto del contrato",
"" as "Hipervínculo al contrato firmado",
"" as "Hipervínculo al convenio modificatorio, en su caso",
0 as  "Monto total del contrato",
sum(e.monto_desglose) as "Monto pagado al periodo publicado",
b.fecha_orden as "Fecha de inicio",
"" as "Fecha de término", 
a.numero_factura as "Número de Factura",
a.file_factura_pdf as  "Hipervínculo a la factura"
from 
tab_facturas as a,
tab_facturas_desglose as e,
tab_ordenes_compra as b
where
a.id_factura = e.id_factura and
a.id_orden_compra = b.id_orden_compra and
a.id_orden_compra > 1
group by 
concat(IFNULL(a.id_factura, ""), "-", IFNULL(a.id_orden_compra, ""), "-", IFNULL( a.id_contrato, "" ), "-", IFNULL( a.id_proveedor, "" ) ), 
b.descripcion_justificacion,
b.numero_orden_compra,
a.numero_factura,
a.file_factura_pdf,
b.fecha_orden,
b.fecha_orden';
/*
concat(IFNULL(a.id_factura, ""), "-", IFNULL(a.id_orden_compra, ""), "-", IFNULL( a.id_contrato, "" ), "-", IFNULL( a.id_proveedor, "" ) ) as id_respecto_contrato, 

Se modifica la línea: 944

Antes
b.fecha_orden';*/
Ahora
b.fecha_orden';

Se agrega la línea: 945

/**/




Fecha de actualización 
Cambio código 16/08/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, ajuste para la tabla “10632” para valores nulos en los archivos de la descarga de la PNT.

Se modifica la línea: 781

Antes
REPLACE(r.razones, "<!-- [if !supportLists]-->·         <!--[endif]-->", "") AS razones,
Ahora
IFNULL(REPLACE(r.razones, "<!-- [if !supportLists]-->·         <!--[endif]-->", ""), "") AS razones,

Se modifica la línea: 816

Antes
a.id_presupuesto_concepto = e.id_presupuesto_concepto and b.periodo = e.periodo) as "Presupuesto total ejercido por concepto", 
Ahora
a.id_presupuesto_concepto = c.id_presupuesto_concepto and b.periodo = e.periodo) as "Presupuesto total ejercido por concepto",

En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, Agregar fecha_fin y monto_contratado en la tabla “10656”, a través del contrato relacionado con la orden de compra, para la descarga de la PNT.

Se modifican las líneas: 893 - 894

Antes
"" as "Hipervínculo al convenio modificatorio, en su caso",
0 as  "Monto total del contrato",
Ahora
(select GROUP_CONCAT( IFNULL(c.file_convenio, "") ," * ") from tab_convenios_modificatorios as c where c.id_contrato=b.id_contrato) as "Hipervínculo al convenio modificatorio, en su caso",
IFNULL(c.monto_contrato, 0) as  "Monto total del contrato",

Se modifica la línea: 897

Antes
"" as "Fecha de término",
Ahora
IFNULL(c.fecha_fin, "") as "Fecha de término",

Agregar en la línea: 904

tab_contratos as c

Se modifica la línea: 908
Antes
a.id_orden_compra > 1
Ahora
a.id_orden_compra > 1 and

Agregar en la línea: 909

b.id_contrato = c.id_contrato



Fecha de actualización 
Cambio código 17/08/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, corregir error en importación, para la descarga de la PNT.

Se modifica la línea: 816

Antes
a.id_presupuesto_concepto = c.id_presupuesto_concepto and b.periodo = e.periodo) as "Presupuesto total ejercido por concepto", 
Ahora
a.id_presupuesto_concepto = e.id_presupuesto_concepto and b.periodo = e.periodo) as "Presupuesto total ejercido por concepto",



Fecha de actualización 
Cambio código 18/08/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, Cambio en segunda parte de la tabla “10656”, aquí en lugar de contratos se usa las ordenes_compra, en los archivos de la descarga de la PNT.

Se modifica la línea: 781

Antes
IFNULL(REPLACE(r.razones, "<!-- [if !supportLists]-->·         <!--[endif]-->", ""), "") AS razones,
Ahora
r.razones,

Se modifican las líneas: 784 - 785

Antes
( SELECT DISTINCT IFNULL(fundamento_juridico, "") AS fundamento, id_contrato FROM tab_contratos WHERE id_contrato > 1 ) AS f,
( SELECT DISTINCT IFNULL(descripcion_justificacion, "") AS razones, id_orden_compra FROM tab_ordenes_compra AS b WHERE b.id_orden_compra > 1 ) AS r,
Ahora
( SELECT DISTINCT IFNULL(fundamento_juridico, "") AS fundamento, id_contrato FROM tab_contratos ) AS f,
( SELECT DISTINCT IFNULL(descripcion_justificacion, "") AS razones, id_orden_compra FROM tab_ordenes_compra AS b  ) AS r,

Se modifican las líneas: 788 - 789

Antes
WHERE c.id_contrato > 1 AND p.id_procedimiento = c.id_procedimiento AND o.id_procedimiento = p.id_procedimiento AND o.id_orden_compra > 1 ) AS p
WHERE a.id_proveedor = e.id_proveedor AND f.id_contrato = a.id_contrato AND r.id_orden_compra = a.id_orden_compra AND p.id_contrato = a.id_contrato';
Ahora
WHERE c.id_contrato > 1 AND p.id_procedimiento = c.id_procedimiento AND o.id_procedimiento = p.id_procedimiento ) AS p 
WHERE a.id_proveedor = e.id_proveedor AND f.id_contrato = a.id_contrato AND p.id_contrato = a.id_contrato AND a.id_orden_compra IS NOT NULL AND r.id_orden_compra = a.id_orden_compra ';

Se modifican las líneas: 815 - 816

Antes
(select sum(IFNULL(b.monto_desglose, 0)) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and
a.id_presupuesto_concepto = e.id_presupuesto_concepto and b.periodo = e.periodo) as "Presupuesto total ejercido por concepto", 
Ahora
(SELECT monto from 
( select sum(IFNULL(b.monto_desglose, 0)) AS monto, a.id_presupuesto_concepto, b.periodo from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura group by a.id_presupuesto_concepto, b.periodo) pr
WHERE pr.id_presupuesto_concepto = e.id_presupuesto_concepto AND pr.periodo = e.periodo ) as "Presupuesto total ejercido por concepto", 

Se modifican las líneas: 833 - 834

Antes
e.id_presupuesto,
d.denominacion';
Ahora
e.periodo';
/*e.id_presupuesto,
d.denominacion';*/
Se modifica la línea: 896

Antes
IFNULL(c.monto_contrato, 0) as  "Monto total del contrato",
Ahora
e.monto_desglose as  "Monto total del contrato",

Se modifica la línea: 911

Antes
b.id_contrato = c.id_contrato
Ahora
c.id_contrato = b.id_contrato

Se elimina la línea: 918

b.fecha_orden,
  


Fecha de actualización 
Cambio código 22/08/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, se corrige la forma de obtención de p.procedimiento en la tabla “10632”, en los archivos de la descarga de la PNT.

Se elimina la línea: 779

p.procedimiento,

Se elimina la línea: 782

e.nombre_comercial

Se agrega en las líneas: 781 - 782

p.procedimiento,
e.nombre_comercial

Se modifican las líneas: 785 - 786 - 787 - 788 - 789

Antes
( SELECT DISTINCT IFNULL(descripcion_justificacion, "") AS razones, id_orden_compra FROM tab_ordenes_compra AS b  ) AS r, 
( SELECT DISTINCT IFNULL(p.nombre_procedimiento, "") AS procedimiento, c.id_contrato
FROM tab_contratos AS c, tab_ordenes_compra AS o, cat_procedimientos AS p 
WHERE c.id_contrato > 1 AND p.id_procedimiento = c.id_procedimiento AND o.id_procedimiento = p.id_procedimiento ) AS p 
WHERE a.id_proveedor = e.id_proveedor AND f.id_contrato = a.id_contrato AND p.id_contrato = a.id_contrato AND a.id_orden_compra IS NOT NULL AND r.id_orden_compra = a.id_orden_compra ';
Ahora
( SELECT DISTINCT IFNULL(descripcion_justificacion, "") AS razones, id_orden_compra FROM tab_ordenes_compra AS b  ) AS r,
( SELECT DISTINCT IFNULL(p.nombre_procedimiento, "") AS procedimiento, c.id_contrato FROM cat_procedimientos AS p, tab_contratos AS c WHERE p.id_procedimiento = c.id_procedimiento) AS p
WHERE a.id_proveedor = e.id_proveedor AND f.id_contrato = a.id_contrato AND a.id_orden_compra IS NOT NULL  AND r.id_orden_compra = a.id_orden_compra AND p.id_contrato = a.id_contrato ';
 


Fecha de actualización 
Cambio código 29/08/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, se modifica el orden de columnas de “tabla_10632”, en los archivos de la descarga de la PNT.

Se agrega la línea: 779

p.procedimiento,

Se elimina la línea: 781

p.procedimiento,

Se modifica la línea: 814

Antes
( select sum(IFNULL(b.monto_desglose, 0)) AS monto, a.id_presupuesto_concepto, b.periodo from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura group by a.id_presupuesto_concepto, b.periodo) pr
Ahora
( select sum(IFNULL(b.monto_desglose, 0)) AS monto, a.id_presupuesto_concepto, b.periodo from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura group by a.id_presupuesto_concepto, b.periodo) pr


2.- Atendiendo el Issue #15 - Gráfico Gasto por Tipo de servicio

En el archivo Porservicio.php, ubicado en la ruta tpov1/application/views/pages/, se cambian los estilos de la gráfica de la sección del front “Gasto por tipo de servicio”.

Se eliminan las líneas: 223 - 224 - 225 - 226

bars.append("text").text(function(d){ return d3.format(",")(d[1])})
.attr("x", function(d) { return x(d[0])+x.rangeBand()/2; })
.attr("y", function(d) { return y(d[1])-5; })
.attr("text-anchor", "middle");

Se agrega a partir de la línea 223, el siguiente código:

/**/
          
bars.append("text")
.text(function(d){ return d3.format(",")(d[1])})
.style("font-size", "8px")
//.attr("x", function(d) { return x(d[0])+x.rangeBand()/2; })
.attr("x", function(d) { return ( x(d[0]) + (x.rangeBand()) * 0.4); })
//.attr("y", function(d) { return y(d[1])-5; })
.attr("y", function(d) { return (y(d[1]) - 5); })
.attr("rotate", function(d, i) {
//return "translate(" + ( x(d[0]) + (x.rangeBand()) * 0.6) + "," + (y(d[1]) - 30) + ") rotate(-90)";
return "rotate(-90)";
})
.attr("text-anchor", "middle");
/**/

Se comenta la línea 271 

//.text(function(d){ return d3.format(",")(d[1])})

Se modifica la línea 346

Antes
$(".pie").prependTo(".histo")
Ahora
$(".pie").insertBefore(".histo")



Fecha de actualización 
Cambio código 05/09/2017

1.- Cambio en letra de la versión.

--En el archivo “Inicio.php” ubicado en la carpeta tpov1/application/views/pages/, se cambia la letra de la versión, pasando de TPO Ver. 1a a TPO Ver. 1c, la cual sería la versión liberada con las últimas actualizaciones.

Archivo: Inicio.php

Se modifica la línea: 71

Antes
TPO Ver. 1a
Ahora
TPO Ver. 1c



Fecha de actualización 
Cambio código 14/09/2017

1.- Colocar correctamente las urls de los recursos

-- En los archivos para la vista del front de la herramienta, ubicados en la ruta tpov1/application/views/pages/. 

Archivo: Campanasavisos.php

Se modifican las líneas: 1 - 2 - 3

Antes
<link rel="stylesheet" href="graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" />

Se modifica la línea: 90

Antes
<iframe src="graphs/treemap2/index.php?f=ca_so.json" style="width:100%;height:555px;" frameborder="0" scrolling=auto > </iframe>
Ahora
<iframe src="<?php echo base_url(); ?>graphs/treemap2/index.php?f=ca_so.json" style="width:100%;height:555px;" frameborder="0" scrolling=auto > </iframe>

Se modifica la línea: 174

Antes
<script src="graphs/tablero/js/intro.js" type="text/javascript"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/tablero/js/intro.js" type="text/javascript"></script>

Archivo: Contratos.php

Se modifican las líneas: 19 - 20 - 21 

Antes
<link rel="stylesheet" href="graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" />

Se modifica la línea: 82

Antes
<iframe src="graphs/contratosyoc/index.php" frameborder="0" scrolling="no" onload="resizeIframe(this)" style="width:90%;" />
Ahora
<iframe src="<?php echo base_url(); ?>graphs/contratosyoc/index.php" frameborder="0" scrolling="no" onload="resizeIframe(this)" style="width:90%;" />

Se modifica la línea: 151

Antes
script src="graphs/tablero/js/intro.js" type="text/javascript"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/tablero/js/intro.js" type="text/javascript"></script>
 
Archivo: Erogaciones.php

Se modifican las líneas: 1 - 2 - 3

Antes
<link rel="stylesheet" href="graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" />

Se modifica la línea: 70

Antes
<iframe src="graphs/erogaciones/index.php" frameborder="0" scrolling="no" onload="resizeIframe(this)" style="width:90%;height:400px;" />
Ahora
<iframe src="<?php echo base_url(); ?>graphs/erogaciones/index.php" frameborder="0" scrolling="no" onload="resizeIframe(this)" style="width:90%;height:400px;" /> 

Se modifica la línea: 102

Antes
<script src="graphs/tablero/js/intro.js" type="text/javascript"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/tablero/js/intro.js" type="text/javascript"></script>
 
Archivo: Inicio.php

Se modifican las líneas: 11 - 12 - 13 - 14 - 15 - 16 - 17 

Antes
<script src="graphs/tablero/js/skel.min.js"></script>
<script src="graphs/tablero/js/skel-panels.min.js"></script>
<script src="graphs/tablero/js/init.js"></script>   
<link rel="stylesheet" href="graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="graphs/tablero/css/style.css" />
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />
Ahora
<script src="<?php echo base_url(); ?>graphs/tablero/js/skel.min.js"></script>
<script src="<?php echo base_url(); ?>graphs/tablero/js/skel-panels.min.js"></script>
<script src="<?php echo base_url(); ?>graphs/tablero/js/init.js"></script>   
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/style.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" />

Se modifica la línea: 216

Antes
<script src="graphs/tablero/js/intro.js" type="text/javascript"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/tablero/js/intro.js" type="text/javascript"></script>

Archivo: Porproveedor.php

Se modifican las líneas: 3 - 4 

Antes
<link rel="stylesheet" href="graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="graphs/tablero/css/stylenew.css" />
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/stylenew.css" />

Se modifica la línea: 201

Antes
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />   
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" /> 

Se modifican las líneas: 279 - 280 - 281

Antes
<script src="graphs/porproveedor/js/d3.v2.min.js" charset="utf-8"></script>
<script src="graphs/porproveedor/js/sankey.js"></script>
<script src="graphs/tablero/js/intro.js" type="text/javascript"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/porproveedor/js/d3.v2.min.js" charset="utf-8"></script>
<script src="<?php echo base_url(); ?>graphs/porproveedor/js/sankey.js"></script>
<script src="<?php echo base_url(); ?>graphs/tablero/js/intro.js" type="text/javascript"></script>

Se modifica la línea: 306

Antes
d3.json("data/porproveedor.json", function(energy) {
Ahora
d3.json("<?php echo base_url(); ?>data/porproveedor.json", function(energy) {

Archivo: Porservicio.php

Se modifican las líneas: 1 - 2 - 3

Antes
<link rel="stylesheet" href="graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" />

Se modifica la línea: 144

Antes
<script src="graphs/porservicio/js/d3.v3.min.js"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/porservicio/js/d3.v3.min.js"></script>

Se modifica la línea: 480

Antes
<script src="graphs/tablero/js/intro.js" type="text/javascript"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/tablero/js/intro.js" type="text/javascript"></script>

Archivo: Presupuesto.php

Se modifica la línea: 11

Antes
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" />

Se modifican las líneas: 51 - 52 - 53

Antes
<link rel="stylesheet" href="graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" />

Se modifica la línea: 167

Antes
<script src="graphs/tablero/js/intro.js" type="text/javascript"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/tablero/js/intro.js" type="text/javascript"></script>

Archivo: Sujetos.php

Se modifican las líneas: 6 - 7 - 8

Antes
<link rel="stylesheet" href="graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" />

Se modifica la línea: 78

Antes
<iframe src="graphs/treemap2/index.php?f=so.json" style="width:100%;height:555px;" frameborder="0" scrolling=auto
Ahora
<iframe src="<?php echo base_url(); ?>graphs/treemap2/index.php?f=so.json" style="width:100%;height:555px;" frameborder="0" scrolling=auto

Se modifica la línea: 131

Antes
<script src="graphs/tablero/js/intro.js" type="text/javascript"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/tablero/js/intro.js" type="text/javascript"></script>
 
Archivo: graficaPresupuesto.php

Se modifica la línea: 4

Antes
<script src="graphs/presupuesto/js/d3.v3.min.js"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/presupuesto/js/d3.v3.min.js"></script>


Se modifica la línea: 6

Antes
<script src="graphs/presupuesto/js/bullet.js"></script>
Ahora
<script src="<?php echo base_url(); ?>graphs/presupuesto/js/bullet.js"></script>

Se modifica la línea: 157

Antes
d3.json("data/presupuesto.json", function(error, data) {
Ahora
d3.json("<?php echo base_url(); ?>data/presupuesto.json", function(error, data) {

Archivo: sujetosDetalle.php
Se modifican las líneas: 6 - 7 - 8

Antes
<link rel="stylesheet" href="graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="graphs/tablero/css/introjs.css" />
Ahora
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/dc.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/stylenew.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>graphs/tablero/css/introjs.css" />



Fecha de actualización 
Cambio código 15/09/2017

1.- Cambio del Link en Inicio

--En el archivo de inicio del front de la herramienta, ubicado en la ruta tpov1/application/views/pages/.

Archivo: Inicio.php

Se modifican las líneas: 207 - 208 - 209 - 210

Antes
<script src='graphs/tablero/js/crossfilter.js' type='text/javascript'></script>
<script src='graphs/tablero/js/d3.js' type='text/javascript'></script>
<script src='graphs/tablero/js/dc.js' type='text/javascript'></script>
<script src='graphs/tablero/js/queue.js' type='text/javascript'></script>
Ahora
<script src='<?php echo base_url(); ?>graphs/tablero/js/crossfilter.js' type='text/javascript'></script>
<script src='<?php echo base_url(); ?>graphs/tablero/js/d3.js' type='text/javascript'></script>
<script src='<?php echo base_url(); ?>graphs/tablero/js/dc.js' type='text/javascript'></script>
<script src='<?php echo base_url(); ?>graphs/tablero/js/queue.js' type='text/javascript'></script>

Se modifica la línea: 213

Antes
var sourcescv = 'data/inicio.csv';
Ahora
var sourcescv = '<?php echo base_url(); ?>data/inicio.csv';

Se modifica la línea: 215

Antes
<script src='graphs/tablero/js/Dashboard.js' type='text/javascript'></script>
Ahora
<script src='<?php echo base_url(); ?>graphs/tablero/js/Dashboard.js' type='text/javascript'></script>



Fecha de actualización 
Cambio código 02/10/2017

1.- Atendiendo el Issue #4 - Sito público - Modificación de configuración para actualización de gráficos en tiempo real.

--Generar los datos fuentes en tiempo real. Modificación de configuración para actualización de gráficos en tiempo real en el archivo graficaPresupuesto.php, ubicado en la carpeta tpov1/application/views/pages/

Archivo: graficaPresupuesto.php

Se comenta la línea: 160

Ahora
<!--?php $data2 = exportData2ToJson(); ?--->

Se agrega la línea: 157

Ahora
<?php $data2 = exportData2ToJson(); ?>

Atendiendo el Issue #14 Sitio Público - Inicializar la herramienta con el año en curso en "Ejercicio"

Poner en la pantalla la data de 2017
Se modifica el archivo “Sys_Hub.php”, ubicado en la carpeta tpov1/application/controllers/, con este cambio la herramienta iniciará en el ejercicio más actual capturado y con estatus activo.

Archivo: Sys_Hub.php

Se modifica la línea:  91

Antes
$data1['ScreenTarget'] = 'Sys_Screen?v='.  getD3D("page_act") . '&g=' . getD3D("group_act");
Ahora
$data1['ScreenTarget'] = 'Sys_Screen?v='.  getD3D("page_act") . '&g=' . getD3D("group_act") . '&e=2017';



Fecha de actualización 
Cambio base de datos 03/10/2017

1.- Atendiendo el Issue #8 - Sitio público - Cifras destacadas.

--Corregir los montos de las cifras destacadas en sección Inicio.
En el archivo structure.sql, ubicado en la ruta tpoadminv1/install/system/db/, se modifica la vista "vgrafica1". 

Antes
CREATE VIEW `vgrafica1` AS select `a`.`ejercicio` AS `ejercicio`,`a`.`servicio` AS `servicio`,`a`.`campana` AS `campana`,`a`.`partida` AS `partida`,`a`.`ejercido` AS `ejercido`,`a`.`tipo` AS `tipo`,`a`.`fecha` AS `fecha`,`a`.`proveedor` AS `proveedor`,`a`.`campana_aviso` AS `campana_aviso`,(select (sum(`c`.`monto_presupuesto`) / (select count(0) from `vpregrafica1` `b`)) from `vact_presupuestos_desglose` `c`) AS `presupuesto`,((select (sum(`c`.`monto_presupuesto`) / (select count(0) from `vpregrafica1` `b`)) from `vact_presupuestos_desglose` `c`) + (select (sum(`c`.`monto_modificacion`) / (select count(0) from `vpregrafica1` `b`)) from `vact_presupuestos_desglose` `c`)) AS `modificacion`,(select (count(0) / (select count(0) from `vpregrafica1`)) from `vtab_proveedores` `z` where (`z`.`ejercicio` = `a`.`ejercicio`)) AS `proveedores`,(select (count(0) / (select count(0) from `vpregrafica1`)) from `tab_campana_aviso`) AS `totalcampanas` from `vpregrafica1` `a`;

Ahora
CREATE VIEW vgrafica1 AS SELECT a.ejercicio AS ejercicio, a.servicio AS servicio, a.campana AS campana, a.partida AS partida, (SELECT sum( b.monto_desglose ) as valor2 FROM vact_facturas as f, vact_facturas_desglose as b, vact_ejercicios as c WHERE f.id_factura = b.id_factura AND f.id_ejercicio = c.id_ejercicio and c.ejercicio = a.ejercicio) / (SELECT COUNT(0) FROM vpregrafica1 b WHERE ejercicio = a.ejercicio) AS ejercido, a.tipo AS tipo, a.fecha AS fecha, a.proveedor AS proveedor, a.campana_aviso AS campana_aviso, ( (select sum(original) as "valor1" from vtab_presupuesto where ejercicio = a.ejercicio) / (SELECT COUNT(0) FROM vpregrafica1 b WHERE ejercicio = a.ejercicio) ) AS presupuesto, ( select sum(presupuesto) as "valor3" from vtab_presupuesto where ejercicio = a.ejercicio) / (SELECT COUNT(0) FROM vpregrafica1 b WHERE ejercicio = a.ejercicio) AS modificacion, ( select count(0) as valor1 from vtab_proveedores WHERE ejercicio = a.ejercicio AND nombre NOT IN ("Análisis, estudios y métricas", "Gastos de propaganda e Imagen", "Impresiones", "Internet", "Medios impresos", "Producción de contenidos", "Radio", "Televisión", "Contratos", "Órdenes de compra") ) / (SELECT COUNT(0) FROM vpregrafica1 b where b.ejercicio = a.ejercicio and proveedor NOT IN ('Análisis, estudios y métricas', 'Gastos de propaganda e Imagen', 'Impresiones', 'Internet', 'Medios impresos', 'Producción de contenidos', 'Radio', 'Televisión', 'Contratos', 'Órdenes de compra')) AS proveedores, ( SELECT COUNT( * ) as valor1 FROM vact_campana_aviso c, vact_ejercicios as b, cat_ejercicios e WHERE c.id_campana_tipo IN (1,2) AND c.id_ejercicio = b.id_ejercicio AND b.id_ejercicio = e.id_ejercicio AND e.ejercicio = a.ejercicio) / (SELECT COUNT(0) FROM vpregrafica1 b where b.ejercicio = a.ejercicio) AS totalcampanas FROM vpregrafica1 a;



Fecha de actualización 
Cambio código 04/10/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--Corrigiendo que se tome en cuenta todos lo ejercicios registrados en el archivo de descarga de PNT
En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/.

Archivo: Sys_Export.php

Se borran las líneas: 822 hasta 833

Antes
from
tab_presupuestos as d,
tab_presupuestos_desglose as e,
cat_presupuesto_conceptos as c,
cat_ejercicios as g
where
e.id_presupuesto = d.id_presupuesto and
e.id_presupuesto_concepto = c.id_presupesto_concepto and
d.id_ejercicio = g.id_ejercicio
group by
e.id_presupuesto_concepto,
e.periodo';

Se agregan las líneas: 822 hasta 826

Ahora
from tab_presupuestos as d
JOIN tab_presupuestos_desglose e ON e.id_presupuesto = d.id_presupuesto
JOIN cat_presupuesto_conceptos c ON c.id_presupesto_concepto = e.id_presupuesto_concepto
JOIN cat_ejercicios g ON g.id_ejercicio = d.id_ejercicio
GROUP BY g.ejercicio, e.id_presupuesto_concepto;';

Se utiliza la variable IURL_ROOT
En el archivo config.php, ubicado en la carpeta: tpov1/application/config/, se utiliza el valor de la variable "IURL_ROOT" definida en el archivo "config.php", el cual se ubica en la carpeta: tpov1/data/, este valor se usará para "base_url" y con esta configuración la herramienta al momento de instalar por primera vez se visualice correctamente.

Archivo: config.php

Se modifica la línea: 28

Antes
$config['base_url'] = 'http://localhost/html/tpov1/tpov2/';

Ahora
$config['base_url'] = IURL_ROOT;



Fecha de actualización 
Cambio código 06/10/2017

1.- Reparar bug de la gráfica de presupuestos

--En el archivo “graficaPresupuesto.php”, ubicado en la ruta tpov1/application/views/pages/.

Archivo: graficaPresupuesto.php

Se borra la línea: 157

Antes
<?php $data2 = exportData2ToJson(); ?>

Se agrega la línea: 160

Ahora
<!--?php $data2 = exportData2ToJson(); ?--->


2.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--Modificar la columna 'Presupuesto total ejercido por concepto'
En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/.

Archivo: Sys_Export.php

Se modifican las líneas: 814 hasta 816

Antes
( select sum(IFNULL(b.monto_desglose, 0)) AS monto, a.id_presupuesto_concepto, b.periodo from tab_facturas as a, tab_facturas_desglose as b 
where a.id_factura = b.id_factura group by a.id_presupuesto_concepto, b.periodo) pr
WHERE pr.id_presupuesto_concepto = e.id_presupuesto_concepto AND pr.periodo = e.periodo ) as "Presupuesto total ejercido por concepto", 

Ahora
( select sum(IFNULL(b.monto_desglose, 0)) AS monto, a.id_presupuesto_concepto from tab_facturas as a, tab_facturas_desglose as b 
where a.id_factura = b.id_factura group by a.id_presupuesto_concepto) pr
WHERE pr.id_presupuesto_concepto = e.id_presupuesto_concepto ) as "Presupuesto total ejercido por concepto",

Se modifica la línea: 826

Antes
GROUP BY g.ejercicio, e.id_presupuesto_concepto;';

Ahora
GROUP BY g.ejercicio, e.id_presupuesto_concepto';

Quitar scroll en iframes en el área de gráficos de la sección inicio.
En el archivo Iframe.php, ubicado en la ruta tpov1/application/views/system/base/.

Archivo: Iframe.php

Se modifica la línea: 9

Antes
<iframe src="<?php echo $ScreenTarget; ?>" style="width:100%;" frameborder="0" id="myframe"

Ahora
<iframe scrolling=no src="<?php echo $ScreenTarget; ?>" style="width:100%;" frameborder="0" id="myframe"

Se modifica la línea: 14

Antes
<iframe src="<?php echo $ScreenTarget; ?>" style="width:100%;" frameborder="0" id="myframe"

Ahora
<iframe scrolling=no src="<?php echo $ScreenTarget; ?>" style="width:100%;" frameborder="0" id="myframe"



Fecha de actualización 
Cambio código 09/10/2017

1.- Atendiendo el Issue #14 - Sitio Público - Inicializar la herramienta con el año en curso en "Ejercicio"

--Último año por defecto (desde la bd) excepto en inicio
Se modifican los archivos: “Sys_Hub.php”, ubicado en la carpeta tpov1/application/controllers/ y el archivo “Tpo_model.php”, ubicado en la carpeta tpov1/application/models/.

Archivo: Sys_Hub.php

Se agrega la línea: 63

Ahora
$maxEjercicio = $this->fechaact->maxEjercicio();

Se modifica la línea: 94

Antes
$data1['ScreenTarget'] = 'Sys_Screen?v='.  getD3D("page_act") . '&g=' . getD3D("group_act") . '&e=2017';

Ahora
$data1['ScreenTarget'] = 'Sys_Screen?v='.  getD3D("page_act") . '&g=' . getD3D("group_act") . '&e=' . $maxEjercicio;

Archivo: Tpo_model.php

Se agregan las líneas: 74 hasta 82

Ahora
public function maxEjercicio(){
$data = $this->db->query( "SELECT max(ejercicio) as ejercicio from cat_ejercicios" )->result();

foreach($data as $cuantos) {
     		$total = $cuantos->ejercicio;
}


return $total;
    }


2.- Solo quitar el scroll en la sección inicio

--En el archivo Iframe.php, ubicado en la ruta tpov1/application/views/system/base/.

Archivo: Iframe.php

Se modifica la línea: 14

Antes
<iframe scrolling=no src="<?php echo $ScreenTarget; ?>" style="width:100%;" frameborder="0" id="myframe"

Ahora
<iframe src="<?php echo $ScreenTarget; ?>" style="width:100%;" frameborder="0" id="myframe"


3.- Modificar el alto del área de gráficas

--En el archivo Iframe.php, ubicado en la ruta tpov1/application/views/system/base/.

Archivo: Iframe.php
Se modifica la línea: 9

Antes
<iframe scrolling=no src="<?php echo $ScreenTarget; ?>" style="width:100%;" frameborder="0" id="myframe"

Ahora
<iframe scrolling=no src="<?php echo $ScreenTarget; ?>" style="width:100%; height: 950px;" frameborder="0" id="myframe"



Fecha de actualización 
Cambio código 10/10/2017

1.- Tamaño del área del gráfico - Sección inicio

--En el archivo “Inicio.php”, ubicado en la carpeta tpov1/application/views/pages/, se agrega en la clase "wrapper" , la altura del área del gráfico. height: 1000px;

Archivo: Inicio.php

Se agrega la línea: 33

Ahora
height: 1000px;


2.- Atendiendo el Issue #14 - Sitio Público - Inicializar la herramienta con el año en curso en "Ejercicio"

--Sección Inicio - último año por defecto
En el archivo: “Dashboard.js”, ubicado en la carpeta tpov1/graphs/tablero/js/ y el archivo “dc.js” ubicado en la carpeta tpov1/graphs/tablero/js/.

Archivo: Dashboard.js

Se agrega la línea: 193

Ahora
selectField.onChange( $(".dc-select-menu option:last").val() )

Archivo: dc.js

Se elimina la línea: 7220

console.log("Grafica",_chart);



Fecha de actualización 
Cambio código 11/10/2017

1.- Atendiendo el Issue #2 - Sitio público - Descarga de datos en el formato del SIPOT (Art. 70, Frac. XXIII)

--En el archivo Sys_Export.php, ubicado en la ruta tpov1/application/controllers/, se actualiza query del archivo F70FXXIIIB_tabla_10633, para la descarga de archivos de la PNT.

Archivo: Sys_Export.php

Se modifican las líneas: 811 hasta 816

Antes
sum(IFNULL(e.monto_presupuesto, 0)) as "Presupuesto asignado por concepto",
(sum(IFNULL(e.monto_presupuesto, 0))+sum(IFNULL(e.monto_modificacion, 0))) as "Presupuesto modificado por concepto",
(SELECT monto from 
( select sum(IFNULL(b.monto_desglose, 0)) AS monto, a.id_presupuesto_concepto from tab_facturas as a, tab_facturas_desglose as b 
where a.id_factura = b.id_factura group by a.id_presupuesto_concepto) pr
WHERE pr.id_presupuesto_concepto = e.id_presupuesto_concepto ) as "Presupuesto total ejercido por concepto",

Ahora
IFNULL(sum(e.monto_presupuesto), 0) as "Presupuesto asignado por concepto",
(IFNULL(sum(e.monto_presupuesto), 0)+IFNULL(sum(e.monto_modificacion), 0)) as "Presupuesto modificado por concepto",
( select IFNULL(sum(b.monto_desglose), 0) from tab_facturas as a, tab_facturas_desglose as b 
where a.id_factura = b.id_factura 
and a.id_presupuesto_concepto = e.id_presupuesto_concepto 
and a.id_ejercicio = d.id_ejercicio) as "Presupuesto total ejercido por concepto",

Se eliminan las líneas: 818 hasta 821

Antes
(sum(IFNULL(e.monto_presupuesto, 0))) as "Presupuesto total asignado a cada partida",
(sum(IFNULL(e.monto_presupuesto, 0))+sum(IFNULL(e.monto_modificacion, 0))) as "Presupuesto modificado por partida",
(select sum(IFNULL(b.monto_desglose, 0)) from tab_facturas as a, tab_facturas_desglose as b where a.id_factura = b.id_factura and
a.id_presupuesto_concepto = e.id_presupuesto_concepto and a.id_ejercicio = d.id_ejercicio ) as "Presupuesto ejercido al periodo"

Se agregan las líneas: 818 hasta 823 

Ahora
(IFNULL(sum(e.monto_presupuesto), 0)) as "Presupuesto total asignado a cada partida",
(IFNULL(sum(e.monto_presupuesto), 0) + IFNULL(sum(e.monto_modificacion), 0)) as "Presupuesto modificado por partida",
(select IFNULL(sum(b.monto_desglose), 0) from tab_facturas as a, tab_facturas_desglose as b 
where a.id_factura = b.id_factura 
and a.id_presupuesto_concepto = e.id_presupuesto_concepto and a.id_ejercicio = d.id_ejercicio 
and a.id_trimestre = (select max(a2.id_trimestre) from tab_facturas as a2 where  a2.id_ejercicio = d.id_ejercicio) ) as "Presupuesto ejercido al periodo"

