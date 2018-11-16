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
   </style>
<?php
   $user_id = getD3D("user_id");
   $so_tipo = getD3D('so_tipo');
   $so_act  = getD3D('so_act');
?>
   <div class="site-overlay"></div>
   <div class="page">
      <br>	        
      <div class="menu" style="margin-top:15px;height:77px;">
         <ul>
            <li style="width:143px;">
               <a href="Sys_Hub?v=Facturas&g=pages"
                  <?php if ($liga === 'pages/Facturas')  { echo 'id="primero"'; } ?> >Facturas
               </a>
            </li>
            <li style="width:143px;">
               <a href="Sys_Hub?v=Ordenes&g=pages"  
                  <?php if ($liga === 'pages/Ordenes') { echo 'id="primero"'; } ?> >Órdenes de compra
               </a>
            </li>
            <li style="width:143px;">
               <a href="Sys_Hub?v=Contratos&g=pages"  
                  <?php if ($liga === 'pages/Contratos') { echo 'id="primero"'; } ?> >Contratos
               </a>
            </li>
            <li style="width:143px;">
               <a href="Sys_Hub?v=Campanas&g=pages"
                  <?php if ($liga === 'pages/Campanas') { echo 'id="primero"'; } ?> >Campañas y <br>avisos institucionales
               </a>
            </li>
            <li style="width:143px;">
               <a href="Sys_Hub?v=Presupuestos&g=pages"  
                  <?php if ($liga === 'pages/Presupuestos') { echo 'id="primero"'; } ?> >Presupuestos
               </a>
            </li>
            <li style="width:143px;">
               <a href="Sys_Hub?v=Proveedores&g=pages"
                  <?php if ($liga === 'pages/Proveedores')  { echo 'id="primero"'; } ?> > Proveedores
               </a>
            </li>
            <li style="width:142px;">
               <a href="Sec_Login" >Salir</a>
            </li>
         </ul>
      </div>
   </div>

