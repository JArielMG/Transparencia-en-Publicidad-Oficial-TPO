<div class="page">
	<div style="width:90%;margin:auto;">
    <br><br>
		<?php
    		$debug_file_name = 'V->'.basename(__FILE__, ".php").'->> '; 
    		include_once(DIR_ROOT . 'xcrud/xcrud.php');

    		$xcrud = Xcrud::get_instance();
    		$xcrud->table('fecha_act');
    		$xcrud->unset_title();
    		$xcrud->unset_remove();
    		$xcrud->unset_add();
    		$xcrud->unset_view();
    		$xcrud->unset_csv();
    		$xcrud->unset_print();
    		$xcrud->unset_search();
    		$xcrud->unset_limitlist();
    	
		    $xcrud->columns('last_update');
    		$xcrud->fields('last_update');
		    $xcrud->label('last_update','Última actualización ');
  
    		echo $xcrud->render();
 
		?>  
	                                                           
	</div>
</div>

