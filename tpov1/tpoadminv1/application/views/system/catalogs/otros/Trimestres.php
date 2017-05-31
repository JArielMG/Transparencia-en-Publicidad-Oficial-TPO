   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('cat_trimestres');
    $xcrud->table_name('Trimestre');

    $xcrud->unset_title();
    $xcrud->label('nombre_trimestre','Trimestre');
    $xcrud->relation('active','sys_active','id_active','name_active');
    $xcrud->label('active','Estatus');
    echo $xcrud->render();
?>
      </div>
   </div>

