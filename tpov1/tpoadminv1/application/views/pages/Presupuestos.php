   <div class="page">
      <div style="width:100%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('tab_presupuestos');
    $xcrud->table_name('Presupuesto');
    $xcrud->default_tab('Presupuesto');
    $xcrud->after_upload('after_upload_presupuesto', 'functions.php');

    $xcrud->unset_title();
    $xcrud->columns('id_ejercicio, id_sujeto_obligado, presupuesto_original, monto_modificado, presupuesto_modificado, active');
    $xcrud->subselect('presupuesto_original','SELECT SUM(monto_presupuesto) FROM tab_presupuestos_desglose WHERE id_presupuesto = {id_presupuesto} and active=1');
    $xcrud->subselect('monto_modificado','SELECT SUM(monto_modificacion) FROM tab_presupuestos_desglose WHERE id_presupuesto = {id_presupuesto} and active=1');
    $xcrud->subselect('presupuesto_modificado','{presupuesto_original}+{monto_modificado}');

    $xcrud->label('id_ejercicio','Ejercicio');
    $xcrud->label('id_sujeto_obligado','Sujeto obligado');
    $xcrud->label('presupuesto_original','Presupuesto original');
    $xcrud->label('file_programa_anual','Archivo del programa anual');
    $xcrud->label('monto_modificado','Monto modificado');
    $xcrud->label('presupuesto_modificado','Presupuesto modificado');

    $xcrud->label('denominacion','Denominación del documento');
    $xcrud->label('fecha_publicacion','Fecha de publicación');
    $xcrud->label('fecha_actualizacion','Fecha de actualización');
    $xcrud->label('fecha_validacion','Fecha de validación');
    $xcrud->label('programa_anual','Programa anual');
    $xcrud->label('area_responsable','Área responsable');
    $xcrud->label('anio','Año');

    $xcrud->label('active','Estatus');

    $xcrud->column_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $xcrud->column_tooltip('id_sujeto_obligado','Sujeto obligado con presupuesto asignado.');
    $xcrud->column_tooltip('presupuesto_original','Monto presupuestado originalmente.');
    $xcrud->column_tooltip('file_programa_anual','Archivo con el programa de presupuesto anual.');
    $xcrud->column_tooltip('monto_modificado','Monto de modificación, puede ser un número negativo o positivo.');
    $xcrud->column_tooltip('presupuesto_modificado','Monto calculado automáticamente con Presupuesto original y monto de modificación.');
    $xcrud->column_tooltip('active','Indica el estado de la información “Activa” o “Inactiva”.');

    $xcrud->change_type('presupuesto_original', 'price', '0', array('prefix'=>'$ '));
    $xcrud->change_type('monto_modificado', 'price', '0', array('prefix'=>'$ '));
    $xcrud->change_type('presupuesto_modificado', 'price', '0', array('prefix'=>'$ '));

    $xcrud->relation('id_ejercicio','cat_ejercicios','id_ejercicio','ejercicio');
    $xcrud->relation('id_sujeto_obligado','vso_contratante','id_sujeto_obligado','nombre_sujeto_obligado');
    $xcrud->relation('active','sys_active','id_active','name_active');

    $xcrud->field_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $xcrud->field_tooltip('id_sujeto_obligado','Sujeto obligado con presupuesto asignado.');
    $xcrud->field_tooltip('presupuesto_original','Monto presupuestado originalmente.');
    $xcrud->field_tooltip('file_programa_anual','Archivo con el programa de presupuesto anual.');
    $xcrud->field_tooltip('monto_modificado','Monto de modificación, puede ser un número negativo o positivo.');
    $xcrud->field_tooltip('presupuesto_modificado','Monto calculado automáticamente con Presupuesto original y monto de modificación.');
    $xcrud->field_tooltip('active','Indica el estado de la información “Activa” o “Inactiva”.');

    $xcrud->change_type('file_programa_anual', 'file', '', array('not_rename'=>true, 'path'=>'../data/programas/'));
