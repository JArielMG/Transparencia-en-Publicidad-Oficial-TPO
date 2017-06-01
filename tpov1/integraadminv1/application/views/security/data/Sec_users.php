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
            <li style="width:25%" id="primero">
               <a href="Sys_Hub?v=Sec_users&g=security/data/" >Usuarios
               </a>
            </li>
            <li style="width:25%" >
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
    $xcrud->table('sec_users');
    $xcrud->table_name('Usuarios');
    $xcrud->unset_remove();
    $xcrud->unset_title();


    $xcrud->columns('username, email, fname, lname, last_update, active');
    $xcrud->fields('username, email, fname, lname, last_update, password, active');

    $xcrud->label('username','Usuario');
    $xcrud->label('email','Correo');
    $xcrud->label('fname','Nombre(s)');
    $xcrud->label('lname','Apellidos');
    $xcrud->label('active','Activo');
    $xcrud->label('last_update','Última actualización ');
    $xcrud->label('password','Clave');
    $xcrud->change_type('password', 'password', 'sha1');
    $xcrud->change_type('active','select','',array('a'=>'Activo','i'=>'Inactivo'));

    echo $xcrud->render();
?>                                                                
      </div>
   </div>

