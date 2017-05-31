   <div class="page">
      <div style="width:100%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('tab_ordenes_compra');
    $xcrud->where('id_orden_compra >', 1);
    $xcrud->table_name('Órdenes de compra');
    $xcrud->after_upload('after_upload_oc', 'functions.php');


    $xcrud->unset_title();
    $xcrud->columns('id_ejercicio, id_trimestre, id_proveedor, id_campana_aviso, numero_orden_compra, active');

    $xcrud->fields('id_proveedor,id_procedimiento,id_contrato,id_ejercicio,id_trimestre,id_so_contratante,id_campana_aviso,id_so_solicitante,numero_orden_compra,descripcion_justificacion,motivo_adjudicacion,active,fecha_orden,file_orden, fecha_validacion, area_responsable, periodo, fecha_actualizacion, nota');

    $xcrud->label('id_proveedor','Nombre o razón social del proveedor');
    $xcrud->label('id_procedimiento','Procedimiento');
    $xcrud->label('id_contrato','Contrato');
    $xcrud->label('id_ejercicio','Ejercicio');
    $xcrud->label('id_trimestre','Trimestre');
    $xcrud->label('id_so_contratante','Sujeto obligado ordenante');
    $xcrud->label('id_campana_aviso','Campaña o aviso institucional');
    $xcrud->label('id_so_solicitante','Sujeto obligado solicitante');
    $xcrud->label('numero_orden_compra','Orden de compra');
    $xcrud->label('descripcion_justificacion','Justificación');
    $xcrud->label('motivo_adjudicacion','Motivo de adjudicación');
    $xcrud->label('active','Estatus');
    $xcrud->label('fecha_orden','Fecha de orden');
    $xcrud->label('file_orden','Archivo de la orden de compra en PDF');
    $xcrud->label('fecha_validacion','Fecha de validación');
    $xcrud->label('area_responsable','Área responsable de la información');
    $xcrud->label('periodo','Año');
    $xcrud->label('fecha_actualizacion','Fecha de actualización');
    $xcrud->label('nota','Nota');

    $xcrud->field_tooltip('fecha_validacion','Fecha de validación');
    $xcrud->field_tooltip('area_responsable','Área responsable de la información');
    $xcrud->field_tooltip('periodo','Año');
    $xcrud->field_tooltip('fecha_actualizacion','Fecha de actualización');
    $xcrud->field_tooltip('nota','Nota');
    $xcrud->column_tooltip('id_procedimiento','ndica el tipo de procedimiento de contratación.');
    $xcrud->column_tooltip('id_proveedor','Indica el nombre de la persona física o moral proveedora del producto o servicio.');
    $xcrud->column_tooltip('id_contrato','Clave o número de identificación único del contrato.');
    $xcrud->column_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $xcrud->column_tooltip('id_trimestre','Indica el trimestre que se reporta (enero – marzo, abril-junio, julio-septiembre,  octubre-diciembre ).');
    $xcrud->column_tooltip('id_so_contratante','Indica el nombre del sujeto obligado que celebra el contrato u orden de compra con el proveedor.');
    $xcrud->column_tooltip('id_so_solicitante','Indica el nombre del sujeto que solicitó el producto o servicio aunque éste no sea quien celebra el contrato u orden de compra con el proveedor (Ej. Sujeto obligado solicitante: Secretaría de Cultura; sujeto obligado contratante: Coordinación General de Comunicación Social).');
    $xcrud->column_tooltip('id_campana_aviso','Indica el nombre de la campaña o aviso institucional  a la que pertenece.');
    $xcrud->column_tooltip('numero_orden_compra','Clave o número de identificación único de la orden de compra.');
    $xcrud->column_tooltip('descripcion_justificacion','Motivo o razones que justifican la elección del proveedor.');
    $xcrud->column_tooltip('fecha_orden','Fecha de la orden de compra con el formato dd/mm/aaaa (por ej. 31/12/2016)');
    $xcrud->column_tooltip('file_orden','Archivo electrónico de la orden de compra en formato PDF.');
    $xcrud->column_tooltip('id_servicio_clasificacion','Indica el nombre de la clasificación del servicio.');
    $xcrud->column_tooltip('id_servicio_categoria','Indica el nombre de la categoría del servicio.');
    $xcrud->column_tooltip('id_servicio_subcategoria','Indica el nombre de la subcategoría del servicio.');
    $xcrud->column_tooltip('id_servicio_unidad','Indica la unidad de medida del producto o servicio.');     
    $xcrud->column_tooltip('monto_servicio','Monto total de la orden de compra, con I.V.A. incluido. ');
    $xcrud->column_tooltip('active','Indica el estado de la información correspondiente al registro, “Activa” o “Inactiva”.');
    $xcrud->column_tooltip('servicio_activo','Indica si el Servicio Contrado esta activo');

    $xcrud->relation('id_procedimiento','cat_procedimientos','id_procedimiento','nombre_procedimiento');
    $xcrud->relation('id_proveedor','tab_proveedores','id_proveedor','nombre_razon_social');
    $xcrud->relation('id_contrato','tab_contratos','id_contrato','numero_contrato');
    $xcrud->relation('id_ejercicio','cat_ejercicios','id_ejercicio','ejercicio');
    $xcrud->relation('id_trimestre','cat_trimestres','id_trimestre','trimestre');
    $xcrud->relation('id_so_contratante','vso_contratante','id_sujeto_obligado','nombre_sujeto_obligado');
    $xcrud->relation('id_so_solicitante','vso_solicitante','id_sujeto_obligado','nombre_sujeto_obligado');
    $xcrud->relation('id_campana_aviso','tab_campana_aviso','id_campana_aviso','nombre_campana_aviso');
    $xcrud->relation('servicio_activo','sys_active','id_active','name_active');
    $xcrud->relation('active','sys_active','id_active','name_active');

    $xcrud->relation('id_servicio_clasificacion','cat_servicios_clasificacion','id_servicio_clasificacion', 'nombre_servicio_clasificacion');
    $xcrud->relation('id_servicio_categoria','cat_servicios_categorias','id_servicio_categoria','nombre_servicio_categoria',
                     'active=1', '', '', '', '', 'id_servicio_clasificacion','id_servicio_clasificacion');
    $xcrud->relation('id_servicio_subcategoria','cat_servicios_subcategorias','id_servicio_subcategoria','nombre_servicio_subcategoria',
                     'active=1', '', '', '', '', 'id_servicio_categoria','id_servicio_categoria');
    $xcrud->relation('id_servicio_unidad','cat_servicios_unidades','id_servicio_unidad','nombre_servicio_unidad',
                     'active=1', '', '', '', '', 'id_servicio_subcategoria','id_servicio_subcategoria');     


    $xcrud->field_tooltip('id_procedimiento','ndica el tipo de procedimiento de contratación.');
    $xcrud->field_tooltip('id_proveedor','Indica el nombre de la persona física o moral proveedora del producto o servicio.');
    $xcrud->field_tooltip('id_contrato','Clave o número de identificación único del contrato.');
    $xcrud->field_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $xcrud->field_tooltip('id_trimestre','Indica el trimestre que se reporta (enero – marzo, abril-junio, julio-septiembre,  octubre-diciembre ).');
    $xcrud->field_tooltip('id_so_contratante','Indica el nombre del sujeto obligado que celebra el contrato u orden de compra con el proveedor.');
    $xcrud->field_tooltip('id_so_solicitante','Indica el nombre del sujeto que solicitó el producto o servicio aunque éste no sea quien celebra el contrato u orden de compra con el proveedor (Ej. Sujeto obligado solicitante: Secretaría de Cultura; sujeto obligado contratante: Coordinación General de Comunicación Social).');
    $xcrud->field_tooltip('id_campana_aviso','Indica el nombre de la campaña o aviso institucional  a la que pertenece.');
    $xcrud->field_tooltip('numero_orden_compra','Clave o número de identificación único de la orden de compra.');
    $xcrud->field_tooltip('descripcion_justificacion','Motivo o razones que justifican la elección del proveedor.');
    $xcrud->field_tooltip('fecha_orden','Fecha de la orden de compra con el formato dd/mm/aaaa (por ej. 31/12/2016)');
    $xcrud->field_tooltip('file_orden','Archivo electrónico de la orden de compra en formato PDF.');
    $xcrud->field_tooltip('id_servicio_clasificacion','Indica el nombre de la clasificación del servicio.');
    $xcrud->field_tooltip('id_servicio_categoria','Indica el nombre de la categoría del servicio.');
    $xcrud->field_tooltip('id_servicio_subcategoria','Indica el nombre de la subcategoría del servicio.');
    $xcrud->field_tooltip('id_servicio_unidad','Indica la unidad de medida del producto o servicio.');     
    $xcrud->field_tooltip('monto_servicio','Monto total de la orden de compra, con I.V.A. incluido. ');
    $xcrud->field_tooltip('active','Indica el estado de la información correspondiente al registro, “Activa” o “Inactiva”.');
    $xcrud->field_tooltip('servicio_activo','Indica si el Servicio Contrado esta activo');


    $xcrud->change_type('file_orden', 'file', '', array('not_rename'=>true, 'path'=>'../data/ordenes/'));
    $xcrud->default_tab('Órden de compra');

    echo $xcrud->render();
?>
      </div>
   </div>

