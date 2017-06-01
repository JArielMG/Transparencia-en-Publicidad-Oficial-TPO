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
<body>


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
<div class="container" style="width:60%;margin:auto;max-width:60%;min-width:60%;">
   <h3 class="blog-post-title">Ayúdanos a mejorar</h3>
   <h5> (Encuesta de satisfacción)</h5>
   <div class="page">
      <div style="margin:auto;">
         <br> 
         <!--iframe src="https://vitalets.github.io/x-editable/demo-bs3.html?c=inline" frameBorder="0" id="data"
                 style="width:90%;height:777px;float:left;min-width:35%;"></iframe-->
         <blockquote>
           La plataforma es de código abierto para que las entidades federativas con voluntad política se sumen fácilmente a esta mejor práctica de transparencia y buen gobierno. 
         </blockquote>

         <blockquote>
Déjanos conocer tus intereses sobre el presupuesto y permítenos mejorar transparencia presupuestaria.
         </blockquote>
<br>
<br>
         <div>
Favor de dar un click en las palabras punteadas.
         </div>

<br>
         <div id="ayudanos" style="width:77%;margin:auto;">
Hola, soy un 
<a href="#" id="lista1" name="lista1" data-name="lista1" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required" >Soy un...</a>
interesado en 
<a href="#" id="lista2" name="lista2" data-name="lista2" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required" >Interesado en...</a>
<br>sobre gastos 
<a href="#" id="texto1" name="texto1" data-name="texto1" data-type="textarea" data-pk="1" data-placeholder="Describir los Gastos..." data-title="Gasto" class="editable editable-pre-wrapped editable-click" data-original-title="Gastos" title="Gastos" data-placeholder="Required"></a>.
<br>
<br>
Me enteré de este sitio en 
<a href="#" id="lista3" name="lista3" data-name="lista3" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required">Me entere en...</a>
 y 
<a href="#" id="lista4" name="lista4" data-name="lista4" data-type="select" data-pk="1" data-value="" data-title="Seleccionar" class="editable editable-click" data-original-title="" title="" style="color: gray;" data-placeholder="Required">Me gusta...</a>
me gusta <br>porque
<a href="#" id="texto2" name="texto2" data-name="texto2" data-type="textarea" data-pk="1" data-placeholder="Por que..." data-title="Por que" class="editable editable-pre-wrapped editable-click" data-original-title="Por que" title="Por que" data-placeholder="Required"></a>.
<br>
<br>
Tu opinión es muy valiosa para nosotros <br>comentanos por favor: 
<a href="#" id="texto3" name="texto3" data-name="texto3" data-type="textarea" data-pk="1" data-placeholder="Opinión..." data-title="Opinión" class="editable editable-pre-wrapped editable-click" data-original-title="Opinión" title="Opinión" data-placeholder="Required"></a>.
         </div>
  <br>


   <form action="Sys_Screen?v=DoParticipa&g=pages" method="post" id="myForm" name="myForm">
      <input class="required" required="true" type="hidden" name="soyun" id="soyun" value="" >
      <input class="required" required="true" type="hidden" name="interesadoen" id="interesadoen" value="" >
      <input class="required" required="true" type="hidden" name="gasto" id="gasto" value="" >
      <input class="required" required="true" type="hidden" name="meenterepor" id="meenterepor" value="" >
      <input class="required" required="true" type="hidden" name="megusta" id="megusta" value="" >
      <input class="required" required="true" type="hidden" name="porque" id="porque" value="" >
      <input class="required" required="true" type="hidden" name="opinion" id="opinion" value="" >
      <center><input type="submit" value="Enviar" class="btn btn-default"></center>
   </form>
</div>

         <br>
         <div>
         </div>
            <a href="Sys_Screen?v=DoExport&g=pages" target="_blank">Favor de dar un click 
               <img src="<?php echo URL_BASE; ?>img/od.png" > para obtener las encuestas.
            </a>
      </div>
   </div>
</div>  
<!--
(ciudadano, empresario, estudiante, investigador, periodista, servidor público)
(desempeño, estadísticas, información, noticias)
(texto libre)
(conversaciones con amigos, correo electrónico, conferencias, medios impresos, radio, redes sociales, televisión, otro sitio web, otro)
(sí, no)
(texto libre)
(Texto libre)
-->

<script>
$(document).ready(function() {
    $('#texto1').editable({
        display: function(value, sourceData) {
             $( "#gasto" ).val( value );
             $( "#texto1" ).html( value );
             validar();
        }
    });
    $('#texto2').editable({
        display: function(value, sourceData) {
             $( "#porque" ).val( value );
             $( "#texto2" ).html( value );
             validar();
        }   
    });
    $('#texto3').editable({
        display: function(value, sourceData) {
             $( "#opinion" ).val( value );
             $( "#texto3" ).html( value );
             validar();
        }   
    });

$('#lista1').editable({
        prepend: "Soy un..",
        source: [
            {value: 'ciudadano', text: 'ciudadano'},
            {value: 'empresario', text: 'empresario'},
            {value: 'estudiante', text: 'estudiante'},
            {value: 'investigador', text: 'investigador'},
            {value: 'periodista', text: 'periodista'},
            {value: 'servidor público', text: 'servidor público'}
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
        prepend: "Interesado en...",
        source: [
            {value: 'desempeño', text: 'desempeño'},
            {value: 'estadísticas', text: 'estadísticas'},
            {value: 'información', text: 'información'},
            {value: 'noticias', text: 'noticias'}
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

$('#lista3').editable({
        prepend: "Me entere por...",
        source: [
            {value: 'conversaciones con amigos', text: 'conversaciones con amigos'},
            {value: 'correo electrónico', text: 'correo electrónico'},
            {value: 'conferencias', text: 'conferencias'},
            {value: 'medios impresos', text: 'medios impresos'},
            {value: 'radio', text: 'radio'},
            {value: 'redes sociales', text: 'redes sociales'},
            {value: 'televisión', text: 'televisión'},
            {value: 'otro sitio web', text: 'otro sitio web'},
            {value: 'otro', text: 'otro'}
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

$('#lista4').editable({
        prepend: "Me gusta...",
        source: [
            {value: 'si', text: 'si'},
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
             $( "#megusta" ).val( value );
             validar();
        }   
   }); 


   var submitButton = $("#myForm input[type='submit']").attr("disabled", true);

   function validar() {
        var valid = true;
        if(!$("#soyun").val()){ valid = false; };
        if(!$("#interesadoen").val()){ valid = false; };
        if(!$("#gasto").val()){ valid = false; };
        if(!$("#meenterepor").val()){ valid = false; };
        if(!$("#megusta").val()){ valid = false; };
        if(!$("#porque").val()){ valid = false; };
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
