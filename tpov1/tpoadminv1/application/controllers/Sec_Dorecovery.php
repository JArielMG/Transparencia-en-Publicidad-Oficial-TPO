<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Sec_Dorecovery extends CI_Controller {
   public function __construct() {
      parent::__construct();
      $this->load->model('Dologin_model', 'users');
      $this->users->initialize("sec_users");
   }
   public function index() {
      $mail_valido = filter_var($_POST['mail'], FILTER_VALIDATE_EMAIL);
      $captcha_valida = false;
      if (strlen($_POST['g-recaptcha-response'])>0) {
         $captcha_valida = true;
      }
      $resultado = $mail_valido && $captcha_valida;
      if ($resultado == true) {
         $encontrado = $this->users->countAllResults('email', '=', $_POST['mail']);
         if ($encontrado == 1) {
            $resultado = true;
         } else {
            $resultado = false;				
         }
      }
      $datos = array( 'resultado' => $resultado );
      if ($resultado == true) {
	 $this->load->view('security/login/RecoveryOut', $datos);
         sendMailD3D( 1, $mail_valido, 'mail', 0 );
      } else {
         $this->load->view('security/login/RecoveryOut', $datos);
      }
   }
}

?>
