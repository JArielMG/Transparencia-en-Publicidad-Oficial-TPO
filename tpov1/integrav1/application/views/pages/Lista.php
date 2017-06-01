   <link href="<?php echo URL_BASE; ?>css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

   <script src="<?php echo URL_BASE; ?>js/jquery.min.js"></script>
   <script src="<?php echo URL_BASE; ?>js/bootstrap.min.js"></script>

   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
         <a href="Sys_Screen?v=Mapa&g=pages" style="float:right;float:left;"><img src="<?php echo URL_BASE; ?>img/volver.gif" /></a>
      <br>
      <br>
<?php
//echo $_GET["e"];
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_D3D . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
// LFC Sacarlos de la vista solo activos y filtar por estado
    $xcrud->connection(dbUSER,dbPASS,dbNAME,dbHOST,'utf8');
    $xcrud->table('vlista');
    $xcrud->table_name('Sujetos obligados');
    $xcrud->where('codigo =', $_GET["e"]);

    $xcrud->unset_title();
    $xcrud->unset_remove();
    $xcrud->unset_view();
    $xcrud->unset_add();
    $xcrud->unset_edit();

    $xcrud->columns('nombre_sujeto_obligado, id_orden_gobierno, id_estado, id_tipo_sujeto_obligado, url');
    $xcrud->fields('nombre_sujeto_obligado, id_orden_gobierno, id_estado, id_tipo_sujeto_obligado, url');
							
    $xcrud->label('nombre_sujeto_obligado','Nombre');
    $xcrud->label('id_orden_gobierno','Orden');
    $xcrud->label('id_estado','Estado');
    $xcrud->label('id_tipo_sujeto_obligado','Tipo');
    $xcrud->label('url','URL Sitio');

    $xcrud->change_type('codigo', 'password', '', 32);
    $xcrud->change_type('active', 'password', '', 32);
//    $xcrud->relation('active','vcat_logico','id_catalog_data','catalog');
    $xcrud->relation('id_orden_gobierno','vcat_orden_gobierno','id_catalog_data','catalog');
    $xcrud->relation('id_estado','cat_estados','id_estado','estado');
    $xcrud->relation('id_tipo_sujeto_obligado','vcat_tipo_so','id_catalog_data','catalog');

    echo $xcrud->render();
?>
      </div>
   </div>

