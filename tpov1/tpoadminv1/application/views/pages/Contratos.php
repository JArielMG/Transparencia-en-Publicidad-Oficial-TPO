   <div class="page">
         <a href="../tpov1/Sys_Export?exp=contratosyordenes" style="float: right;margin-top:5px"
            class="btn btn-default">
            <i class="glyphicon glyphicon-file"></i> Exportar datos
         </a><br><br>
      <div style="width:100%;margin:auto;">     
<?php
    $user_id = getD3D("user_id");
    $so_tipo = getD3D('so_tipo');
    $so_act  = getD3D('so_act');
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('tab_contratos');
    $xcrud->where('id_contrato >', 1);
    $xcrud->table_name('Contratos');
    $xcrud->after_upload('after_upload_contrato', 'functions.php');

    $xcrud->unset_title();
    $xcrud->unset_csv();
    $xcrud->columns('id_ejercicio, id_trimestre, id_so_contratante, id_so_solicitante, numero_contrato, id_proveedor, monto_contrato, Monto modificado, Monto total, Monto pagado a la fecha, active, fecha_validacion, area_responsable, periodo, fecha_actualizacion, nota');

    $xcrud->label('id_procedimiento','Procedimiento');
    $xcrud->label('id_proveedor','Nombre o razón social del proveedor');
    $xcrud->label('id_ejercicio','Ejercicio');
    $xcrud->label('id_trimestre','Trimestre');
    $xcrud->label('id_so_contratante','Sujeto obligado contratante');
    $xcrud->label('id_so_solicitante','Sujeto obligado solicitante');
    $xcrud->label('numero_contrato','Número de contrato');
    $xcrud->label('objeto_contrato','Objeto del contrato');
    $xcrud->label('descripcion_justificacion','Descripción');
    $xcrud->label('fundamento_juridico','Fundamento jurídico');
    $xcrud->label('fecha_celebracion','Fecha de celebración');
    $xcrud->label('fecha_inicio','Fecha de inicio');
    $xcrud->label('fecha_fin','Fecha de término');
    $xcrud->label('monto_contrato','Monto original del contrato');
    $xcrud->label('file_contrato','Archivo del contrato en PDF');
    $xcrud->label('active','Estatus');
    $xcrud->label('fecha_validacion','Fecha de validación');
    $xcrud->label('area_responsable','Área responsable de la información');
    $xcrud->label('periodo','Año');
    $xcrud->label('fecha_actualizacion','Fecha de actualización');
    $xcrud->label('nota','Nota');

    $xcrud->subselect('Monto modificado','SELECT SUM(monto_convenio) FROM tab_convenios_modificatorios WHERE id_contrato = {id_contrato} and active=1'); 
    $xcrud->subselect('Monto total','SELECT SUM(monto_convenio)+{monto_contrato} FROM tab_convenios_modificatorios WHERE id_contrato = {id_contrato} and active=1'); 

    $xcrud->subselect('Monto pagado a la fecha','SELECT SUM(a.monto_desglose) FROM tab_facturas_desglose a, tab_facturas b WHERE a.id_factura = b.id_factura and b.id_contrato = {id_contrato}');

    $xcrud->change_type('Monto modificado', 'price', '0', array('prefix'=>'$ '));
    $xcrud->change_type('Monto total', 'price', '0', array('prefix'=>'$ '));
    $xcrud->change_type('Monto pagado a la fecha', 'price', '0', array('prefix'=>'$ '));

    $xcrud->column_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $xcrud->column_tooltip('id_trimestre','Indica el trimestre que se reporta (enero – marzo, abril-junio, julio-septiembre,  octubre-diciembre ).');
    $xcrud->column_tooltip('id_so_contratante','Indica el nombre del sujeto obligado que celebra el contrato u orden de compra con el proveedor.');
    $xcrud->column_tooltip('id_so_solicitante','Indica el nombre del sujeto que solicitó el producto o servicio aunque éste no sea quien celebra el contrato u orden de compra con el proveedor (Ej. Sujeto obligado solicitante: Secretaría de Cultura; sujeto obligado contratante: Coordinación General de Comunicación Social).');
    $xcrud->column_tooltip('numero_contrato','Clave o número de identificación único del contrato.');
    $xcrud->column_tooltip('monto_contrato','Monto total del contrato, con I.V.A. incluido.');
    $xcrud->column_tooltip('Monto modificado','Suma de los  montos de los convenios modificatorios.');
    $xcrud->column_tooltip('Monto total','Suma del monto original del contrato, más el monto modificado.');
    $xcrud->column_tooltip('Monto pagado a la fecha','Monto pagado al periodo publicado.');
    $xcrud->column_tooltip('active','Indica el estado de la información correspondiente al registro, “Activa” o “Inactiva”.');

    $xcrud->column_tooltip('id_proveedor','Nombre o razón social del proveedor');
    $xcrud->column_tooltip('descripcion_justificacion','Descripción breve de los motivos que justifican la elección del proveedor');
    $xcrud->column_tooltip('fecha_celebracion','Fecha de firma de contrato, con el formato dd/mm/aaaa (por ej. 31/03/2016)');
    $xcrud->column_tooltip('objeto_contrato','Indica el objeto del contrato');
    $xcrud->column_tooltip('id_procedimiento','Indica el tipo de procedimiento de contratación  [licitación pública, adjudicación directa, invitación restringida]');
    $xcrud->column_tooltip('fundamento_juridico','Fundamento jurídico del procedimiento de contratación');

    $xcrud->column_tooltip('fecha_inicio','Indica la fecha de inicio de los servicios contratados, con el formato dd/mm/aaaa (por ej. 31/03/2016)');
    $xcrud->column_tooltip('fecha_fin','Indica la fecha de término de los servicios contratados, con el formato dd/mm/aaaa (por ej. 31/03/2016)');
    $xcrud->column_tooltip('file_contrato','Archivo del contrato en PDF');
    $xcrud->field_tooltip('fecha_validacion','Fecha de validación');
    $xcrud->field_tooltip('area_responsable','Área responsable de la información');
    $xcrud->field_tooltip('periodo','Año');
    $xcrud->field_tooltip('fecha_actualizacion','Fecha de actualización');
    $xcrud->field_tooltip('nota','Nota');

    $xcrud->change_type('monto_contrato', 'price', '0', array('prefix'=>'$ '));

    $xcrud->relation('id_ejercicio','cat_ejercicios','id_ejercicio','ejercicio');
    $xcrud->relation('id_trimestre','cat_trimestres','id_trimestre','trimestre');

    if ($so_tipo == 1) { // Contratante
       $xcrud->relation('id_so_contratante','vso_contratante','id_sujeto_obligado','nombre_sujeto_obligado', 
         array('id_sujeto_obligado' => $so_act ));
    } else { 
       $xcrud->relation('id_so_contratante','vso_contratante','id_sujeto_obligado','nombre_sujeto_obligado');
    } 

    $xcrud->relation('id_so_solicitante','vso_solicitante','id_sujeto_obligado','nombre_sujeto_obligado');
    $xcrud->relation('id_proveedor','tab_proveedores','id_proveedor','nombre_razon_social');
    $xcrud->relation('id_procedimiento','cat_procedimientos','id_procedimiento','nombre_procedimiento');
    $xcrud->relation('active','sys_active','id_active','name_active');
    $xcrud->change_type('file_contrato', 'file', '', array('not_rename'=>true, 'path'=>'../data/contratos/'));

    $xcrud->field_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $xcrud->field_tooltip('id_trimestre','Indica el trimestre que se reporta (enero – marzo, abril-junio, julio-septiembre,  octubre-diciembre ).');
    $xcrud->field_tooltip('id_so_contratante','Indica el nombre del sujeto obligado que celebra el contrato u orden de compra con el proveedor.');
    $xcrud->field_tooltip('id_so_solicitante','Indica el nombre del sujeto que solicitó el producto o servicio aunque éste no sea quien celebra el contrato u orden de compra con el proveedor (Ej. Sujeto obligado solicitante: Secretaría de Cultura; sujeto obligado contratante: Coordinación General de Comunicación Social).');
    $xcrud->field_tooltip('numero_contrato','Clave o número de identificación único del contrato.');
    $xcrud->field_tooltip('id_procedimiento','Indica el tipo de procedimiento administrativo que se llevó a cabo para la contratación.');
    $xcrud->field_tooltip('id_proveedor','Indica el nombre de la persona física o moral proveedora del producto o servicio.');
    $xcrud->field_tooltip('objeto_contrato','Indica las obligaciones  creadas y la razón de ser del contrato.');
    $xcrud->field_tooltip('descripcion_justificacion','Descripción breve de las razones que justifican la elección de tal proveedor.');
    $xcrud->field_tooltip('fundamento_juridico','Fundamento jurídico del procedimiento de contratación.');
    $xcrud->field_tooltip('fecha_celebracion','Fecha de firma de contrato, con el formato dd/mm/aaaa (por ej. 31/03/2016)');
    $xcrud->field_tooltip('fecha_inicio','Indica la fecha de inicio de servicios.');
    $xcrud->field_tooltip('fecha_fin','Indica la fecha de finalización de los servicios.');
    $xcrud->field_tooltip('monto_contrato','Indica el monto total del contrato con I.V.A. incluido.');
    $xcrud->field_tooltip('file_contrato','Archivo de la versión pública del contrato en formato PDF.');
    $xcrud->field_tooltip('active','Indica el estado de la información correspondiente al registro, “Activa” o “Inactiva”.');

    $xcrud->change_type('file_contrato', 'file', '', array('not_rename'=>true, 'path'=>'../data/contratos/'));
