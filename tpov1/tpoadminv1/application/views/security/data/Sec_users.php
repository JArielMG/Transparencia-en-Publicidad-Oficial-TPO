   <div class="page">
      <div style="width:90%;margin:auto;">
      <br>
<?php
    $debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    include_once(DIR_ROOT . 'xcrud/xcrud.php');

    $xcrud = Xcrud::get_instance();
    $xcrud->table('sec_users');
    $xcrud->unset_title();
    $xcrud->default_tab('Usuarios');
    $xcrud->table_name('Usuarios');

    $xcrud->unset_view();

    $xcrud->columns('username, email, fname, lname, record_user, active');
    $xcrud->fields('username, email, fname, lname, record_user, phone, password, active');

    $xcrud->label('username','Usuario');
    $xcrud->label('email','Correo electrónico');
    $xcrud->label('fname','Nombre(s)');
    $xcrud->label('lname','Apellidos');
    $xcrud->label('record_user','Sujeto obligado ');
    $xcrud->label('phone','Teléfono ');
    $xcrud->label('password','Contraseña ');
    $xcrud->label('active','Estatus ');

    $xcrud->change_type('cookie_id', 'password', 'sha1');
    $xcrud->change_type('token', 'password', 'sha1');
    $xcrud->change_type('public_office', 'password', 'sha1');
    $xcrud->change_type('created', 'password', 'sha1');
    $xcrud->change_type('lastlogin', 'password', 'sha1');
    $xcrud->change_type('lastip', 'password', 'sha1');
    $xcrud->change_type('notes', 'password', 'sha1');
    $xcrud->change_type('last_update', 'password', 'sha1');
    $xcrud->change_type('active','select','',array('a'=>'Activo','i'=>'Inactivo'));    
    $xcrud->relation('record_user','tab_sujetos_obligados','id_sujeto_obligado','nombre_sujeto_obligado');
    $xcrud->change_type('password', 'password', 'sha1');
    $xcrud->field_tooltip('active','Indica el estatus del usuario: a=Activo, i=Inactivo.');
    echo $xcrud->render();
?>                                                                
      </div>
   </div>

