<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Sec_Dologin extends CI_Controller {	
   public function __construct() {
      parent::__construct();
      $this->load->model('Dologin_model', 'users');
      $this->users->initialize("vso_actual");
      $this->load->model("Tpo_model", "log_ing");
      $this->log_ing->initialize("sys_log");        
      initSessionD3D();
   }
   public function index() {
      if ((isset($_POST['username']) === true) and (isset($_POST['clave']) === true)) {
         $user_valido  = comprobarD3D(trim($_POST['username']));
         $clave_valida = comprobarD3D($_POST['clave']);
         $resultado = $user_valido && $clave_valida;
      } else {
         $resultado = false;
      }
      $acceso = false;
      $cambio = false;
      if ($resultado==1) {
         $encontrado = $this->users->countAllResults('username', '=', $_POST['username']);
        if ($encontrado==1) {
	    $usuario_act = $this->users->find('username', $_POST['username']);
	    if ($usuario_act->active=="a") {
  	       if ($usuario_act->password === sha1($_POST['clave'])) {
                  $acceso = true;
                  openSessionD3D( $usuario_act );
                  $username = $_POST['username'];
                  $data_log = array();
                  $data_log['id_log']       = 0;
                  $data_log['id_user']      = $usuario_act->id_user;
                  $data_log['id_bis']       = 0;
                  $data_log['type']         = 'login';
                  $data_log['log']          = 'access';         
                  $data_log['log_coments']  = '';
                  $data_log['id_type']      = '';
                  $data_log['log_status_change'] = '';
                  $data_log['log_ip']            = $_SERVER['REMOTE_ADDR'];
                  //$this->log_ing->insert( $data_log ); 
	       }
            } else {
	       if ($usuario_act->active=="p") {
  	          if ($usuario_act->cookie_id === $_POST['clave']) {
                     $cambio = true;
                     $data_log = array();
                     $data_log['id_log']       = 0;
                     $data_log['id_user']      = $usuario_act->id_user;
                     $data_log['id_bis']       = 0;
                     $data_log['type']         = 'login';
                     $data_log['log']          = 'changepassword';         
                     $data_log['log_coments']  = '';
                     $data_log['id_type']      = '';
                     $data_log['log_status_change'] = '';
                     $data_log['log_ip']       = $_SERVER['REMOTE_ADDR'];
                     //$this->log_ing->insert( $data_log ); 
                  }
	       }
            }
	 }
      }
      if ($acceso) {
         $user_id = getD3D("user_id");
         $so_tipo = getD3D('so_tipo');
         if ( $user_id > 1 ) {  //Administrador
            switch ( $so_tipo ) {
               case 1:  // Contratante
                  jsRedirectD3D('Sys_Hub?v=Facturas&g=pages');
                  break;
               case 2:  // Solicitante
                  jsRedirectD3D('Sys_Hub?v=Campanas&g=pages');
                  break;
               case 3:  // Ambos
                  jsRedirectD3D('Sys_Hub?v=Facturas&g=pages');
                  break;
               }
         } else {  // Administrador
            jsRedirectD3D('Sys_Hub?v=Sec_users&g=security/data');
         }
      } else {
         if ($cambio) {
            jsRedirectD3D('Sec_ChangePwd?id='.base64_encode ($usuario_act->id_user) );
         } else {
            $this->load->view('security/login/Dologin');	    	
         }
      }
   }
}
?>
