   <?php
      $liga = getD3D("group_act") . getD3D("page_act");
   ?>
<div class="page">
   <br>
   <div class="menu2" style="width:555px;">
      <ul>
            <li style="width:25%" <?php if ( $liga === 'system/catalogs/servicios/Clasificacion' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Clasificacion&g=system/catalogs/servicios" > Clasificación
               </a>
            </li>
            <li style="width:25%" <?php if ( $liga === 'system/catalogs/servicios/Categorias' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Categorias&g=system/catalogs/servicios" > Categorías
               </a>
            </li>
            <li style="width:25%" <?php if ( $liga === 'system/catalogs/servicios/Subcategorias' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Subcategorias&g=system/catalogs/servicios" > Subcategorías
               </a>
            </li>
            <li style="width:25%" <?php if ( $liga === 'system/catalogs/servicios/Unidades' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Unidades&g=system/catalogs/servicios" > Unidades
               </a>
            </li>
      </ul>
   </div>
</div>
