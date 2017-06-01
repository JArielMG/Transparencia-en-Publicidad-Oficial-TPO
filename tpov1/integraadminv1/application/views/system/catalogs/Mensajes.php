   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_D3D . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->connection(dbUSER,dbPASS,dbNAME,dbHOST,'utf8');
    
    $xcrud->table('tab_mensajes');
    $xcrud->table_name('Mensajes');

    $xcrud->unset_title();
    $xcrud->unset_remove();
    $xcrud->unset_add();

    $xcrud->readonly('name,email,city');

    $xcrud->columns('nombre, correo, asunto, mensaje, fechahora, comentarios, estatus');
    $xcrud->fields('nombre, correo, asunto, mensaje, fechahora, comentarios, estatus');
    $xcrud->readonly_on_edit('nombre, correo, asunto, mensaje, fechahora');

    $xcrud->label('nombre','Nombre');
    $xcrud->label('correo','Correo');
    $xcrud->label('asunto','Asunto');
    $xcrud->label('mensaje','Mensaje');
    $xcrud->label('fechahora','Fecha Hora');
    $xcrud->label('comentarios','Comentarios');
    $xcrud->label('estatus','Estatus del mensaje');
    $xcrud->label('active','Estatus');

    $xcrud->relation('estatus','vcat_estatus','id_catalog_data','catalog');
    $xcrud->relation('active','vcat_logico','id_catalog_data','catalog');
    echo $xcrud->render();
?>
      </div>
   </div>

