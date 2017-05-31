   <div class="page">
      <div style="width:100%;margin:auto;">
      <br>
<?php
    $user_id = getD3D("user_id");
    $so_tipo = getD3D('so_tipo');
    $so_act  = getD3D('so_act');
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');
    $xcrud = Xcrud::get_instance();
    $xcrud->table('tab_campana_aviso');
    $xcrud->table_name('Campañas o avisos institucionales');

    $xcrud->unset_title();
    $xcrud->columns('id_campana_tipo, id_campana_subtipo, nombre_campana_aviso, id_ejercicio, id_trimestre, id_so_contratante, id_so_solicitante, active' );

    $xcrud->column_tooltip('id_campana_tipo', 'Indica si se trata de una Campaña o de un Aviso Institucional.');
    $xcrud->column_tooltip('id_campana_subtipo', 'Indicar el subtipo de campaña o aviso institucional, según sea el caso.');
    $xcrud->column_tooltip('nombre_campana_aviso', '');
    $xcrud->column_tooltip('id_ejercicio', 'Año en que se lleva a cabo la difusión de la campaña.');
    $xcrud->column_tooltip('id_trimestre', 'Trimeste en que se lleva a cabo la difusión de la campaña.');
    $xcrud->column_tooltip('id_so_contratante', '');
    $xcrud->column_tooltip('id_so_solicitante', '');
    $xcrud->column_tooltip('active', 'Identifica si al campaña esta activa o inactiva.');

    $xcrud->label('id_campana_tipo','Tipo');
    $xcrud->label('id_campana_subtipo','Subtipo');
    $xcrud->label('nombre_campana_aviso','Nombre');
    $xcrud->label('id_ejercicio','Ejercicio');
    $xcrud->label('id_trimestre','Trimestre');
    $xcrud->label('clave_campana','Clave de campaña o aviso institucional');

    $xcrud->label('id_so_contratante','Sujeto obligado contratante');
    $xcrud->label('id_so_solicitante','Sujeto obligado solicitante');
    $xcrud->label('id_campana_tema','Tema');
    $xcrud->label('id_campana_objetivo','Objetivo institucional');
    $xcrud->label('objetivo_comunicacion','Objetivo de comunicación');
    $xcrud->label('id_campana_cobertura','Cobertura');
    $xcrud->label('campana_ambito_geo','Ámbito geográfico');
    $xcrud->label('fecha_inicio','Fecha inicio');
    $xcrud->label('fecha_termino','Fecha término');
    $xcrud->label('id_tiempo_oficial','Tiempo oficial');
    $xcrud->label('fecha_inicio_to','Fecha inicio tiempo oficial');
    $xcrud->label('fecha_termino_to','Fecha término tiempo oficial');
    $xcrud->label('publicacion_segob','Publicación SEGOB.');
    $xcrud->label('plan_acs','Documento del PACS');
    $xcrud->label('evaluacion','Evaluación');
    $xcrud->label('evaluacion_documento','Documento de evaluación');
    $xcrud->label('fecha_dof','Fecha publicación');
    $xcrud->label('active','Estatus');
    $xcrud->label('fecha_validacion','Fecha de validación');
    $xcrud->label('area_responsable','Área responsable de la información');
    $xcrud->label('periodo','Año');
    $xcrud->label('fecha_actualizacion','Fecha de actualización');
    $xcrud->label('nota','Nota');
    $xcrud->label('autoridad','Autoridad que proporcionó la clave');

    $xcrud->fields('id_campana_tipo, id_campana_subtipo, nombre_campana_aviso, clave_campana, autoridad, id_ejercicio, id_trimestre, id_so_contratante, id_so_solicitante, id_campana_tema, id_campana_objetivo, objetivo_comunicacion, id_campana_cobertura, campana_ambito_geo, fecha_inicio, fecha_termino, id_tiempo_oficial, fecha_inicio_to, fecha_termino_to, publicacion_segob, plan_acs, fecha_dof, evaluacion, evaluacion_documento, active, fecha_validacion, area_responsable, periodo, fecha_actualizacion, nota');

    $xcrud->field_tooltip('id_campana_tipo','Indica si se registra una campaña o un aviso institucional');
    $xcrud->field_tooltip('id_campana_subtipo','Indica el subtipo de la campaña o aviso institucional, de acuerdo al tipo.');
    $xcrud->field_tooltip('nombre_campana_aviso','Título de la campaña o aviso institucional.');
    $xcrud->field_tooltip('id_ejercicio','Indica el año del ejercicio presupuestario.');
    $xcrud->field_tooltip('id_trimestre','Indica el trimestre que se reporta (enero – marzo, abril-junio, julio-septiembre,  octubre-diciembre ).');
    $xcrud->field_tooltip('id_so_contratante',' Indica el nombre del sujeto obligado que celebra el contrato u orden de compra con el proveedor.');
    $xcrud->field_tooltip('id_so_solicitante','Indica el nombre del sujeto que solicitó el producto o servicio aunque éste no sea quien celebra el contrato u orden de compra con el proveedor (Ej. Sujeto obligado solicitante: Secretaría de Cultura; sujeto obligado contratante: Coordinación General de Comunicación Social).');
    $xcrud->field_tooltip('id_campana_tema',' Indica el tema de la campaña o aviso institucional (Ej. Salud, Educación, etc.)');
    $xcrud->field_tooltip('id_campana_objetivo','Objetivo institucional de la campaña o aviso institucional.');
    $xcrud->field_tooltip('objetivo_comunicacion','Objetivo de comunicación de la campaña o aviso institucional.');
    $xcrud->field_tooltip('id_campana_cobertura','Alcance geográfico de la campaña o aviso institucional.');
    $xcrud->field_tooltip('campana_ambito_geo','Descripción detallada de la campaña o aviso institucional.');
    $xcrud->field_tooltip('fecha_inicio','Fecha de inicio de la transmisión de la campaña o aviso institucional.');
    $xcrud->field_tooltip('fecha_termino','Fecha de término de la transmisión de la campaña o aviso institucional.');
    $xcrud->field_tooltip('id_tiempo_oficial','Indica si se utilizó o no, tiempo oficial en la transmisión de esa campaña o aviso institucional.');
    $xcrud->field_tooltip('fecha_inicio_to','Fecha de inicio del uso de tiempo oficial de la campaña o aviso institucional.');
    $xcrud->field_tooltip('fecha_termino_to','Fecha de término del uso de tiempo oficial de la campaña o aviso institucional.');
    $xcrud->field_tooltip('publicacion_segob','Hipervínculo a la información sobre la utilización de Tiempo Oficial, publicada por Dirección General de Radio, Televisión y Cinematografía, adscrita a la Secretaría de Gobernación.');
    $xcrud->field_tooltip('plan_acs','Nombre o denominación del documento del programa anual de comunicación social.');
    $xcrud->field_tooltip('fecha_dof','Fecha en la que se publicó en el Diario Oficial de la Federación, periódico o gaceta, o portal de Internet institucional correspondiente.');
    $xcrud->field_tooltip('evaluacion','Evaluación de la campaña y/o aviso institucional”.');
    $xcrud->field_tooltip('active','Indica el estado de la información “Activa” o “Inactiva”.');
    $xcrud->field_tooltip('evaluacion_documento','Documento de evaluación');
    $xcrud->field_tooltip('fecha_validacion','Fecha de validación');
    $xcrud->field_tooltip('area_responsable','Área responsable de la información');
    $xcrud->field_tooltip('periodo','Año');
    $xcrud->field_tooltip('fecha_actualizacion','Fecha de actualización');
    $xcrud->field_tooltip('nota','Nota');
    $xcrud->field_tooltip('autoridad','Autoridad que proporcionó la clave');

    $xcrud->relation('id_campana_objetivo','cat_campana_objetivos','id_campana_objetivo','campana_objetivo');
    $xcrud->relation('id_campana_cobertura','cat_campana_coberturas','id_campana_cobertura','nombre_campana_cobertura');
    
    $xcrud->relation('id_campana_tipo','cat_campana_tipos','id_campana_tipo','nombre_campana_tipo');    

