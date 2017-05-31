   <?php
      $liga = getD3D("group_act") . getD3D("page_act");
   ?>
<div class="page">
   <br>
   <div class="menu2" style="width:680px;">
      <ul>
            <li style="width:20%" <?php if ( $liga === 'system/catalogs/campanas/Coberturas' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Coberturas&g=system/catalogs/campanas" > Coberturas
               </a>
            </li>
            <li style="width:20%" <?php if ( $liga === 'system/catalogs/campanas/Objetivos' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Objetivos&g=system/catalogs/campanas" > Objetivos institucionales
               </a>
            </li>
            <li style="width:20%" <?php if ( $liga === 'system/catalogs/campanas/Tipos' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Tipos&g=system/catalogs/campanas" > Tipos
               </a>
            </li>
            <li style="width:20%" <?php if ( $liga === 'system/catalogs/campanas/Subtipos' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Subtipos&g=system/catalogs/campanas" > Subtipos
               </a>
            </li>
            <li style="width:20%" <?php if ( $liga === 'system/catalogs/campanas/Temas' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Temas&g=system/catalogs/campanas" > Temas
               </a>
            </li>
      </ul>
   </div>
</div>