/*
    $xcrud->sum('monto_contrato');
*/    
    $xcrud->default_tab('Contrato');

    $convenios = $xcrud->nested_table('Convenios modificatorios','id_contrato', 'tab_convenios_modificatorios','id_contrato'); 
    $convenios->unset_title();
    $convenios->columns('id_ejercicio, id_trimestre, numero_convenio, monto_convenio, active' );
    $convenios->table_name('Convenios modificatorios');

    $convenios->fields('id_ejercicio, id_trimestre, numero_convenio, objeto_convenio, fundamento_juridico, fecha_celebracion, monto_convenio, active, file_convenio, fecha_validacion, area_responsable, periodo, fecha_actualizacion, nota' );
    $convenios->label('file_convenio','Archivo del convenio en PDF');    
    $convenios->label('id_ejercicio','Ejercicio');
    $convenios->label('id_trimestre','Trimestre');
    $convenios->label('numero_convenio','Convenio modificatorio');
    $convenios->label('objeto_convenio','Objeto');
    $convenios->label('fundamento_juridico','Fundamento jurídico');
    $convenios->label('fecha_celebracion','Fecha de celebración');
    $convenios->label('monto_convenio','Monto');
    $convenios->label('active','Estatus');
    $convenios->label('fecha_validacion','Fecha de validación');
    $convenios->label('area_responsable','Área responsable de la información');
    $convenios->label('periodo','Año');
    $convenios->label('fecha_actualizacion','Fecha de actualización');
    $convenios->label('nota','Nota');

    $convenios->field_tooltip('fecha_validacion','Fecha de validación');
    $convenios->field_tooltip('area_responsable','Área responsable de la información');
    $convenios->field_tooltip('periodo','Año');
    $convenios->field_tooltip('fecha_actualizacion','Fecha de actualización');
    $convenios->field_tooltip('nota','Nota');
    $convenios->field_tooltip('fecha_celebracion','Fecha de celebración');

    $convenios->column_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $convenios->column_tooltip('id_trimestre','Indica el trimestre que se reporta (enero – marzo, abril-junio, julio-septiembre,  octubre-diciembre ).');
    $convenios->column_tooltip('numero_convenio','Número del convenio');
    $convenios->column_tooltip('objeto_convenio','Indica el objeto del contrato');
    $convenios->column_tooltip('fundamento_juridico','Fundamento jurídico del procedimiento de contratación');
    $convenios->column_tooltip('fecha_celebracion','Indica la fecha del concenio, con el formato dd/mm/aaaa (por ej. 31/03/2016)');
    $convenios->column_tooltip('monto_convenio','Indica el monto del convenio modificatorio, en caso que aplique.');

    $convenios->relation('id_ejercicio','cat_ejercicios','id_ejercicio','ejercicio');
    $convenios->relation('id_trimestre','cat_trimestres','id_trimestre','trimestre');
    $convenios->relation('active','sys_active','id_active','name_active');

    $convenios->field_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $convenios->field_tooltip('id_trimestre','Indica el trimestre que se reporta (enero – marzo, abril-junio, julio-septiembre,  octubre-diciembre ).');
    $convenios->field_tooltip('numero_convenio',' Clave o número de identificación único del convenio.');
    $convenios->field_tooltip('monto_convenio','Indica el monto total del convenio modificatorio con I.V.A. incluido.');
    $convenios->field_tooltip('objeto_convenio','Indica el objeto del contrato');
    $convenios->field_tooltip('fundamento_juridico','Fundamento jurídico del procedimiento de contratación');
    $convenios->field_tooltip('fecha_celebracion','Indica la fecha del concenio, con el formato dd/mm/aaaa (por ej. 31/03/2016)');
    $convenios->field_tooltip('active','Indica el estado de la información correspondiente al registro, “Activa” o “Inactiva”.');

    $convenios->change_type('monto_convenio', 'price', '0', array('prefix'=>'$ '));
    $convenios->change_type('file_convenio', 'file', '', array('not_rename'=>true, 'path'=>'../data/convenios/'));
    $convenios->default_tab('Convenio modificatorio');
    echo $xcrud->render();
?>
      </div>
   </div>

