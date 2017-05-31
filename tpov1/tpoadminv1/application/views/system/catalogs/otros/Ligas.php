   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('cat_tipo_liga');
    $xcrud->table_name('Tipo de ligas');

    $xcrud->unset_title();
    $xcrud->label('tipo_liga','Tipo de liga');
    $xcrud->relation('active','sys_active','id_active','name_active');
    $xcrud->label('active','Estatus');
    echo $xcrud->render();
?>
      </div>
   </div>

