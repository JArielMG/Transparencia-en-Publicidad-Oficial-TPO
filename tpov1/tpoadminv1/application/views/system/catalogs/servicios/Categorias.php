   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('cat_servicios_categorias');
    $xcrud->table_name('Categoría del servicio');

    $xcrud->unset_title();
    $xcrud->label('nombre_servicio_categoria','Categoría del servicio');
    $xcrud->label('id_servicio_clasificacion','Clasificación del servicio');
    $xcrud->label('active','Estatus');
    $xcrud->relation('id_servicio_clasificacion','cat_servicios_clasificacion','id_servicio_clasificacion','nombre_servicio_clasificacion');
    $xcrud->relation('active','sys_active','id_active','name_active');
    echo $xcrud->render();
?>
      </div>
   </div>

