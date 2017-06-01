   <div class="page">
      <div style="width:100%;margin:auto;">
      <br>
         <a href="Sys_Exportso" class="btn btn-default" style="float:right;">
            <i class="glyphicon glyphicon-file" ></i> Exportar datos
         </a>      
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_D3D . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->connection(dbUSER,dbPASS,dbNAME,dbHOST,'utf8');
    $xcrud->table('tab_sujetos_obligados');
    $xcrud->table_name('Sujetos obligados implementadores');

    $xcrud->unset_title();

    $xcrud->columns('nombre_sujeto_obligado, id_orden_gobierno, id_estado, id_tipo_sujeto_obligado, url, id_atribucion, active');
    $xcrud->fields('nombre_sujeto_obligado, id_orden_gobierno, id_estado, id_tipo_sujeto_obligado, url,  id_atribucion, active');
							
    $xcrud->label('nombre_sujeto_obligado','Nombre');
    $xcrud->label('id_orden_gobierno','Orden de gobierno');
    $xcrud->label('id_estado','Estado');
    $xcrud->label('id_tipo_sujeto_obligado','Tipo de sujeto obligado');
    $xcrud->label('url','URL del portal');
//    $xcrud->label('id_participacion','Participación');
    $xcrud->label('id_atribucion','Función');
    $xcrud->label('active','Estatus');
    $xcrud->unset_csv();
    $xcrud->unset_print();

//    $xcrud->relation('id_participacion','vcat_sino','id_catalog_data','catalog');
    $xcrud->relation('id_atribucion','vcat_atribucion','id_catalog_data','catalog');
    $xcrud->relation('active','vcat_logico','id_catalog_data','catalog');
    $xcrud->relation('id_orden_gobierno','vcat_orden_gobierno','id_catalog_data','catalog');
    $xcrud->relation('id_estado','cat_estados','id_estado','estado');
    $xcrud->relation('id_tipo_sujeto_obligado','vcat_tipo_so','id_catalog_data','catalog');
    $xcrud->change_type('id_participacion', 'password', '', 32);
    $xcrud->default_tab('Sujetos obligados');

    $SP = $xcrud->nested_table('Servidores públicos','id_sujeto_obligado', 'tab_servidor_publico','id_sujetos_obligados'); 
    $SP->connection(dbUSER,dbPASS,dbNAME,dbHOST,'utf8');
    $SP->table_name('Servidores públicos');
    $SP->unset_title();
    $SP->columns('nombre_servidor_publico, cargo, correo, telefono, active');
    $SP->fields('nombre_servidor_publico, cargo, correo, telefono, active');
    $SP->unset_csv();
    $SP->unset_print();
 
    $SP->label('nombre_servidor_publico','Nombre');
    $SP->label('cargo','Cargo');
    $SP->label('correo','Correo Electrónico');
    $SP->label('telefono','Teléfono');
    $SP->label('active','Estatus');
    $SP->relation('active','vcat_logico','id_catalog_data','catalog');
    $SP->default_tab('Servidores públicos');

    echo $xcrud->render();
?>
      </div>
   </div>

