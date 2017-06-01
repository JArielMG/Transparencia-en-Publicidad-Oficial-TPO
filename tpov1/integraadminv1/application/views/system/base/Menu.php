   <?php
      $liga = getD3D("group_act") . getD3D("page_act");
   ?>
   <style>
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
   </style>
   <nav class="pushy pushy-left">
      <ul>
         <li><a href="Sys_Hub?v=Sujetos&g=system/catalogs">Sujetos obligados implementadores</a></li>
         <li><a href="Sys_Hub?v=Encuestas&g=system/catalogs">Encuestas</a></li>
         <li><a href="Sys_Hub?v=Mensajes&g=system/catalogs">Mensajes</a></li>
         <li><a href="Sys_Hub?v=Catalogs&g=system/catalogs">Catálogos</a></li>
         <li><a href="Sys_Hub?v=Estados&g=system/catalogs">Estados</a></li>
         <li><a href="Sys_Hub?v=Sec_users&g=security/data/">Usuario</a></li>
         <li><a href="Sys_Hub?v=Log&g=system/catalogs">Log</a></li>
         <li><a href="Sec_Login">Salir</a></li>
      </ul>
   </nav>
   <div class="site-overlay"></div>
   <div class="page">
      <br>	        
      <div class="menu" style="margin-top:15px;">
         <ul>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Sujetos&g=system/catalogs"
                  <?php if ($liga === 'system/catalogs/Sujetos')  { echo 'id="primero"'; } ?> >Sujetos obligados implementadores
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Encuestas&g=system/catalogs"  
                  <?php if ($liga === 'system/catalogs/Encuestas') { echo 'id="primero"'; } ?> >Encuestas
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Mensajes&g=system/catalogs"  
                  <?php if ($liga === 'system/catalogs/Mensajes') { echo 'id="primero"'; } ?> >Mensajes
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Catalogs&g=system/catalogs"  
                  <?php if ($liga === 'system/catalogs/Catalogs') { echo 'id="primero"'; } ?> 
                  <?php if ($liga === 'system/catalogs/Estados')  { echo 'id="primero"'; } ?> 
                  <?php if ($liga === 'system/catalogs/Settings') { echo 'id="primero"'; } ?> 
                  <?php if ($liga === 'security/data//Sec_users') { echo 'id="primero"'; } ?> 
                  <?php if ($liga === 'system/catalogs/Log')      { echo 'id="primero"'; } ?> >Administrar
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sec_Login" >Salir</a>
            </li>
         </ul>
      </div>
   </div>
   <div class="menu-btn" style="padding-left:5%;">&#9776; Menu</div>
