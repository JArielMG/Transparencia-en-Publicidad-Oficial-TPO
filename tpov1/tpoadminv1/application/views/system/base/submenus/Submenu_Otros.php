   <?php
      $liga = getD3D("group_act") . getD3D("page_act");
   ?>
<div class="page">
   <br>
   <div class="menu2" style="width:777px;">
      <ul>
            <li style="width:16%" <?php if ( $liga === 'system/catalogs/otros/Conceptos' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Conceptos&g=system/catalogs/otros" > Partidas presupuestarias
               </a>
            </li>
            <li style="width:15%" <?php if ( $liga === 'system/catalogs/otros/Trimestres' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Trimestres&g=system/catalogs/otros" > Trimestres
               </a>
            </li>
            <li style="width:14%" <?php if ( $liga === 'system/catalogs/otros/Ejercicios' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Ejercicios&g=system/catalogs/otros" > Ejercicios
               </a>
            </li>
            <li style="width:21%" <?php if ( $liga === 'system/catalogs/otros/Personalidad' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Personalidad&g=system/catalogs/otros" > Personalidad jurídica<br> del proveedor
               </a>
            </li>
            <li style="width:21%" <?php if ( $liga === 'system/catalogs/otros/Procedimientos' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Procedimientos&g=system/catalogs/otros" > Procedimientos de contratación
               </a>
            </li>
            <!--li style="width:14%" <?php if ( $liga === 'system/catalogs/otros/Tiempos' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Tiempos&g=system/catalogs/otros" > Tipos de <br>tiempos
               </a>
            </li-->
            <li style="width:12%" <?php if ( $liga === 'system/catalogs/otros/Ligas' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Ligas&g=system/catalogs/otros" > Ligas
               </a>
            </li>
      </ul>
   </div>
</div>
