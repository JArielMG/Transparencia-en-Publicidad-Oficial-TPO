<!DOCTYPE html>
<html lang="es">
<head>
   <meta charset="utf-8">
   <title>
<?php
   echoD3D('page_title'); 
?>
   </title>
   <link rel="shortcut icon" href="<?php echo URL_BASE; ?>images/favicon.ico" />
   <link rel="stylesheet" media="all" type="text/css" href="<?php echo URL_BASE; ?>css/style.css" />   
   <link rel="stylesheet" href="<?php echo URL_BASE; ?>css/pushy.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<?php 
   $liga = getD3D("group_act") . getD3D("page_act");
   if (($liga === "pages/Principal") or ($liga === "")) {
?>
   <script src="<?php echo URL_BASE; ?>slider/js/jquery-1.7.1.min.js"></script>
   <link href="<?php echo URL_BASE; ?>slider/css/default.css" rel="stylesheet" type="text/css" media="screen" />
   <link href="<?php echo URL_BASE; ?>slider/css/nivo-slider.css" rel="stylesheet" type="text/css" media="screen" />

   <script type="text/javascript" src="<?php echo URL_BASE; ?>slider/js/jquery.nivo.slider.pack.js"></script>
   <script type="text/javascript" src="<?php echo URL_BASE; ?>slider/js/jquery.cslider.js"></script>
   <script type="text/javascript" src="<?php echo URL_BASE; ?>slider/js/modernizr.custom.28468.js"></script>
   <script type="text/javascript">	
      $(window).load(function() {
         $('#slider').nivoSlider();
      });
   </script>
<?php 
   } else {
?>
   <link href="<?php echo URL_BASE; ?>css/bootstrap.min.css" rel="stylesheet">
   <script src="<?php echo URL_BASE; ?>js/jquery.min.js"></script>
   <script src="<?php echo URL_BASE; ?>js/bootstrap.min.js"></script>
<?php 
   }
?>
</head>
<body style="color:#000;">


<link href="<?php echo URL_BASE; ?>css/bootstrap-editable.css" rel="stylesheet">
<script src="<?php echo URL_BASE; ?>js/bootstrap-editable.js"></script>


<script src="<?php echo URL_BASE; ?>js/jquery.mockjax.js"></script>
<script src="<?php echo URL_BASE; ?>js/moment.min.js"></script> 
<link href="<?php echo URL_BASE; ?>css/select2.css" rel="stylesheet">
<script src="<?php echo URL_BASE; ?>js/select2.js"></script>         
<link href="<?php echo URL_BASE; ?>css/select2-bootstrap.css" rel="stylesheet">
<style type="text/css">       
   #gastos:hover {
      background-color: #FFFFC0;
      cursor: text; 
   }
</style>
 
<br>
<div class="container" style="width:100%;margin:auto;max-width:77%;min-width:77%;">
   <div class="page">
      <div style="margin:auto;">
         <h3 class="blog-post-title" style="color:#01aece;">Ayúdanos a mejorar</h3>
         <h5> (Encuesta de satisfacción)</h5>
         <br> 
         <!--blockquote>
           La plataforma es de código abierto para que las entidades federativas con voluntad política se sumen fácilmente a esta mejor práctica de transparencia y buen gobierno. 
         </blockquote>

         <blockquote>
Déjanos conocer tus intereses sobre el presupuesto y permítenos mejorar transparencia presupuestaria.
         </blockquote-->
         <div>
Favor de dar un click en las palabras punteadas, y captura la información solicitada, para que se habilite el botón de enviar.
         </div>

<br>
         <div id="ayudanos" style="width:77%;margin:auto;">
Hola, soy un 
<a href="#" id="lista1" name="lista1" data-name="lista1" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required" ></a>

que vive en
<a href="#" id="lista2" name="lista2" data-name="lista2" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required" ></a>

interesado en 
<a href="#" id="lista3" name="lista3" data-name="lista3" data-type="select" data-pk="1" data-value="" data-placement="left" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required" ></a>, y me enteré de este sitio en 

<a href="#" id="lista4" name="lista4" data-name="lista4" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required"></a>.


<br><br>Me pareció fácil la navegación: 
<a href="#" id="lista5" name="lista5" data-name="lista5" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required"></a>

<br>Considero que este portal es útil:
<a href="#" id="lista6" name="lista6" data-name="lista6" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required"></a>

<br>Lo recomendaría y difundiría: 
<a href="#" id="lista7" name="lista7" data-name="lista7" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required"></a>

