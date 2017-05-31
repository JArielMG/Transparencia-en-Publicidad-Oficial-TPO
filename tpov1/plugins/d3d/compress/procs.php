<?php
   function limpiarCadena($valor){
	$valor = str_ireplace("javascript:alert","",$valor);
	$valor = str_ireplace("alert","",$valor);
	$valor = str_ireplace("SELECT","",$valor);
	$valor = str_ireplace("COPY","",$valor);
	$valor = str_ireplace("DELETE","",$valor);
	$valor = str_ireplace("DROP","",$valor);
	$valor = str_ireplace("DUMP","",$valor);
	$valor = str_ireplace(" OR ","",$valor);
	$valor = str_ireplace("%","",$valor);
	$valor = str_ireplace("LIKE","",$valor);
	$valor = str_ireplace("--","",$valor);
	$valor = str_ireplace("^","",$valor);
	$valor = str_ireplace("[","",$valor);
	$valor = str_ireplace("]","",$valor);
	$valor = str_ireplace("\\","",$valor);
	$valor = str_ireplace("!","",$valor);
	$valor = str_ireplace("¡","",$valor);
	$valor = str_ireplace("?","",$valor);
	$valor = str_ireplace("=","",$valor);
	$valor = str_ireplace("&","",$valor);
	return $valor;
   }

   function mysql_escape_mimic($inp) { 
      if(is_array($inp)) 
          return array_map(__METHOD__, $inp); 
 
      if(!empty($inp) && is_string($inp)) { 
         return str_replace(array('\\', "\0", "\n", "\r", "'", '"', "\x1a"), array('\\\\', '\\0', '\\n', '\\r', "\\'", '\\"', '\\Z'), $inp); 
      } 
      return $inp; 
   } 
   $input_arr = array(); 
   foreach ($_POST as $key => $input_arr) { 
	$_POST[$key] = htmlspecialchars(addslashes(limpiarCadena(mysql_escape_mimic(strip_tags($input_arr))))); 
   }
   $input_arr = array(); 
   foreach ($_GET as $key => $input_arr) { 
	$_GET[$key] = htmlspecialchars(addslashes(limpiarCadena(mysql_escape_mimic(strip_tags($input_arr))))); 
   }

?>
