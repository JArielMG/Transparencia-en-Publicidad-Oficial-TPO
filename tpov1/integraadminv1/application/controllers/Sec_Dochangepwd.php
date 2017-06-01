<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Sec_Dochangepwd extends CI_Controller {	
   public function __construct() {
      parent::__construct();
      $this->load->model('tpo_model', 'users');
      $this->users->initialize("sec_users");
      $this->load->model("tpo_model", "log_ing");
      $this->log_ing->initialize("sys_log");        
   }
   public function index() {
      $resultado = false;
      if ((isset($_POST['id']) === true) and (isset($_POST['clave1']) === true) and (isset($_POST['clave2']) === true)) {
         $clave_valida = comprobarD3D($_POST['clave1']);
         $resultado = $clave_valida;
         if ($_POST['clave1']<>$_POST['clave2']) {
            $resultado = false;
         }
      } else {
         $resultado = false;
      }
      $cambio = false;
      if ($resultado === true) {
         $usuario_act = $this->users->find('id_user', base64_decode($_POST['id']) );
         $data  = array( 'password' => sha1( $_POST['clave1'] ) );         
	 $this->users->updateWhere( $data ,  'id_user', base64_decode($_POST['id']) );
         $data  = array( 'active' => 'a' );         
	 $this->users->updateWhere( $data ,  'id_user', base64_decode($_POST['id']) );
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
         if ($data_log['id_user'] == NULL) { $data_log['id_user']=1; }

         $this->log_ing->insert( $data_log ); 
         $cambio = true;
         sendMailD3D( 15, $usuario_act->email, 'mail', $usuario_act->id_user, 'u', 1 );
      }
      $data = array( 'cambio' => $cambio );
      $this->load->view('security/login/Dochangepwd', $data);	    	
   }
}
?>
