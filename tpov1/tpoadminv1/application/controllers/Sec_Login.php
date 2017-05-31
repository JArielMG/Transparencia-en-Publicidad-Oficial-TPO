<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Sec_Login extends CI_Controller {
      function __construct() {
         parent::__construct();
         $this->load->model("Tpo_model", "settings");
         $this->settings->initialize("sys_settings");
      }
      
      public function index() {
         closeSessionD3D();
         $data['recaptcha'] = $this->settings->get_recaptcha();
         $this->load->view('security/login/Login', $data);
      }
}

?>
