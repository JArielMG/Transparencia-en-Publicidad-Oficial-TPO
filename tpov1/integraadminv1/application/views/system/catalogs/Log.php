<div class="page">
   <br>
   <div class="menu2">
      <ul>
            <li style="width:25%" >
               <a href="Sys_Hub?v=Catalogs&g=system/catalogs" >Catálogos
               </a>
            </li>
            <li style="width:25%"  >
               <a href="Sys_Hub?v=Estados&g=system/catalogs" >Estados
               </a>
            </li>
            <!--li style="width:20%" >
               <a href="Sys_Hub?v=Settings&g=system/catalogs" >Settings
               </a>
            </li-->
            <li style="width:25%" >
               <a href="Sys_Hub?v=Sec_users&g=security/data/" >Usuarios
               </a>
            </li>
            <li style="width:25%" id="primero">
               <a href="Sys_Hub?v=Log&g=system/catalogs" >Log
               </a>
            </li>
      </ul>
   </div>
</div>   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_D3D . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->connection(dbUSER,dbPASS,dbNAME,dbHOST,'utf8');

    $xcrud->table('sys_log');
    $xcrud->table_name('Logs');

    $xcrud->unset_title();
    $xcrud->unset_remove();
    $xcrud->unset_view();
    $xcrud->unset_edit();
    $xcrud->unset_add();

    $xcrud->columns('id_user, type, log, log_coments, log_ip, log_datetime');

    $xcrud->label('id_user','Usuario');
    $xcrud->label('type','Tipo');
    $xcrud->label('log','Acción');
    $xcrud->label('log_coments','Comentarios');
    $xcrud->label('log_ip','IP');
    $xcrud->label('log_datetime','Fecha y hora');

    $xcrud->relation('id_user','sec_users','id_user','username');

    echo $xcrud->render();
?>
      </div>
   </div>

