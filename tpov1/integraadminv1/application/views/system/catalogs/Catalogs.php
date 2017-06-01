<div class="page">
   <br>
   <div class="menu2">
      <ul>
            <li style="width:25%" id="primero" >
               <a href="Sys_Hub?v=Catalogs&g=system/catalogs" >Catálogos
               </a>
            </li>
            <li style="width:25%" >
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
            <li style="width:25%" >
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
      $xcrud->connection(dbUSER,dbPASS,dbNAME,dbHOST,'utf8');
      $xcrud->table('sys_catalogs');
      
      $xcrud->table_name('Catálogos');

      $xcrud->unset_title();
      $xcrud->unset_remove();

      $xcrud->label('catalog','Catálogo');
      $xcrud->label('active','Estatus');
      $xcrud->relation('active','vcat_logico','id_catalog_data','catalog');
      $xcrud->default_tab('Catálogos');

      $catalogo_data = $xcrud->nested_table('Detalle','id_catalog', 'sys_catalogs_data','id_catalog'); 
      $catalogo_data->connection(dbUSER,dbPASS,dbNAME,dbHOST,'utf8');

      $catalogo_data->unset_title();
      $catalogo_data->unset_remove();
      $catalogo_data->columns('catalog, order_catalog, active');
      $catalogo_data->fields('catalog, order_catalog, active');

      $catalogo_data->label('id_catalog','Identificador de Catálogo');
      $catalogo_data->label('catalog','Valor');
      $catalogo_data->label('order_catalog','Orden de catálogo');
      $catalogo_data->label('active','Estatus');
      $catalogo_data->relation('active','vcat_logico','id_catalog_data','catalog');
      $catalogo_data->default_tab('Catálogos');
      echo $xcrud->render();
   ?>
      </div>
   </div>