<br><br>
Tu opinión es muy valiosa para nosotros. Comentarios, ideas, sugerencias:
<a href="#" id="texto1" name="texto1" data-name="texto1" data-type="textarea" data-pk="1" data-placeholder="Opinión..." data-title="Opinión" class="editable editable-pre-wrapped editable-click" data-original-title="Opinión" title="Opinión" data-placeholder="Required"></a>.

         </div>
  <br>


   <form action="Sys_Screen?v=DoParticipa&g=pages" method="post" id="myForm" name="myForm">
      <input class="required" required="true" type="hidden" name="soyun" id="soyun" value="" >
      <input class="required" required="true" type="hidden" name="entidad" id="entidad" value="" >
      <input class="required" required="true" type="hidden" name="interesadoen" id="interesadoen" value="" >
      <input class="required" required="true" type="hidden" name="meenterepor" id="meenterepor" value="" >
      <input class="required" required="true" type="hidden" name="facil" id="facil" value="" >
      <input class="required" required="true" type="hidden" name="util" id="util" value="" >
      <input class="required" required="true" type="hidden" name="recomendar" id="recomendar" value="" >
      <input class="required" required="true" type="hidden" name="opinion" id="opinion" value="" >
      <center><input type="submit" value="Enviar" class="btn btn-default"></center>
   </form>
         <br>
         <div>
            <a href="Sys_Screen?v=DoExport&g=pages" target="_blank">Favor de dar un click 
               <img src="<?php echo URL_BASE; ?>img/od.png" > para obtener las encuestas.
            </a>
         </div>
</div>
      </div>
   </div>
</div>  

