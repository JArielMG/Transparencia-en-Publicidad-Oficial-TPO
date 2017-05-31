   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('cat_so_estados');
    $xcrud->unset_title();
    $xcrud->unset_add();
    $xcrud->unset_view();
    $xcrud->table_name('Estados');

    $xcrud->label('estado','Estado');
    $xcrud->label('nombre_so_estado','Nombre del estado');
    $xcrud->label('codigo_so_estado','Código del estado');
    $xcrud->label('active','Estatus');

    $xcrud->relation('active','sys_active','id_active','name_active');
    echo $xcrud->render();
?>
      </div>
   </div>

