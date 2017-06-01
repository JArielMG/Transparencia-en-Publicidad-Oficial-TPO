<link href="<?php echo URL_BASE; ?>css/bootstrap.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="<?php echo URL_BASE; ?>js/jquery.min.js"></script>
<script src="<?php echo URL_BASE; ?>js/bootstrap.min.js"></script>
<br>
<div class="container" style="width:60%;margin:auto;max-width:60%;min-width:60%;">
   <div class="page">
   <center>
      <h3 class="blog-post-title" style="font-size: 33px; font-family: 'Dosis', sans-serif;color:#000;font-weight: normal;">
      Contacto</h3>
      <img src="../plugins/base/img/pleca.png" />
   </center>
   
      <div style="margin:auto;">
         <br> 

<form role="form" action="Sys_Hub?v=DoContacto&g=pages" method="post">
  <div class="form-group">
    <label for="nombre">* Nombre:</label>
    <input type="text" class="form-control" name="nombre" id="nombre" required>
  </div>
  <div class="form-group">
    <label for="email">* Correo:</label>
    <input type="email" class="form-control" name="correo" id="correo" required>
  </div>
  <div class="form-group">
    <label for="asunto">* Asunto:</label>
    <input type="text" class="form-control" name="asunto" id="asunto" required>
  </div>
  <div class="form-group">
    <label for="mensaje">* Mensaje:</label>
    <textarea class="form-control" name="mensaje" id="mensaje" rows="3" required></textarea>
  </div>
  <div class="form-group">
    <textarea class="form-control" name="privacidad" id="privacidad" rows="17" required readonly>
   Los datos personales recabados estarán protegidos conforme a lo dispuesto por la Ley General de Transparencia y Acceso a la Información Pública, la Ley Federal de Transparencia y Acceso a la Información Pública Gubernamental (LFTAIPG), su Reglamento, los Lineamientos de Protección de Datos Personales publicados en el D.O.F. el 30 de septiembre de 2005 y demás normativa
aplicable.

Estos datos serán incorporados y tratados en el sistema de datos personales denominado Transparencia en Publicidad Oficial.

¿Qué datos personales se recaban y para qué finalidad?

Los datos personales que se recaben se utilizarán con la finalidad de enviar vía correo electrónico las notificaciones a las que se haya suscrito el usuario.

Para la finalidad anterior, se recabarán los siguientes datos personales: nombre y correo electrónico Fundamento para el tratamiento de datos personales

El INAI registra el requerimiento señalado con fundamento en los artículos 37 fracción XIII de la Ley Federal de Transparencia y Acceso a la Información Pública Gubernamental; y artículos 24 fracciones IX y XI, 42 fracción V y 57 de la Ley General de Transparencia y Acceso a la Información Pública.

Unidades Administrativas responsables del Sistema

Las Unidades Administrativas responsables del sistema son la Dirección General de Tecnologías de la Información y la Dirección General de Políticas de Acceso.

¿Dónde puedo ejercer mis derechos de acceso, corrección/rectificación, cancelación u oposición –derechos ARCO- de datos personales?

Usted podrá ejercer sus derechos ARCO, así como revocar su consentimiento para el tratamiento de sus datos personales, ante la Unidad de Enlace del INAI, ubicada en la planta baja de Avenida Insurgentes Sur 3211, en la colonia Insurgentes Cuicuilco, Delegación Coyoacán, C.P. 04530, México, D.F., o bien, a través del Sistema INFOMEX (www.infomex.org.mx).

Transmisión de Datos Se informa que no se realizarán transmisiones de datos personales, salvo aquéllas que sean necesarias para atender requerimientos de información de una autoridad competente, que estén debidamente fundados y motivados.

Se informa lo previsto en la presente leyenda, en cumplimiento del artículo 20, fracción III de la LFTAIPG y Decimoséptimo de los Lineamientos de Protección de Datos Personales.

    </textarea>
  </div>

  <div class="form-group">
    <input type="checkbox" name="acepto" value="acepto" required> Acepto Aviso de privacidad de datos.<br>
  </div>

  <center>
     <button type="submit" class="btn btn-default">Guardar</button>
  </center>
</form>

      </div>
   </div>
</div>  



<script>
   document.getElementById("nombre").focus();
</script>
