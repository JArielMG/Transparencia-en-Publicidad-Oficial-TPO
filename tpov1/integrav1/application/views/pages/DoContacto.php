<?php
   $CI =& get_instance();
   $CI->load->model("Tpo_model", "mensajes");
   $CI->mensajes->initialize("tab_mensajes");        

   $data_msg = array();
   $data_msg['id_mensaje']  = 0;
   $data_msg['nombre']      = $_POST["nombre"];
   $data_msg['correo']      = $_POST["correo"];
   $data_msg['asunto']      = $_POST["asunto"];
   $data_msg['mensaje']     = $_POST["mensaje"];         
   $data_msg['comentarios'] = '';
   $data_msg['estatus']     = 26;
   $data_msg['active']      = 1;

   $CI->mensajes->insert( $data_msg ); 
?>
<br>
<center>
   <h2>Gracias, por estar en contacto!</h2>
</center>

