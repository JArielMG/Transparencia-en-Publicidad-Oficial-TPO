   <?php
      $liga = getD3D("group_act") . getD3D("page_act");
   ?>
<div class="page">
   <br>
   <div class="menu2" style="width:333px;">
      <ul>
            <li style="width:33%" <?php if ( $liga === 'system/catalogs/sujetos/Atribucion' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Atribucion&g=system/catalogs/sujetos" > Función
               </a>
            </li>
            <li style="width:33%" <?php if ( $liga === 'system/catalogs/sujetos/Estados' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Estados&g=system/catalogs/sujetos" > Estados
               </a>
            </li>
            <li style="width:34%" <?php if ( $liga === 'system/catalogs/sujetos/Ordenes' ) { echo 'id="primero"'; } ?> >
               <a href="Sys_Hub?v=Ordenes&g=system/catalogs/sujetos" > Órdenes de<br>gobierno
               </a>
            </li>
      </ul>
   </div>
</div>

