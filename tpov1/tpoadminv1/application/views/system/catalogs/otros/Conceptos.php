   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('cat_presupuesto_conceptos');
    $xcrud->table_name('Conceptos');

    $xcrud->unset_title();

    $xcrud->label('id_captura','Captura');
    $xcrud->label('active','Estatus');
    $xcrud->label('capitulo','Capítulo');
    $xcrud->label('denominacion','Denominación');
    $xcrud->label('descripcion','Descripción');
    $xcrud->change_type('descripcion', 'textarea');
    
    $xcrud->relation('id_captura','sys_logico','id_logico','logico');
    $xcrud->relation('active','sys_active','id_active','name_active');

    echo $xcrud->render();
?>
      </div>
   </div>

