<?php defined('BASEPATH') OR exit('No direct script access allowed');
   class Sys_Hub extends CI_Controller {
      public function index() {
         initSessionD3D();
         resetDebugD3D();
         if (getD3D('user_id')==0) jsRedirectD3D('Sec_Login');
         setD3D("page_act",   $this->input->get('v'));
         if (strlen(trim($this->input->get('g')))==0) {
	    setD3D("group_act",  "");
	 } else {
	    setD3D("group_act",  $this->input->get('g') . "/");
	 }
         setD3D("page_title", $this->lang->line( 'title_' . getD3D("page_act") ));        
	 $this->load->view('system/base/Top');
	 $this->load->view('system/base/Menu'); 

	 if (getD3D("page_act")=='') {
	    setD3D("group_act", "tools/");
	    setD3D("page_act",  "Blank");
         }
         $this->load->view(getD3D("group_act") . getD3D("page_act"));
         $this->load->view('system/base/Footer');		
      }
   }
?>
