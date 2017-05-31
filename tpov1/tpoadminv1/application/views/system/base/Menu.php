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
         .menu a {
            font-size: 18px;
         }
         .menu {
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
<?php
   $user_id = getD3D("user_id");
   $so_tipo = getD3D('so_tipo');
   if ( $user_id > 1 ) {  
      switch ( $so_tipo ) {
         case 1: // Contratante
            include( DIR_ROOT . 'application/views/system/base/submenus/MenuC.php'); 
            break;
         case 2: // Solicitante
            include( DIR_ROOT . 'application/views/system/base/submenus/MenuS.php'); 
            break;
         case 3: // Ambos
           include( DIR_ROOT . 'application/views/system/base/submenus/MenuA.php'); 
           break;
         }
   } else { //Administrador
      include( DIR_ROOT . 'application/views/system/base/submenus/MenuAdmin.php'); 
   }
?>
