   <?php
      $liga = getD3D("group_act") . getD3D("page_act");
   ?>
<div class="page">
   <br>
   <div class="menu2" style="width:500px;">
      <ul>
            <li style="width:20%" <?php if ( $liga === 'system/catalogs/poblacion/Edad' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Edad&g=system/catalogs/poblacion" > Edad
               </a>
            </li>
            <li style="width:25%" <?php if ( $liga === 'system/catalogs/poblacion/Economico' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Economico&g=system/catalogs/poblacion" > Nivel<br> socioeconómico
               </a>
            </li>
            <li style="width:25%" <?php if ( $liga === 'system/catalogs/poblacion/Educacion' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Educacion&g=system/catalogs/poblacion" > Nivel de<br> educación
               </a>
            </li>
            <li style="width:15%" <?php if ( $liga === 'system/catalogs/poblacion/Sexo' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Sexo&g=system/catalogs/poblacion" > Sexo
               </a>
            </li>
      </ul>
   </div>
</div>

