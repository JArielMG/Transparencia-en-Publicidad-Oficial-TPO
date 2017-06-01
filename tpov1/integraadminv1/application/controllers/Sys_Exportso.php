<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Sys_Exportso extends CI_Controller {	
   public function __construct() {
      parent::__construct();
      $this->load->model("Tpo_model", "so");
   }
   public function index() {  
      $so = $this->so->get_so();      
      $aout[0][0] = "Orden de gobierno";
      $aout[0][1] = "Estado";
      $aout[0][2] = "Tipo de sujeto obligado";
      $aout[0][3] = "Nombre del sujeto obligado";
      $aout[0][4] = "URL del portal";
      $aout[0][5] = "Función";
      $aout[0][6] = "Estatus del sujeto obligado";
      $aout[0][7] = "Nombre del servidor público";
      $aout[0][8] = "Cargo";
      $aout[0][9] = "Correo electrónico";
      $aout[0][10] = "Teléfono";
      $aout[0][11] = "Estatus del servidor público";      
      $j = 1;
      foreach ($so as $campos) {
         $i = 0;
         $outdetalle= array ();
         foreach ($campos as &$campo) {
            $campo = str_replace("'", "", $campo);
            $campo = str_replace('"', "", $campo);
            $campo = str_replace(',', "", $campo);
            $campo = str_replace(';', "", $campo);
            $aout[$j][$i] = $campo;
            $i=$i+1;
         }
         $j=$j+1;
      }        
      header("Content-type: text/csv");
      header("Content-Disposition: attachment; filename=sujetos_obligados.csv");
      header("Pragma: no-cache");
      header("Expires: 0");      
      echo generateCsvD3D( $aout );
   }
}
?>
