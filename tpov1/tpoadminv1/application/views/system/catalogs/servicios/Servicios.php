   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('tab_servicios');
    $xcrud->unset_title();

    $xcrud->label('id_servicio_clasificacion','Clasificación');
    $xcrud->label('id_servicio_categoria','Categoria');
    $xcrud->label('id_servicio_subcategoria','Subcategoría');
    $xcrud->label('id_servicio_unidad','Unidad');
    $xcrud->label('nombre_servicio','Nombre');
    $xcrud->label('active','Activo');

    $xcrud->relation('id_servicio_clasificacion','cat_servicios_clasificacion','id_servicio_clasificacion','nombre_servicio_clasificacion');
    $xcrud->relation('id_servicio_categoria','cat_servicios_categorias','id_servicio_categoria','nombre_servicio_categoria',
                     '','','',' ','','id_servicio_clasificacion','id_servicio_clasificacion');
    $xcrud->relation('id_servicio_subcategoria','cat_servicios_subcategorias','id_servicio_subcategoria','nombre_servicio_subcategoria',
                     '','','',' ','','id_servicio_categoria','id_servicio_categoria');
    $xcrud->relation('id_servicio_unidad','cat_servicios_unidades','id_servicio_unidad','nombre_servicio_unidad',
                     '','','',' ','','id_servicio_subcategoria','id_servicio_subcategoria');
    $xcrud->relation('active','sys_active','id_active','name_active');

    echo $xcrud->render();
?>
      </div>
   </div>

