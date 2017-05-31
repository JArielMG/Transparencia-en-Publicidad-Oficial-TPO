<?php
   $archivo = (isset($_FILES['archivo'])) ? $_FILES['archivo'] : null;
   if ($archivo) {
      $ruta_destino_archivo = DIR_D3D . "../base/img/logotop.png";
      $archivo_ok = move_uploaded_file($archivo['tmp_name'], $ruta_destino_archivo);
   }
?>
   <div class="page">
      <br><br><br>
<?php if (isset($archivo)):
   if ($archivo_ok): ?>
      <strong> El log ha sido actualizado correctamente. </strong>
   <?php else: ?>
      <span style="color: #f00;"> Error al intentar actualizar el logo. </span>
   <?php endif;
endif; ?>
      <form id="load" action="Sys_Hub?v=LoadLogo&g=system/base" method="POST" enctype="multipart/form-data" style="width:600px;">
         <label>Logo en formato PNG 150px ancho por 90px de alto, con efecto de transparencia.</label>
         <input type="file" name="archivo" id="archivo" required="required" />
         <br>
         <button type="submit" class="btn btn-default">Actualizar Logo</button>
      </form>
   </div>
<?php 
   echo '<script src="' . URL_D3D . 'wizard/bower/jquery/dist/jquery.min.js"></script>';   
   echo '<link href="'  . URL_D3D . 'lib/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />';
   echo '<script src="' . URL_D3D . 'lib/js/fileinput.min.js" type="text/javascript"></script>';  
   echo '<script src="' . URL_D3D . 'lib/js/fileinput_locale_es.js" type="text/javascript"></script>';
   echo '<script src="' . URL_D3D . 'wizard/bower/bootstrap/dist/js/bootstrap.min.js"></script>';
?>
   <script>
      $('#archivo').fileinput({
         language: 'es',
         showPreview : false,
	 showUpload: false,
         showRemove: false,
         allowedFileExtensions : ['png']
      });
   </script>