/*
    $xcrud->sum('presupuesto_original,monto_modificado,presupuesto_modificado');
*/

    $detalle = $xcrud->nested_table('Desglose de partidas','id_presupuesto', 'tab_presupuestos_desglose','id_presupuesto');
    $detalle->table_name('Desglose de presupuesto');
    $detalle->unset_title();

    $detalle->columns('id_presupuesto_concepto, monto_presupuesto, monto_modificacion, active' );
    $detalle->fields('id_presupuesto_concepto, monto_presupuesto, monto_modificacion, fecha_validacion, area_responsable, periodo, fecha_actualizacion,nota, active' );

/*
fecha_validacion,
	area_responsable,
	periodo,
	fecha_actualizacion,
	nota,
*/
    $detalle->label('id_presupuesto_concepto','Partida presupuestal.');
    $detalle->label('monto_presupuesto','Monto asignado');
    $detalle->label('monto_modificacion','Monto de modificación');
    $detalle->label('monto_modificado','Monto modificado');
    $detalle->label('fecha_validacion','Fecha de validación');
    $detalle->label('area_responsable','Área responsable de la información');
    $detalle->label('periodo','Año');
    $detalle->label('fecha_actualizacion','Fecha de actualización');
    $detalle->label('nota','Nota');
    $detalle->label('denominacion','Denominación del documento');
    $detalle->label('fecha_publicacion','Fecha de publicación en el DOF');
    $detalle->label('active','Estado');

    $detalle->column_tooltip('id_presupuesto_concepto','Indica la clave de la partida presupuestal.');
    $detalle->column_tooltip('monto_presupuesto','Monto asignado correspondiente a la partida seleccionada.');
    $detalle->column_tooltip('monto_modificacion','Monto de modificación de la partida , puede ser un número negativo o positivo.');
    $detalle->column_tooltip('monto_modificado','Monto calculado automáticamente con Monto presupuestado de la partida y Monto de modificación de la partida.');
    $detalle->column_tooltip('active','Indica el estado de la información “Activa” o “Inactiva”.');

    $detalle->field_tooltip('id_presupuesto_concepto','Indica la clave de la partida presupuestal.');
    $detalle->field_tooltip('monto_presupuesto','Monto asignado correspondiente a la partida seleccionada.');
    $detalle->field_tooltip('monto_modificacion','Monto de modificación de la partida , puede ser un número negativo o positivo.');
    $detalle->field_tooltip('monto_modificado','Monto calculado automáticamente con Monto presupuestado de la partida y Monto de modificación de la partida.');
    $detalle->field_tooltip('fecha_validacion','Fecha de validación');
    $detalle->field_tooltip('area_responsable','Área responsable de la información');
    $detalle->field_tooltip('periodo','Año');
    $detalle->field_tooltip('fecha_actualizacion','Fecha de actualización');
    $detalle->field_tooltip('fecha_publicacion','Fecha de publicación en el DOF');
    $detalle->field_tooltip('denominacion','Denominación del documento');
    $detalle->field_tooltip('nota','Nota');
    $detalle->field_tooltip('active','Indica el estado de la información “Activa” o “Inactiva”.');


    $detalle->relation('id_presupuesto_concepto','vcap_conceptos','id_presupesto_concepto', array('capitulo','concepto','partida','denominacion'));
    $detalle->relation('active','sys_active','id_active','name_active');

    $detalle->change_type('monto_presupuesto', 'price', '0', array('prefix'=>'$ '));
/*
    $detalle->sum('monto_presupuesto');
*/

    $detalle->change_type('monto_modificacion', 'price', '0', array('prefix'=>'$ '));
  //  $detalle->sum('monto_modificacion');

    $detalle->subselect('monto_modificado','{monto_presupuesto}+{monto_modificacion}');

    $detalle->change_type('monto_modificado', 'price', '0', array('prefix'=>'$ '));
    $detalle->readonly('monto_modificado');
//    $detalle->sum('monto_modificado');

    $detalle->default_tab('Desglose de presupuesto');

    echo $xcrud->render();
?>
      </div>
   </div>

