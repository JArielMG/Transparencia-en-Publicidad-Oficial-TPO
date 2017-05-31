   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('cat_servicios_unidades');
    $xcrud->table_name('Unidades del servicio');

    $xcrud->unset_title();
    $xcrud->label('id_servicio_subcategoria','Subcategoría del servicio');
    $xcrud->label('nombre_servicio_unidad','Unidad del servicio');
    $xcrud->label('active','Estatus');
    $xcrud->relation('id_servicio_subcategoria','cat_servicios_subcategorias','id_servicio_subcategoria','nombre_servicio_subcategoria');
    $xcrud->relation('active','sys_active','id_active','name_active');
    echo $xcrud->render();
?>
      </div>
   </div>