<script>
$(document).ready(function() {
    $('#lista1').editable({
        prepend: "Seleccionar...",
        source: [
            {value: 'Ciudadano', text: 'Ciudadano'},
            {value: 'Empresario', text: 'Empresario'},
            {value: 'Estudiante', text: 'Estudiante'},
            {value: 'Investigador', text: 'Investigador'},
            {value: 'Periodista', text: 'Periodista'},
            {value: 'Servidor público', text: 'Servidor público'}
        ],
        display: function(value, sourceData) {
             var colors = {"": "gray", 1: "green", 2: "blue"},
                 elem = $.grep(sourceData, function(o){return o.value == value;});
                 
             if(elem.length) {    
                 $(this).text(elem[0].text).css("color", colors[value]); 
             } else {
                 $(this).empty(); 
             }
             $( "#soyun" ).val( value );
             validar();
        }   
    }); 

    $('#lista2').editable({
        prepend: "Seleccionar...",
        source: [
            {value: 'Aguascalientes', text: 'Aguascalientes'},
            {value: 'Baja California', text: 'Baja California'},
            {value: 'Baja California Sur', text: 'Baja California Sur'},
            {value: 'Campeche', text: 'Campeche'},
            {value: 'Coahuila', text: 'Coahuila'},
            {value: 'Colima', text: 'Colima'},
            {value: 'Chiapas', text: 'Chiapas'},
            {value: 'Chihuahua', text: 'Chihuahua'},
            {value: 'Distrito Federal', text: 'Distrito Federal'},
            {value: 'Durango', text: 'Durango'},
            {value: 'Guanajuato', text: 'Guanajuato'},
            {value: 'Guerrero', text: 'Guerrero'},
            {value: 'Hidalgo', text: 'Hidalgo'},
            {value: 'Jalisco', text: 'Jalisco'},
            {value: 'México', text: 'México'},
            {value: 'Michoacán', text: 'Michoacán'},
            {value: 'Morelos', text: 'Morelos'},
            {value: 'Nayarit', text: 'Nayarit'},
            {value: 'Nuevo León', text: 'Nuevo León'},
            {value: 'Oaxaca', text: 'Oaxaca'},
            {value: 'Puebla', text: 'Puebla'},
            {value: 'Querétaro', text: 'Querétaro'},
            {value: 'Quintana Roo', text: 'Quintana Roo'},
            {value: 'San Luis Potosí', text: 'San Luis Potosí'},
            {value: 'Sinaloa', text: 'Sinaloa'},
            {value: 'Sonora', text: 'Sonora'},
            {value: 'Tabasco', text: 'Tabasco'},
            {value: 'Tamaulipas', text: 'Tamaulipas'},
            {value: 'Tlaxcala', text: 'Tlaxcala'},
            {value: 'Veracruz', text: 'Veracruz'},
            {value: 'Yucatán', text: 'Yucatán'},
            {value: 'Zacatecas', text: 'Zacatecas'}
        ],
        display: function(value, sourceData) {
             var colors = {"": "gray", 1: "green", 2: "blue"},
                 elem = $.grep(sourceData, function(o){return o.value == value;});
                 
             if(elem.length) {    
                 $(this).text(elem[0].text).css("color", colors[value]); 
             } else {
                 $(this).empty(); 
             }
             $( "#entidad" ).val( value );
             validar();
        }   
   }); 

   $('#lista3').editable({
        prepend: "Seleccionar...",
        source: [
            {value: 'Presupuesto y gastos en publicidad oficial', text: 'Presupuesto y gastos en publicidad oficial'},
            {value: 'Comunicación y campañas de publicidad oficial', text: 'Comunicación y campañas de publicidad oficial'},
            {value: 'Transparencia y rendición de cuentas del gobierno', text: 'Transparencia y rendición de cuentas del gobierno'},
            {value: 'Contratos y proveedores', text: 'Contratos y proveedores'}
        ],
        display: function(value, sourceData) {
             var colors = {"": "gray", 1: "green", 2: "blue"},
                 elem = $.grep(sourceData, function(o){return o.value == value;});
                 
             if(elem.length) {    
                 $(this).text(elem[0].text).css("color", colors[value]); 
             } else {
                 $(this).empty(); 
             }
             $( "#interesadoen" ).val( value );
             validar();
        }   
   }); 

   $('#lista4').editable({
        prepend: "Seleccionar...",
        source: [
            {value: 'Conversaciones con amigos', text: 'Conversaciones con amigos'},
            {value: 'Correo electrónico', text: 'Correo electrónico'},
            {value: 'Conferencias', text: 'Conferencias'},
            {value: 'Medios impresos', text: 'Medios impresos'},
            {value: 'Radio', text: 'Radio'},
            {value: 'Redes sociales', text: 'Redes sociales'},
            {value: 'Televisión', text: 'Televisión'},
            {value: 'Otro sitio web', text: 'Otro sitio web'},
            {value: 'Otro', text: 'Otro'}
        ],
        display: function(value, sourceData) {
             var colors = {"": "gray", 1: "green", 2: "blue"},
                 elem = $.grep(sourceData, function(o){return o.value == value;});
                 
             if(elem.length) {    
                 $(this).text(elem[0].text).css("color", colors[value]); 
             } else {
                 $(this).empty(); 
             }
             $( "#meenterepor" ).val( value );
             validar();
        }   
   }); 

   $('#lista5').editable({
        prepend: "Seleccionar...",
        source: [
            {value: 'sí', text: 'sí'},
            {value: 'no', text: 'no'}
        ],
        display: function(value, sourceData) {
             var colors = {"": "gray", 1: "green", 2: "blue"},
                 elem = $.grep(sourceData, function(o){return o.value == value;});
                 
             if(elem.length) {    
                 $(this).text(elem[0].text).css("color", colors[value]); 
             } else {
                 $(this).empty(); 
             }
             $( "#facil" ).val( value );
             validar();
        }   
   }); 

   $('#lista6').editable({
        prepend: "Seleccionar...",
        source: [
            {value: 'sí', text: 'sí'},
            {value: 'no', text: 'no'}
        ],
        display: function(value, sourceData) {
             var colors = {"": "gray", 1: "green", 2: "blue"},
                 elem = $.grep(sourceData, function(o){return o.value == value;});
                 
             if(elem.length) {    
                 $(this).text(elem[0].text).css("color", colors[value]); 
             } else {
                 $(this).empty(); 
             }
             $( "#util" ).val( value );
             validar();
        }   
   }); 


   $('#lista7').editable({
        prepend: "Seleccionar...",
        source: [
            {value: 'sí', text: 'sí'},
            {value: 'no', text: 'no'}
        ],
        display: function(value, sourceData) {
             var colors = {"": "gray", 1: "green", 2: "blue"},
                 elem = $.grep(sourceData, function(o){return o.value == value;});
                 
             if(elem.length) {    
                 $(this).text(elem[0].text).css("color", colors[value]); 
             } else {
                 $(this).empty(); 
             }
             $( "#recomendar" ).val( value );
             validar();
        }   
   }); 

    $('#texto1').editable({
        display: function(value, sourceData) {
             $( "#opinion" ).val( value );
             $( "#texto1" ).html( value );
             validar();
        }
    });

   var submitButton = $("#myForm input[type='submit']").attr("disabled", true);

   function validar() {
        var valid = true;
        if(!$("#soyun").val()){ valid = false; };
        if(!$("#entidad").val()){ valid = false; };
        if(!$("#interesadoen").val()){ valid = false; };
        if(!$("#meenterepor").val()){ valid = false; };
        if(!$("#facil").val()){ valid = false; };
        if(!$("#util").val()){ valid = false; };
        if(!$("#recomendar").val()){ valid = false; };
        if(!$("#opinion").val()){ valid = false; };
        if(valid){
            $(submitButton).attr("disabled", false);
            console.log("valid");
        } 
        else{
             $(submitButton).attr("disabled", true);
        }
    };
});
</script>

   <script src="<?php echo URL_BASE; ?>js/pushy.min.js"></script>
</body>
</html>