//    $xcrud->relation('id_campana_subtipo','cat_campana_subtipos','id_campana_subtipo','nombre_campana_subtipo',
//                     '','','','','','id_campana_tipo','id_campana_tipo');
                     

    $xcrud->relation('id_campana_subtipo','cat_campana_subtipos','id_campana_subtipo','nombre_campana_subtipo' );

//    $xcrud->relation('id_campana_subtipo','cat_campana_subtipos','id_campana_subtipo','nombre_campana_subtipo',
//                     '','','','','','id_campana_tipo','id_campana_tipo');
                     
    $xcrud->relation('id_ejercicio','cat_ejercicios','id_ejercicio','ejercicio');
    $xcrud->relation('id_campana_tema','cat_campana_temas','id_campana_tema','nombre_campana_tema');
    $xcrud->relation('id_trimestre','cat_trimestres','id_trimestre','trimestre');
    $xcrud->relation('id_tiempo_oficial','sys_logico','id_logico','logico');
    $xcrud->relation('id_so_contratante','vso_contratante','id_sujeto_obligado','nombre_sujeto_obligado');
    if ($so_tipo == 2) { // Solicitante
       $xcrud->relation('id_so_solicitante','vso_solicitante','id_sujeto_obligado','nombre_sujeto_obligado', 
         array('id_sujeto_obligado' => $so_act ));
    } else {
       $xcrud->relation('id_so_solicitante','vso_solicitante','id_sujeto_obligado','nombre_sujeto_obligado');
    } 
    $xcrud->relation('active','sys_active','id_active','name_active');
