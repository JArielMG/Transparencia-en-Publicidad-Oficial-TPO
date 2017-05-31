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
   <div class="site-overlay"></div>
   <div class="page">
      <br>	        
      <div class="menu" style="margin-top:15px;">
         <ul>
            <li style="width:300px;">
               <a href="Sys_Hub?v=Campanas&g=pages"
                  <?php if ($liga === "pages/Campanas") { echo 'id="primero"'; } ?> > Campañas y avisos institucionales
               </a>
            </li>
            <li style="width:300px;">
               <a href="Sec_Login" >Salir</a>
            </li>
         </ul>
      </div>
   </div>
