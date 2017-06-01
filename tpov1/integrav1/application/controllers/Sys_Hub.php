<?php defined('BASEPATH') OR exit('No direct script access allowed');
   class Sys_Hub extends CI_Controller {
      public function __construct() {
         parent::__construct();
         $this->load->model("Tpo_model", "fechaact");
         $this->fechaact->initialize("sec_users");        
      }
      public function index() {
         $data['fechaact'] = $this->fechaact->get();
         initSessionD3D();
         resetDebugD3D();
         setD3D("page_act",   $this->input->get('v'));
         if (strlen(trim($this->input->get('g')))==0) {
	    setD3D("group_act",  "");
	 } else {
	    setD3D("group_act",  $this->input->get('g') . "/");
	 }
    setD3D("page_title", $this->lang->line( 'title_' . getD3D("page_act") ));        
	 $this->load->view('system/base/Top');
	 $this->load->view('system/base/Menu', $data, FALSE);

	 if (getD3D("page_act")=='') {
	    setD3D("group_act", "pages/");
	    setD3D("page_act",  "Principal");
         }
         $this->load->view(getD3D("group_act") . getD3D("page_act"));
         $this->load->view('system/base/Footer');		
      }
   }
?>

