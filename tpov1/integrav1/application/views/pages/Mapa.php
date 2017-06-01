<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>TPO</title>
   <style type="text/css">
      #container {
         height: 777px; 
         min-width: 310px; 
         max-width: 100%; 
         margin: 0 auto; 
      }
      .loading {
         margin-top: 10em;
         text-align: center;
         color: gray;
      }
      #cssDisplay {
         background-color: #0A3D7E;
         color: #FFFFFF;
         border: 1px groove #FFFFFF;
         padding: 15px;
         margin: 15px;
         margin-top: 0px;
         margin-left:7px;
         font-family: arial;
         font-style: normal;
         font-weight: bold;
         font-size: 16px;
         font-variant: small-caps;
         line-height: 20px;
         cursor: help;
         float: right;
         border-radius: 6px;
         box-shadow: 2px 2px 2px #C0C0C0;
         z-index:100;
         position:absolute;
      }
      a {
         color:#FFF;
      }
   </style>
   <script type="text/javascript" src="<?php echo URL_BASE; ?>js/jquery-1.11.3.min.js"></script>
   <script src="<?php echo URL_BASE; ?>js/highmaps.js"></script>
   <script src="<?php echo URL_BASE; ?>js/exporting.js"></script>
   <script src="<?php echo URL_BASE; ?>countries/mx/mx-all.js"></script>
</head>
<body">
   <div id="cssDisplay">
<?php
         echo '<a href="Sys_Screen?v=Lista&g=pages&e=mx-fe">Nivel Federal</a><br>';   
/*             
   foreach($mapas as $datamapa) {
      if (($datamapa->codigo === "mx-fe") and ($datamapa->value>0)) {
         echo '<a href="Sys_Screen?v=Lista&g=pages&e=mx-fe">Nivel Federal</a><br>';       
      } else {
         echo '<a href="#">Nivel Federal</a><br>';       
      }
      if (($datamapa->codigo === "int") and ($datamapa->value>0)) {
         echo '<a href="Sys_Screen?v=Lista&g=pages&int">Nivel Internacional</a><br>';       
      }
   }
*/   
?>
   </div>
   <div id="container"></div>   
   <script type="text/javascript">
      $(function () {
         var data = [
<?php
   foreach($mapas as $datamapa) {
      echo "{ 'hckey': '" . $datamapa->codigo ."', value:" . $datamapa->value  . " },";       
   }
?>
                     { 'hckey': 'mx-3622', value: 0 }
                ];
                    
                // Initiate the chart
                $('#container').highcharts('Map', {                    
                    title : {
                        text : ''
                    },
                    subtitle : {
                        text : ''
                    },
                    mapNavigation: {
                        enabled: true,
                        buttonOptions: {
                            verticalAlign: 'bottom'
                        }
                    },
                    colorAxis: {
                        min: 0
                    },
                    series : [{
                        data : data,
                        mapData: Highcharts.maps['countries/mx/mx-all'],
                        joinBy: 'hckey',
                        name: 'Número de Sujetos Obligados.',
                        id: data.hckey,
                        states: {
                            hover: {
                                color: '#cacaca'
                            }
                        },
                        dataLabels: {
                            enabled: false,
                            format: '{point.name}'
                        },
                        point: {
                           events: {
                              click: function() {
                                 var data_obj = this;
                                 if (data_obj.value > 0) {
                                    location.href='Sys_Screen?v=Lista&g=pages&e=' + data_obj.hckey;
                                 }
                              }
                           }
                        }
                    }]
                });
            });
        </script>

</body>
</html>
