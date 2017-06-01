<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Sec_ChangePwd extends CI_Controller {
   public function index() {
      if (isset($_GET['id']) === true) {
         $data = array( 'id' => $_GET['id'] ); 
         $this->load->view('security/login/ChangePwd', $data);
      } else {
         jsRedirectD3D('Sec_Login');
      }
   }
}

?>
