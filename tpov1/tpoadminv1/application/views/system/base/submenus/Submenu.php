   <?php
      $liga = getD3D("group_act") . getD3D("page_act");
      $opciones1 = array("system/catalogs/campanas/Coberturas", 
                         "system/catalogs/campanas/Estatus", 
                         "system/catalogs/campanas/Objetivos",
                         "system/catalogs/campanas/Tipos",
                         "system/catalogs/campanas/Subtipos",
                         "system/catalogs/campanas/Temas");

      $opciones2 = array("system/catalogs/poblacion/Edad", 
                         "system/catalogs/poblacion/Economico", 
                         "system/catalogs/poblacion/Educacion",
                         "system/catalogs/poblacion/Sexo");

      $opciones3 = array("system/catalogs/servicios/Categorias", 
                         "system/catalogs/servicios/Clasificacion", 
                         "system/catalogs/servicios/Subcategorias",
                         "system/catalogs/servicios/Unidades");

      $opciones4 = array("system/catalogs/sujetos/Atribucion", 
                         "system/catalogs/sujetos/Estados", 
                         "system/catalogs/sujetos/Ordenes");

      $opciones5 = array("system/catalogs/otros/Conceptos", 
                         "system/catalogs/otros/Trimestres", 
                         "system/catalogs/otros/Ejercicios", 
                         "system/catalogs/otros/Personalidad",
                         "system/catalogs/otros/Procedimientos",
                         "system/catalogs/otros/Tiempos",
                         "system/catalogs/otros/Trimestres",
                         "system/catalogs/otros/Ligas");
   ?>
<div class="page">
   <br>
   <div class="menu2" style="width:777px;">
      <ul>
            <li style="width:20%" <?php if (in_array( $liga, $opciones1)) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Coberturas&g=system/catalogs/campanas" > Campañas y avisos institucionales
               </a>
            </li>
            <li style="width:35%" <?php if (in_array( $liga, $opciones2)) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Edad&g=system/catalogs/poblacion" > Campañas y avisos institucionales población objetivo
               </a>
            </li>
            <li style="width:15%" <?php if (in_array( $liga, $opciones3)) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Clasificacion&g=system/catalogs/servicios" > Servicios
               </a>
            </li>
            <li style="width:15%" <?php if (in_array( $liga, $opciones4)) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Atribucion&g=system/catalogs/sujetos" > Sujetos
               </a>
            </li>
            <li style="width:15%" <?php if (in_array( $liga, $opciones5)) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Conceptos&g=system/catalogs/otros" > Otros
               </a>
            </li>
      </ul>
   </div>
</div>
      <?php if (in_array( $liga, $opciones1)) { include( DIR_ROOT . 'application/views/system/base/submenus/Submenu_Campanas.php'); } ?> 
      <?php if (in_array( $liga, $opciones2)) { include( DIR_ROOT . 'application/views/system/base/submenus/Submenu_Poblacion.php'); } ?> 
      <?php if (in_array( $liga, $opciones3)) { include( DIR_ROOT . 'application/views/system/base/submenus/Submenu_Servicios.php'); } ?> 
      <?php if (in_array( $liga, $opciones4)) { include( DIR_ROOT . 'application/views/system/base/submenus/Submenu_Sujetos.php'); } ?> 
      <?php if (in_array( $liga, $opciones5)) { include( DIR_ROOT . 'application/views/system/base/submenus/Submenu_Otros.php'); } ?> 

