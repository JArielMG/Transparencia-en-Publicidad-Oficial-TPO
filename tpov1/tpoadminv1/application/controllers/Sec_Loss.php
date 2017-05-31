<?php defined('BASEPATH') OR exit('No direct script access allowed');
   class Sec_Loss extends CI_Controller {
      public function index() {
         $this->load->view('security/login/Loss');
      }
}