/*
publicacion_segob
*/	

    $xcrud->change_type('evaluacion_documento', 'file', '', array('not_rename'=>true, 'path'=>'../data/campanas/evaluacion/'));

    $xcrud->default_tab('Campañas y avisos institucionales');

    $grupo_edad = $xcrud->nested_table('Grupo de edad','id_campana_aviso', 'rel_campana_grupo_edad','id_campana_aviso'); 
    $grupo_edad->unset_title();
    $grupo_edad->table_name('Grupo de edad');
    $grupo_edad->columns('id_poblacion_grupo_edad' );
    $grupo_edad->fields('id_poblacion_grupo_edad' );
    $grupo_edad->label('id_poblacion_grupo_edad','Grupo de edad');
    $grupo_edad->relation('id_poblacion_grupo_edad','cat_poblacion_grupo_edad','id_poblacion_grupo_edad','nombre_poblacion_grupo_edad');
    $grupo_edad->default_tab('Grupo edad');


    $lugar = $xcrud->nested_table('Lugar','id_campana_aviso', 'rel_campana_lugar','id_campana_aviso'); 
    $lugar->unset_title();
    $lugar->columns('poblacion_lugar' );
    $lugar->fields('poblacion_lugar' );
    $lugar->label('poblacion_lugar','Lugar');
    $lugar->default_tab('Lugar');

    $nivel = $xcrud->nested_table('Nivel socioeconómico','id_campana_aviso', 'rel_campana_nivel','id_campana_aviso'); 
    $nivel->unset_title();
    $nivel->columns('id_poblacion_nivel' );
    $nivel->fields('id_poblacion_nivel' );
    $nivel->label('id_poblacion_nivel','Nivel socioeconómico');
    $nivel->relation('id_poblacion_nivel','cat_poblacion_nivel','id_poblacion_nivel','nombre_poblacion_nivel');
    $nivel->default_tab('Nivel socioeconómico');

    $educacion = $xcrud->nested_table('Educación','id_campana_aviso', 'rel_campana_nivel_educativo','id_campana_aviso'); 
    $educacion->unset_title();
    $educacion->columns('id_poblacion_nivel_educativo' );
    $educacion->fields('id_poblacion_nivel_educativo' );
    $educacion->label('id_poblacion_nivel_educativo','Educación');
    $educacion->relation('id_poblacion_nivel_educativo','cat_poblacion_nivel_educativo','id_poblacion_nivel_educativo','nombre_poblacion_nivel_educativo');
    
    $educacion->table_name('Nivel educativo');
    $educacion->default_tab('Educación');

    $sexo = $xcrud->nested_table('Sexo','id_campana_aviso', 'rel_campana_sexo','id_campana_aviso'); 
    $sexo->unset_title();
    $sexo->columns('id_poblacion_sexo' );
    $sexo->fields('id_poblacion_sexo' );
    $sexo->label('id_poblacion_sexo','Sexo');
    $sexo->relation('id_poblacion_sexo','cat_poblacion_sexo','id_poblacion_sexo','nombre_poblacion_sexo');
    $sexo->table_name('Sexo');
    $sexo->default_tab('Sexo');

    $maudio = $xcrud->nested_table('Audios','id_campana_aviso', 'rel_campana_maudio','id_campana_aviso'); 
    $maudio->unset_title();
    $maudio->columns('id_tipo_liga, nombre_campana_maudio, url_audio, file_audio' );
    $maudio->fields('id_tipo_liga, nombre_campana_maudio, url_audio, file_audio' );
    $maudio->label('id_tipo_liga','Tipo de liga');
    $maudio->label('nombre_campana_maudio','Nombre del audio');
    $maudio->label('url_audio','URL del audio');
    $maudio->label('file_audio','Archivo del audio');
    $maudio->relation('id_tipo_liga','cat_tipo_liga','id_tipo_liga','tipo_liga');
    $maudio->change_type('file_audio', 'file', '', array('not_rename'=>true, 'path'=>'../data/campanas/audios/'));
    $maudio->table_name('Audios');
    $maudio->default_tab('Audios');
    $maudio->after_upload('after_upload_maudio', 'functions.php');

    $mimagenes = $xcrud->nested_table('Imágenes','id_campana_aviso', 'rel_campana_mimagenes','id_campana_aviso'); 
    $mimagenes->unset_title();
    $mimagenes->columns('id_tipo_liga, nombre_campana_mimagen, url_imagen, file_imagen' );
    $mimagenes->fields('id_tipo_liga, nombre_campana_mimagen, url_imagen, file_imagen' );
    $mimagenes->label('id_tipo_liga','Tipo de liga');
    $mimagenes->label('nombre_campana_mimagen','Nombre de la imagen');
    $mimagenes->label('url_imagen','URL de la imagen');
    $mimagenes->label('file_imagen','Archivo de la imagen');
    $mimagenes->relation('id_tipo_liga','cat_tipo_liga','id_tipo_liga','tipo_liga');
    $mimagenes->change_type('file_imagen', 'file', '', array('not_rename'=>true,
                                                             'thumbs'=>array(
                                                                       array('width'=> 50, 'marker'=>'_small'),
                                                                       array('width'=> 100, 'marker'=>'_middle'),
                                                                       array('width' => 150, 'folder' => 'thumbs')
                                                              ),
                                                              'path'=>'../data/campanas/imagenes/'));
    $mimagenes->after_upload('after_upload_mimagenes', 'functions.php');
    $mimagenes->table_name('Imágenes');
    $mimagenes->default_tab('Imágenes');

    $mvideo = $xcrud->nested_table('Videos','id_campana_aviso', 'rel_campana_mvideo','id_campana_aviso'); 
    $mvideo->unset_title();
    $mvideo->after_upload('after_upload_mvideo', 'functions.php');
    $mvideo->columns('id_tipo_liga, nombre_campana_mvideo, url_video, file_video' );
    $mvideo->fields('id_tipo_liga, nombre_campana_mvideo, url_video, file_video' );
    $mvideo->label('id_tipo_liga','Tipo de liga');
    $mvideo->label('nombre_campana_mvideo','Nombre del video');
    $mvideo->label('url_video','URL del video');
    $mvideo->label('file_video','Archivo del video');
    $mvideo->relation('id_tipo_liga','cat_tipo_liga','id_tipo_liga','tipo_liga');
    $mvideo->change_type('file_video', 'file', '', array('not_rename'=>true, 'path'=>'../data/campanas/videos/'));
    $mvideo->table_name('Videos');
    $mvideo->default_tab('Videos');

    echo $xcrud->render();
?>
      </div>
   </div>

