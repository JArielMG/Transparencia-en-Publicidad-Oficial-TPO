   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_D3D . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->connection(dbUSER,dbPASS,dbNAME,dbHOST,'utf8');
    
    $xcrud->table('tab_encuestas');
    $xcrud->table_name('Encuestas');

    $xcrud->unset_title();
    $xcrud->unset_add();
    $xcrud->unset_edit();


    $xcrud->change_type('active', 'password', '', 32);
    $xcrud->change_type('estatus', 'password', '', 32);
    $xcrud->columns('fechahora, soyun, interesadoen, gasto, meenterepor');
    $xcrud->fields('fechahora, soyun, interesadoen, gasto, meenterepor, megusta,  porque, comentarios, opinion');
//    $xcrud->readonly_on_edit('fechahora, soyun, interesadoen, gasto, meenterepor, megusta, porque, opinion');

    $xcrud->label('fechahora','Fecha Hora');
    $xcrud->label('soyun','Soy un');
    $xcrud->label('interesadoen','Interesado en');
    $xcrud->label('gasto','Entidad');
    $xcrud->label('meenterepor','Me enteré por');
    $xcrud->label('megusta','Fácil de usar');
    $xcrud->label('porque','Es útil');
    $xcrud->label('comentarios','Recomendar');
    $xcrud->label('opinion','Opinión');
//    $xcrud->label('active','Estatus');  
//    $xcrud->relation('estatus','vcat_estatus','id_catalog_data','catalog');
//    $xcrud->relation('active','vcat_logico','id_catalog_data','catalog');
    echo $xcrud->render();
?>
      </div>
   </div>

