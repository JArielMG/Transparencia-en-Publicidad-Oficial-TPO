<div class="page">
   <br>
   <div class="menu2">
      <ul>
            <li style="width:20%" >
               <a href="Sys_Hub?v=Catalogs&g=system/catalogs" >Catalogos
               </a>
            </li>
            <li style="width:20%"  >
               <a href="Sys_Hub?v=Estados&g=system/catalogs" >Estados
               </a>
            </li>
            <li style="width:20%" id="primero">
               <a href="Sys_Hub?v=Settings&g=system/catalogs" >Settings
               </a>
            </li>
            <li style="width:20%" >
               <a href="Sys_Hub?v=Sec_users&g=security/data/" >Usuarios
               </a>
            </li>
            <li style="width:20%" >
               <a href="Sys_Hub?v=Log&g=system/catalogs" >Log
               </a>
            </li>
      </ul>
   </div>
</div>
   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_D3D . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('sys_settings');

    $xcrud->unset_title();
    $xcrud->unset_remove();
    $xcrud->unset_view();
/*
    $xcrud->label('dependencia','Dependencia');
    $xcrud->label('active','Activo');
    $xcrud->relation('active','vcat_logico','id_catalog_data','catalog');
*/
    echo $xcrud->render();
?>
      </div>
   </div>

