   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('cat_campana_subtipos');
    $xcrud->table_name('Subtipo de campaña o aviso institucional');

    $xcrud->unset_title();
    $xcrud->label('nombre_campana_subtipo','Subtipo de campaña o aviso institucional');
    $xcrud->label('id_campana_tipo','Tipo de campaña o aviso institucional');
    $xcrud->label('active','Estatus');

    $xcrud->relation('id_campana_tipo','cat_campana_tipos','id_campana_tipo','nombre_campana_tipo');
    $xcrud->relation('active','sys_active','id_active','name_active');
    echo $xcrud->render();
?>
      </div>
   </div>

