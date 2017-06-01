<?php
   $CI =& get_instance();
   $CI->load->model("Tpo_model", "encuestas");
   $CI->encuestas->initialize("tab_encuestas");        

   $data_enc = array();
   $data_enc['id_encuesta']  = 0;
   $data_enc['soyun']        = $_POST["soyun"];
   $data_enc['interesadoen'] = $_POST["interesadoen"];
   $data_enc['gasto']        = $_POST["entidad"];
   $data_enc['meenterepor']  = $_POST["meenterepor"];         
   $data_enc['megusta']      = $_POST["facil"];         
   $data_enc['porque']       = $_POST["util"];         
   $data_enc['comentarios']  = $_POST["recomendar"];
   $data_enc['opinion']      = $_POST["opinion"];         
   $data_enc['estatus']      = 26;  // Sin atender
   $data_enc['active']       = 1;

   $CI->encuestas->insert( $data_enc ); 

?>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
   <center>
      <h3 class="blog-post-title" style="font-size: 33px; font-family: 'Dosis', sans-serif;color:#000;font-weight: normal;">
      Gracias, por participar!</h3>
      <img src="../plugins/base/img/pleca.png" /><br><br>  
   </center>
</center>

