   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('tab_proveedores');
    $xcrud->default_tab('Proveedores');
    
//    $xcrud->before_insert('validatePorveedorI', 'functions.php');
//    $xcrud->before_update('validatePorveedorU', 'functions.php');


    $xcrud->unset_title();
    $xcrud->columns('id_personalidad_juridica, nombre_razon_social, nombre_comercial, rfc, active');

    $xcrud->label('id_personalidad_juridica','Personalidad jurídica');
    $xcrud->label('nombre_razon_social','Nombre o razón social');
    $xcrud->label('nombre_comercial','Nombre comercial');
    $xcrud->label('rfc','R.F.C.');
    $xcrud->label('active','Estatus');


    $xcrud->column_tooltip('id_personalidad_juridica', 'Indica si el prestador de servicios es una persona física o una persona moral.');
    $xcrud->column_tooltip('nombre_razon_social', 'Nombre, en caso de persona física [Nombre(s), primer apellido y segundo apellido], o razón social, en caso de persona moral, del prestador de servicios.');
    $xcrud->column_tooltip('nombre_comercial', 'En caso de ser persona moral, el nombre comercial del prestador de servicios.');
    $xcrud->column_tooltip('rfc', 'Registro Federal de Contribuyentes de la persona física o moral  proveedora del producto o servicio.');
    $xcrud->column_tooltip('active', 'Indica el estado de la información “Activa” o “Inactiva”.');

    $xcrud->relation('id_personalidad_juridica','cat_personalidad_juridica','id_personalidad_juridica','nombre_personalidad_juridica');
    $xcrud->relation('active','sys_active','id_active','name_active');

    $xcrud->field_tooltip('id_personalidad_juridica', 'Indica si el prestador de servicios es una persona física o una persona moral.');
    $xcrud->field_tooltip('nombre_razon_social', 'Nombre, en caso de persona física [Nombre(s), primer apellido y segundo apellido], o razón social, en caso de persona moral, del prestador de servicios.');
    $xcrud->field_tooltip('nombre_comercial', 'En caso de ser persona moral, el nombre comercial del prestador de servicios.');
    $xcrud->field_tooltip('rfc', 'Registro Federal de Contribuyentes de la persona física o moral  proveedora del producto o servicio.');
    $xcrud->field_tooltip('active', 'Indica el estado de la información “Activa” o “Inactiva”.');

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
    $xcrud->field_tooltip('primer_apellido','Primer Apellido');
    $xcrud->field_tooltip('segundo_apellido','Segundo Apellido');
    $xcrud->field_tooltip('nombres','Nombres');

//    $xcrud->condition('id_personalidad_juridica','=','1','disabled','nombre_comercial  ');
    echo $xcrud->render();
?>
      </div>
   </div>

