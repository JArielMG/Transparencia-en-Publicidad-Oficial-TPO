<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Sys_Correo extends CI_Controller {
		
		public function __construct()
		{
			parent::__construct();
			$this->load->helper("url");
		}
		public function index()
		{
			if (isset($_GET['id_correo'])===true) {
			   $id_correo = $_GET['id_correo'];
			   if (isset($_GET['id'])===true) {
 			      if (isset($_GET['m'])===true) {
			         $id_ingeniero = base64_decode( $_GET['id'] );
   			         if (isset($_GET['t'])===true) {
			            sendMailD3D( $id_correo, 'cortesluis@hotmail.com', $_GET['m'], $id_ingeniero, $_GET['t'] );
                                 } else {
			            sendMailD3D( $id_correo, 'cortesluis@hotmail.com', $_GET['m'], $id_ingeniero );
                                 }
			      } else {
			         echo '<center><h2>Error, en parametros!</h2></center>';
			      } 			   
			   } else {
			       echo '<center><h2>Error, en parametros!</h2></center>';
			   }			   
			} else {
			    echo '<center><h2>Error, en parametros!</h2></center>';
			}
		}
	}
?>
