<!--script>
var ext_validas = /\.(pdf|gif|jpg|png)$/i.test(nombre_archivo);
if (!ext_validas){
borrar();
alert("Archivo con extensión no válida\nSu archivo: " + nombre_archivo);
return false;
}
</script-->
   <div class="page">
      <div style="width:100%;margin:auto;">
      <br>
<?php
/*
    $CI =& get_instance();
    $CI->load->model('Dologin_model', 'users');
    $CI->users->updateDate();
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
*/
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('tab_facturas');
    $xcrud->table_name('Facturas');
    
//    $xcrud->after_upload('after_upload_factura', 'functions.php');
//    $xcrud->before_insert('validateFacturaI', 'functions.php');
//    $xcrud->before_update('validateFacturaU', 'functions.php');
    
    $xcrud->unset_title();
    $xcrud->columns('id_contrato, id_orden_compra, id_ejercicio, id_trimestre, id_proveedor, numero_factura, fecha_erogacion, monto_total, active');

    $xcrud->subselect('monto_total','SELECT SUM(monto_desglose) FROM tab_facturas_desglose WHERE id_factura = {id_factura}');
    $xcrud->readonly('monto_total');


    $xcrud->fields('id_ejercicio, id_proveedor, id_contrato, id_orden_compra, id_trimestre, id_so_contratante, id_presupuesto_concepto, numero_factura, file_factura_pdf, file_factura_xml, fecha_erogacion, active, fecha_validacion, area_responsable, periodo, fecha_actualizacion, nota');

    $xcrud->label('id_proveedor','Proveedor');
    $xcrud->label('id_contrato','Contrato');
    $xcrud->label('id_orden_compra','Orden');
    $xcrud->label('id_ejercicio','Ejercicio');
    $xcrud->label('id_trimestre','Trimestre');
    $xcrud->label('id_so_contratante','Sujeto obligado contratante');
    $xcrud->label('id_presupuesto_concepto','Partida');
    $xcrud->label('numero_factura','Número de factura');
    $xcrud->label('fecha_erogacion','Fecha de erogación');
    $xcrud->label('monto_total','Monto');
    $xcrud->label('file_factura_pdf','Archivo factura en PDF');
    $xcrud->label('file_factura_xml','Archivo factura en XML');
    $xcrud->label('active','Estatus');
    $xcrud->label('fecha_validacion','Fecha de validación');
    $xcrud->label('area_responsable','Área responsable de la información');
    $xcrud->label('periodo','Año');
    $xcrud->label('fecha_actualizacion','Fecha de actualización');
    $xcrud->label('nota','Nota');

    $xcrud->column_tooltip('monto_total','Monto total de la factura, con I.V.A. incluido.');
    $xcrud->column_tooltip('id_proveedor','Indica el nombre o razón social del proveedor');
    $xcrud->column_tooltip('id_contrato','Clave o número de identificación único del contrato.');
    $xcrud->column_tooltip('id_orden_compra','Clave o número de identificación único de la orden de compra.');
    $xcrud->column_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $xcrud->column_tooltip('id_trimestre','Indica el trimestre que se reporta (enero – marzo, abril - junio, julio -septiembre,  octubre - diciembre ).');
    $xcrud->column_tooltip('id_so_contratante','Indica el nombre del sujeto obligado contratante');
    $xcrud->column_tooltip('id_presupuesto_concepto','Clasificador por objeto de gasto: el instrumento que permite registrar de manera ordenada, sistemática y homogénea las compras, los pagos y las erogaciones autorizados en capítulos, conceptos y partidas con base en la clasificación económica del gasto.');
    $xcrud->column_tooltip('numero_factura','Clave única de la erogación o factura.');
    $xcrud->column_tooltip('fecha_erogacion','Indica la fecha de erogación de recursos, con el formato dd/mm/aaaa (por ej. 31/12/2016).');
    $xcrud->column_tooltip('file_factura_pdf','Hipervínculo a la factura en formato PDF)');
    $xcrud->column_tooltip('file_factura_xml','Hipervínculo a la factura en formato XML)');
    $xcrud->column_tooltip('active','Indica el estado de la información correspondiente al registro, “Activa” o “Inactiva”.');
    $xcrud->field_tooltip('fecha_validacion','Fecha de validación');
    $xcrud->field_tooltip('area_responsable','Área responsable de la información');
    $xcrud->field_tooltip('periodo','Año');
    $xcrud->field_tooltip('fecha_actualizacion','Fecha de actualización');
    $xcrud->field_tooltip('nota','Nota');

/*
relation ( 
field, 
target_table,
target_id, 
target_name, 
where, 
order_by, 
multi, 
concat_separator, 
tree, 
depend_field, 
depend_on ) - binds the current table with a list of the other table. Takes as input the name of the field in the current table, the name of the linked table, the link field, the title field , the selection condition for the linked table (optional).
*/    

