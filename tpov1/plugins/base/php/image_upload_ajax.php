<?php
   $path = realpath( '.' ).'/../img/';
   include_once './getExtension.php';
   $valid_formats = array("png", "PNG");
   if(isset($_POST) && $_SERVER['REQUEST_METHOD'] == "POST") {
      $name = $_FILES['photoimg']['name'];
      $size = $_FILES['photoimg']['size'];
      if(strlen($name)) {
         $ext = getExtension($name);
         if(in_array($ext,$valid_formats)) {
            if($size<(1024*1024)) {
               $actual_image_name = "logo.png";
               $tmp = $_FILES['photoimg']['tmp_name'];
               if(move_uploaded_file($tmp, $path.$actual_image_name)) {
                  echo "<script>alert('Logo Salvado');</script>";
               } else {
                  echo "<script>alert('Error en permisos de directorio.');</script>";
               }
            } else {
               echo "<script>alert('Imagen maxima de 1 MB');</script>";
            }
         } else { 
            echo "<script>alert('Solo se admite formato de imagen PNG.');</script>";
         }
      } else { 
         echo "<script>alert('Selccionar imagen por favor..!');</script>";
      }
   }
   exit;
?>
