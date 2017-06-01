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
   
   <link href="<?php echo URL_BASE; ?>css/bootstrap.min.css" rel="stylesheet">
   <script src="<?php echo URL_BASE; ?>js/jquery.min.js"></script>
   <script src="<?php echo URL_BASE; ?>js/bootstrap.min.js"></script>
   
<!--style>
  a:hover {
     background-color: #ffffff; !important
  }
</style-->

</head>
<body>
   <?php include_once( DIR_BASE ."php/analyticstracking.php") ?>
   <div class="logos">
      <div class="rellenar"></div>
      <div class="page" style="z-index:99; position:relative">
         <img src="<?php echo URL_BASE; ?>img/triangulo_color.png" 
              style="float:left;margin-top:-2px; margin-bottom:2px; margin-left:100px;height:120px;margin-bottom:12px;"/>
         <div style="position:absolute; left:0px; top:20px; visibility:visible z-index:2;"> 
            <img usemap="#Map1" src="<?php echo URL_BASE; ?>img/logo_PO.png" style="float:right;"/>
            <map name="Map1">
               <area shape="rect" coords="0,0,500,100" href="#">    
            </map>
         </div>
         <div style="height:90px;float:right;margin-right:30px;">
            <table style="margin-right:0px;margin-top:0px;">
               <tbody>
                  <tr>
                     <td align="right" class="mydetalle">
                        <a href="http://inicio.ifai.org.mx/SitePages/ifai.aspx" target="_blank" class="mydetalle">
                           <img src="<?php echo URL_BASE; ?>img/logoinaiok.jpg" style="float:right; margin-top:8px;width:130px;">
                        </a>
                        <a href="http://fundar.org.mx/" target="_blank">
                           <img src="<?php echo URL_BASE; ?>img/logofundar.png" style="float:right; margin-top:35px; margin-right:8px;width:200px;">
                        </a>
                     </td>
                  </tr>
               </tbody>
            </table>
         </div>
         <br><br>
      </div>
   </div>