/*
--->id_ejercicio, 
--->id_proveedor, 
--->id_contrato, 
--->id_orden_compra, 
--->id_trimestre, 
--->id_so_contratante, 
--->id_presupuesto_concepto, 
numero_factura, 
file_factura_pdf, 
file_factura_xml, 
fecha_erogacion, 
--->active, 
fecha_validacion, 
area_responsable, 
periodo, 
fecha_actualizacion, 
nota

Con filtros
    $xcrud->relation('id_contrato','tab_contratos','id_contrato','numero_contrato','','','','','','id_ejercicio','id_ejercicio');
    $xcrud->relation('id_orden_compra','tab_ordenes_compra','id_orden_compra','numero_orden_compra','','','','','','id_ejercicio','id_ejercicio');

*/
    $xcrud->relation('id_ejercicio','cat_ejercicios','id_ejercicio','ejercicio');
    $xcrud->relation('id_proveedor','tab_proveedores','id_proveedor','nombre_razon_social');
    $xcrud->relation('id_contrato','tab_contratos','id_contrato','numero_contrato');
    $xcrud->relation('id_orden_compra','tab_ordenes_compra','id_orden_compra','numero_orden_compra');
    $xcrud->relation('id_trimestre','cat_trimestres','id_trimestre','trimestre');
    $xcrud->relation('id_so_contratante','vso_contratante','id_sujeto_obligado','nombre_sujeto_obligado');
    $xcrud->relation('id_presupuesto_concepto','vcapitulo_denominacion','id_presupesto_concepto', 'capitulo_denominacion');
    $xcrud->relation('active','sys_active','id_active','name_active');

    $xcrud->field_tooltip('monto_total','Monto total de la factura, con I.V.A. incluido.');
    $xcrud->field_tooltip('id_proveedor','Indica el nombre de la persona física o moral proveedora del producto o servicio.');
    $xcrud->field_tooltip('id_contrato','Clave o número de identificación único del contrato.');
    $xcrud->field_tooltip('id_orden_compra','lave o número de identificación único de la orden de compra.');
    $xcrud->field_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $xcrud->field_tooltip('id_trimestre','Indica el trimestre que se reporta (enero – marzo, abril-junio, julio-septiembre,  octubre-diciembre ).');
    $xcrud->field_tooltip('id_so_contratante','Indica el nombre del sujeto obligado que celebra el contrato u orden de compra con el proveedor.');
    $xcrud->field_tooltip('id_presupuesto_concepto','Indica la clave y el nombre del concepto o partida presupuestal.');
    $xcrud->field_tooltip('numero_factura','Clave única de la erogación o factura.');
    $xcrud->field_tooltip('fecha_erogacion','Indica la fecha de erogación de recursos, con el formato dd/mm/aaaa (por ej. 15/08/2016).');
    $xcrud->field_tooltip('file_factura_pdf','Archivo electrónico de la factura en formato PDF.');
    $xcrud->field_tooltip('file_factura_xml','Archivo electrónico de la factura en formato XML.');
    $xcrud->field_tooltip('active','Indica el estado de la información correspondiente al registro, “Activa” o “Inactiva”.');

    $xcrud->change_type('file_factura_pdf', 'file', '', array('not_rename'=>true, 'path'=>'../data/facturas/'));
    $xcrud->change_type('file_factura_xml', 'file', '', array('not_rename'=>true, 'path'=>'../data/facturas/'));
    $xcrud->change_type('monto_total', 'price', '0', array('prefix'=>'$ '));
    $xcrud->default_tab('Factura');


    $detalle = $xcrud->nested_table('Detalle de factura','id_factura', 'tab_facturas_desglose','id_factura');
    $detalle->table_name('Detalle de factura');

    $detalle->unset_title();

    $detalle->columns('id_campana_aviso, monto_desglose, active' );
    $detalle->fields('id_campana_aviso,id_servicio_clasificacion,id_servicio_categoria,id_servicio_subcategoria,id_servicio_unidad,id_so_solicitante,area_administrativa,descripcion_servicios,cantidad,precio_unitarios,active,fecha_validacion,area_responsable,periodo,fecha_actualizacion,nota');

    $detalle->column_tooltip('id_campana_aviso','Indica el nombre de la Campaña o Aviso Institucional');
    $detalle->column_tooltip('id_so_solicitante','Indica el nombre del sujeto obligado solicitante');
    $detalle->column_tooltip('descripcion_servicios','Descripción del servicio o producto adquirido');
    $detalle->column_tooltip('cantidad','Indica la cantidad del producto o servicio adquirido');
    $detalle->column_tooltip('precio_unitarios','Indica el precio unitario del producto o servicio, con IVA incluido.');
    $detalle->column_tooltip('monto_desglose','Indica el monto correspondiente a cada subconcepto, calculado con la multiplicación de la cantidad por el precio unitario con IVA incluido del producto o servicio adquirido.');

    $detalle->label('id_campana_aviso','Campaña o aviso institucional');
    $detalle->label('id_ejercicio','Ejercicio');
    $detalle->label('id_trimestre','Trimestre');
    $detalle->label('id_so_solicitante','Sujeto obligado solicitante');
    $detalle->label('cantidad','Cantidad');
    $detalle->label('descripcion_servicios','Descripción del servicio o producto adquirido');
    $detalle->label('precio_unitarios','Precio unitario con I.V.A incluido');
    $detalle->label('monto_desglose','Monto subconcepto');
    $detalle->label('active','Estatus');
    $detalle->label('clasificacion','Categoría del servicio');
    $detalle->label('subclasificacion','Subcategoría del servicio');
    $detalle->label('unidad','Unidad');
    $detalle->label('id_servicio_clasificacion','Clasificación del servicio');
    $detalle->label('id_servicio_categoria','Categoría del servicio');
    $detalle->label('id_servicio_subcategoria','Subcategoría del servicio');
    $detalle->label('id_servicio_unidad','Unidad');
    $detalle->label('area_administrativa','Área administrativa encargada de solicitar el servicio');
    $detalle->label('fecha_validacion','Fecha de validación');
    $detalle->label('area_responsable','Área responsable de la información');
    $detalle->label('periodo','Año');
    $detalle->label('fecha_actualizacion','Fecha de actualización');
    $detalle->label('nota','Nota');

    $detalle->field_tooltip('id_campana_aviso','Indica el nombre de la campaña o aviso institucional  a la que pertenece.');
       $detalle->field_tooltip('id_servicio_clasificacion','Indica el nombre de la clasificación general del servicio (Servicios de difusión en medios de comunicación; Otros servicios asociados a la comunicación).');
    $detalle->field_tooltip('id_servicio_categoria','Indica el nombre de la categoría del servicio de acuerdo a su clasificación (Análisis, estudios y métricas, Cine, Impresiones, Internet, etc).');
    $detalle->field_tooltip('id_servicio_subcategoria','Indica el nombre de la subcategoría del servicio (Artículos promocionales, Cadenas radiofónicas, Carteles o posters).');
    $detalle->field_tooltip('id_servicio_unidad','Indica la unidad de medida del producto o servicio asociado a la subcategoría.');
    $detalle->field_tooltip('id_so_solicitante','Indica el nombre del sujeto que solicitó el producto o servicio aunque éste no sea quien celebra el contrato u orden de compra con el proveedor (Ej. Sujeto obligado solicitante: Secretaría de Cultura; sujeto obligado contratante: Coordinación General de Comunicación Social).');
    $detalle->field_tooltip('descripcion_servicios','Breve descripción del servicio o producto adquirido.');
    $detalle->field_tooltip('cantidad','Indica la cantidad del servicio o producto adquirido.');
    $detalle->field_tooltip('precio_unitarios','Indica el precio unitario del producto o servicio, con I.V.A. incluido.');
    $detalle->field_tooltip('monto_desglose','Indica el monto correspondiente al subconcepto de la factura.');
    $detalle->field_tooltip('active','ndica el estado de la información correspondiente al registro, “Activa” o “Inactiva”.
');
    $detalle->field_tooltip('area_administrativa','Área administrativa encargada de solicitar el servicio encargada de solicitar el servicio');
    $detalle->field_tooltip('fecha_validacion','Fecha de validación');
    $detalle->field_tooltip('area_responsable','Área responsable de la información');
    $detalle->field_tooltip('periodo','Año');
    $detalle->field_tooltip('fecha_actualizacion','Fecha de actualización');
    $detalle->field_tooltip('nota','Nota');

/*
---->id_campana_aviso,
---->id_servicio_clasificacion,
---->id_servicio_categoria,
---->id_servicio_subcategoria,
---->id_servicio_unidad,
---->id_so_solicitante,
area_administrativa,
descripcion_servicios,
cantidad,
precio_unitarios,
---->active,
fecha_validacion,
area_responsable,
periodo,
fecha_actualizacion,
nota
*/

    $detalle->relation('id_campana_aviso','tab_campana_aviso','id_campana_aviso','nombre_campana_aviso');
    $detalle->relation('id_servicio_clasificacion','cat_servicios_clasificacion','id_servicio_clasificacion', 'nombre_servicio_clasificacion');	
    $detalle->relation('id_servicio_categoria','cat_servicios_categorias','id_servicio_categoria','nombre_servicio_categoria','','','','','','id_servicio_clasificacion','id_servicio_clasificacion');
    $detalle->relation('id_servicio_subcategoria','cat_servicios_subcategorias','id_servicio_subcategoria','nombre_servicio_subcategoria','', '', '', '', '', 'id_servicio_categoria','id_servicio_categoria');

    $detalle->relation('id_servicio_unidad','cat_servicios_unidades','id_servicio_unidad','nombre_servicio_unidad','', '', '', '', '', 'id_servicio_subcategoria','id_servicio_subcategoria');     

    $detalle->relation('id_so_solicitante','vso_solicitante','id_sujeto_obligado','nombre_sujeto_obligado');
    $detalle->relation('tab_facturas_desglose.active','sys_active','id_active','name_active');

    $detalle->change_type('monto_desglose', 'price', '0', array('prefix'=>'$ '));
    $detalle->change_type('precio_unitarios', 'price', '0', array('prefix'=>'$ '));   
    $detalle->change_type('numero_partida', 'password', 'sha1');
    $detalle->readonly('monto_desglose');
    $detalle->default_tab('Detalle de factura');        
   
    echo $xcrud->render();
?>
      </div>
   </div>
