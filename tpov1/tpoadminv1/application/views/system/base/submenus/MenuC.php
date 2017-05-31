   <?php
      $liga = getD3D("group_act") . getD3D("page_act");
   ?>
   <style>
         .menu {
            display: block;
         }
         .menu2 {
            display: block;
         }
         .menu-btn {
            display:  none;
         }
/*

      @media (max-width: 1000px) {
         .menu {
            display: none;
         }
         .menu2 {
            display: none;
         }
         .menu-btn {
            display:  block;
         }
      }
      @media (min-width: 1000px) {
         .menu {
            display: block;
         }
         .menu2 {
            display: block;
         }
         .menu-btn {
            display:  none;
         }
      }
*/
   </style>
<?php
   $user_id = getD3D("user_id");
   $so_tipo = getD3D('so_tipo');
   $so_act  = getD3D('so_act');
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
            <li style="width:150px;">
               <a href="Sys_Hub?v=Facturas&g=pages"
                  <?php if ($liga === 'pages/Facturas')  { echo 'id="primero"'; } ?> >Facturas
               </a>
            </li>
            <li style="width:150px;">
               <a href="Sys_Hub?v=Ordenes&g=pages"  
                  <?php if ($liga === 'pages/Ordenes') { echo 'id="primero"'; } ?> >Órdenes de compra
               </a>
            </li>
            <li style="width:150px;">
               <a href="Sys_Hub?v=Contratos&g=pages"  
                  <?php if ($liga === 'pages/Contratos') { echo 'id="primero"'; } ?> >Contratos
               </a>
            </li>
            <li style="width:150px;">
               <a href="Sys_Hub?v=Presupuestos&g=pages"  
                  <?php if ($liga === 'pages/Presupuestos') { echo 'id="primero"'; } ?> >Presupuestos
               </a>
            </li>
            <li style="width:150px;">
               <a href="Sys_Hub?v=Proveedores&g=pages"
                  <?php if ($liga === 'pages/Proveedores')  { echo 'id="primero"'; } ?> > Proveedores
               </a>
            </li>
            <li style="width:150px;">
               <a href="Sec_Login" >Salir</a>
            </li>
         </ul>
      </div>
   </div>


