<?php defined('BASEPATH') OR exit('No direct script access allowed');
   class Sys_Screen extends CI_Controller {
      public function __construct() {
         parent::__construct();
         $this->load->model("Tpo_model", "mapa");
         $this->mapa->initialize("vmapa");        
      }
      public function index() {
         $data['mapas'] = $this->mapa->get();

         setD3D("page_act",   $this->input->get('v'));
         if (strlen(trim($this->input->get('g')))==0) {
	    setD3D("group_act",  "");
	 } else {
	    setD3D("group_act",  $this->input->get('g') . "/");
	 }
	 if (getD3D("page_act")=='') {
	    setD3D("group_act", "pages/");
	    setD3D("page_act",  "Principal");
         }
         $this->load->view(getD3D("group_act") . getD3D("page_act"), $data, false);
      }
   }
?>

