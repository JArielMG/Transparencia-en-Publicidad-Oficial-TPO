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
         <li style="width:200px;"><a href="Sys_Hub?v=Principal&g=pages">Inicio</a></li>
         <li style="width:200px;"><a href="Sys_Hub?v=QueEs&g=pages">    ¿Qué es?</a></li>
         <li style="width:200px;"><a href="Sys_Hub?v=FAQ&g=pages">      (Preguntas frecuentes)</a></li>
         <li style="width:200px;"><a href="Sys_Hub?v=PO&g=pages">       La publicidad oficial</a></li>
         <li style="width:200px;"><a href="Sys_Hub?v=Abiertos&g=pages"> Datos y gobiernos abiertos</a></li>
         <li style="width:200px;"><a href="Sys_Hub?v=Contacto&g=pages"> Contacto</a></li>
         <!--li><a href="Sys_Hub?v=Siguenos&g=pages"> Siguenos</a></li-->
      </ul>
   </nav>
   <div class="site-overlay"></div>
   <div class="page">
      <br>
      <table width="100%" class="opciones"> 
         <tr>
            <td width="30%" align="right"> 
               <p style="margin:10px;">Fecha de actualización:  
               <?php foreach($fechaact as $fecha) { echo $fecha->last_update . '.'; } ?>
               </p>
            </td>
         </tr>
      </table>
      <div class="menu" style="padding-top:15px;margin:auto;width:100%;">
         <ul>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Principal&g=pages" 
                  <?php if (($liga === 'pages/Principal') or ($liga === '')) { echo 'id="primero"'; } ?> >Inicio
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=QueEs&g=pages" <?php if ($liga === 'pages/QueEs') { echo 'id="primero"'; } ?> 
                  >Sobre el proyecto
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=FAQ&g=pages"  
                  <?php if ($liga === 'pages/FAQ')   { echo 'id="primero"'; } ?> >Preguntas frecuentes
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Contacto&g=pages" 
                  <?php if ($liga === 'pages/Contacto')   { echo 'id="primero"'; } ?> >Contacto
               </a>
            </li>
            <li style="width:200px;">
               <a href="Sys_Hub?v=Transparencia&g=pages"  
                  <?php if ($liga === 'pages/Transparencia')   { echo 'id="primero"'; } ?> >Transparencia
               </a>
            </li>
         </ul>
      </div> 
   </div>
   <div class="menu-btn" style="padding-left:5%;">&#9776; Menu</div>
   
