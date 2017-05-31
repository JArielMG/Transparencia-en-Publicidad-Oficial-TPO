<?php
      $opciones = array("security/data/Sec_users", "pages/Sujetos", "system/base/LoadLogo", "pages/Proveedores");
?>
   <!--nav class="pushy pushy-left">
      <ul>
         <li><a href="Sys_Hub?v=facturas&g=system/catalogs">Facturas</a></li>
         <li><a href="Sys_Hub?v=ordenes&g=system/catalogs">Ordenes Compra</a></li>
         <li><a href="Sys_Hub?v=Mensajes&g=system/catalogs">Mensajes</a></li>
         <li><a href="Sys_Hub?v=Catalogs&g=system/catalogs">Catalogos</a></li>
         <li><a href="Sys_Hub?v=Estados&g=system/catalogs">Estados</a></li>
         <li><a href="Sys_Hub?v=Sec_users&g=security/data/">Usuario</a></li>
         <li><a href="Sys_Hub?v=Log&g=system/catalogs">Log</a></li>
         <li><a href="Sec_Login">Salir</a></li>
      </ul>
   </nav-->
   <div class="site-overlay"></div>
   <div class="page">
      <br>	        
      <div class="menu" style="margin-top:15px;">
         <ul>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Sec_users&g=security/data"
                  <?php if ($liga === 'security/data/Sec_users')  { echo 'id="primero"'; } ?> > Usuarios
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Sujetos&g=pages"
                  <?php if ($liga === 'pages/Sujetos')  { echo 'id="primero"'; } ?> > Sujetos obligados
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Coberturas&g=system/catalogs/campanas"
                  <?php if (!(in_array( $liga, $opciones))) { echo 'id="primero"'; } ?> > Catálogos
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=LoadLogo&g=system/base"
                  <?php if ($liga === 'system/base/LoadLogo') { echo 'id="primero"'; } ?> > Carga logo
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sec_Login" >Salir</a>
            </li>
         </ul>
      </div>
   </div>
   <div class="menu-btn" style="padding-left:5%;">&#9776; Menu</div>
      <?php if (!(in_array( $liga, $opciones))) { include( DIR_ROOT . 'application/views/system/base/submenus/Submenu.php'); } ?> 


