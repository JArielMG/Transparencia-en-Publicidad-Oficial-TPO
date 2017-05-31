   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('tab_sujetos_obligados');
    $xcrud->unset_title();
    $xcrud->default_tab('Sujetos obligados');
    $xcrud->table_name('Sujetos obligados');

    $xcrud->column_tooltip('nombre_sujeto_obligado', 'Son sujetos obligados a transparentar y permitir el acceso a su información y proteger los datos personales que obren en su poder: cualquier autoridad, entidad, órgano y organismo de los Poderes Ejecutivo, Legislativo y Judicial, órganos autónomos, partidos políticos, fideicomisos y fondos públicos, así como cualquier persona física, moral o sindicato que reciba y ejerza recursos públicos, así como cualquier persona física, moral o sindicato que reciba y ejerza recursos públicos o realice actos de autoridad en los ámbitos federal, de las Entidades Federativas y municipal.');
    $xcrud->column_tooltip('id_so_atribucion','Indica si el sujeto obligado tiene atribución de contratar servicios o productos, de solicitarlos, o ambos [Contratante, solicitante, ambos].');
    $xcrud->column_tooltip('active','Indica el estatus del usuario: a=Activo, i=Inactivo.');

    $xcrud->label('id_so_atribucion','Función');
    $xcrud->label('id_so_orden_gobierno','Orden');
    $xcrud->label('id_so_estado','Estado');
    $xcrud->label('nombre_sujeto_obligado','Nombre');
    $xcrud->label('siglas_sujeto_obligado','Siglas');
    $xcrud->label('url_sujeto_obligado','URL de página');
    $xcrud->label('active','Activo');

    $xcrud->field_tooltip('nombre_sujeto_obligado', 'Son sujetos obligados a transparentar y permitir el acceso a su información y proteger los datos personales que obren en su poder: cualquier autoridad, entidad, órgano y organismo de los Poderes Ejecutivo, Legislativo y Judicial, órganos autónomos, partidos políticos, fideicomisos y fondos públicos, así como cualquier persona física, moral o sindicato que reciba y ejerza recursos públicos, así como cualquier persona física, moral o sindicato que reciba y ejerza recursos públicos o realice actos de autoridad en los ámbitos federal, de las Entidades Federativas y municipal.');
    $xcrud->field_tooltip('id_so_atribucion','Indica si el sujeto obligado tiene atribución de contratar servicios o productos, de solicitarlos, o ambos [Contratante, solicitante, ambos].');
    $xcrud->field_tooltip('active','Indica el estatus del usuario: a=Activo, i=Inactivo.');

    $xcrud->relation('id_so_atribucion','cat_so_atribucion','id_so_atribucion','nombre_so_atribucion');
    $xcrud->relation('id_so_orden_gobierno','cat_so_ordenes_gobierno','id_so_orden_gobierno','nombre_so_orden_gobierno');
    $xcrud->relation('id_so_estado','cat_so_estados','id_so_estado','nombre_so_estado');

    $xcrud->relation('active','sys_active','id_active','name_active');

    echo $xcrud->render();
?>
      </div>
   </div>

