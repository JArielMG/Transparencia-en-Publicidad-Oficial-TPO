   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('cat_servicios_subcategorias');
    $xcrud->table_name('Subcategoría del servicio');

    $xcrud->unset_title();
    $xcrud->label('id_servicio_categoria','Categoría del servicios');
    $xcrud->label('nombre_servicio_subcategoria','Subcategoría del servicio');
    $xcrud->label('id_servicio_categoria','Categoría del servicio');
    $xcrud->label('active','Estatus');
    $xcrud->relation('id_servicio_categoria','cat_servicios_categorias','id_servicio_categoria','nombre_servicio_categoria');
    $xcrud->relation('active','sys_active','id_active','name_active');
    echo $xcrud->render();
?>
      </div>
   </div>

