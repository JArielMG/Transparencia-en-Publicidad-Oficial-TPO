<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------
| MEDIA-CLASS
| -------------------------------------------------------------------
| This class does following operations:
|
| 1. Fetch directory structure and redirect to selected media folder
| 2. Upload media to selected folder
| 3. Create folder
| 4. Delete media 
| 5. Save media manager settings
|
*/
class Media extends CI_Controller {
	
	// Construct to define Media base folder
	public function __construct()
	{		
		parent::__construct();
		$this->load->library('session');
		$this->load->helper(array('url','file','directory','form'));
		$this->load->model('manager');
			
		// Define controller relative path
		$cn_dir = realpath(FCPATH.'application/controllers/');
		$fl_dir = realpath(dirname(__FILE__));
		$cn_path = str_replace($cn_dir,'',$fl_dir);		
		$cn_path = str_replace('\\', '/', $cn_path);
		$tmp = explode('/',$cn_path);
		$tmp = array_filter($tmp);
		$cn_path = implode('/',$tmp);
		define('CN_BASE',$cn_path.'/media/');
				
		// Define media base path		
		$params = $this->manager->get_params();			
		$mm_base = FCPATH.'assets/'.$params->media_path;
		$mm_base = str_replace(DIRECTORY_SEPARATOR, '/', $mm_base.'/');
		define('MM_BASE', $mm_base);		
	}
	
	/*
	| Default function of controller to load view with folder
	| tree structure and selected folder media
	*/
	public function index()
	{   		
		// Get media folder path from POST
		$path = $this->input->post('path');		
		
		if(empty($path)){ // If not set then get from session
			$path = $this->session->userdata('path');						
		} else{ // else
			if($path == 'home'){ // if home, unset session path value				
				$path = null;
				$this->session->unset_userdata('path');
			} elseif($path == 'up'){ // switch to media folder 1 level up
				$path = $this->session->userdata('path');				
				$tmp = explode('/',$path);
				array_pop($tmp);
				
				if(!empty($tmp)){ // set to media folder
					$path = implode('/',$tmp);
					$this->session->set_userdata('path',$path);
				} else{ // set to root folder
					$path = null;
					$this->session->unset_userdata('path');					
				}				
			} else { // switch to specified media folder				
				$this->session->set_userdata('path',$path);
			}
		}								
		
		// Get media files
		$data = $this->manager->get_media_list($path);		

		// Get folder tree structure
		$data['foldertree'] = $this->manager->get_folder_tree();

		// Get default settings params
		$data['params'] = $this->manager->get_params();

		// Clear session for uploaded file count on every redirect
		$this->session->unset_userdata('uploadcount');

		// Load view
		$this->load->view('index',$data);		
	}
	
	// Upload media
	public function do_upload()
	{						
		if(isset($_FILES['filedata']) && ($_FILES['filedata']['tmp_name']))
		{    														
			$this->manager->upload_files($_FILES['filedata']);							
		}			

		redirect('/'.CN_BASE, 'refresh');		
	}
	
	// Create folder in specified media directory
	public function create_folder()
	{
		$basepath = MM_BASE;

		// Get media path
		if($this->session->userdata('path')){
			$basepath .= $this->session->userdata('path').'/'; 
		}	

		// Get folder name
		$foldername = trim(strip_tags($this->input->post('foldername')));

		// Sanitize folder name for . .. ...
		$foldername = str_replace('\\', '/', $foldername);
		$tmp = explode('/',$foldername);			
		$tmp = array_filter($tmp);
		$tmp = array_diff($tmp, array('.','..','...'));
		$foldername = implode('/',$tmp);	
		
		// Array to set error messages
		$data = array();

		if($foldername){			
			if($foldername != 'thumb'){
				$dir = $basepath.$foldername;				

				// create folder
				if (!is_dir($dir)) {
				    if(!mkdir($dir, 0777, TRUE)){
				    	// could not create folder					
						$data['errors'] = array('Could not create folder.');									
				    } else {
				    	// Create tmp folder
				    	$dir .= '/thumb';
				    	if(!mkdir($dir, 0777, TRUE)){
					    	// could not create thumb folder					
							$data['errors'] = array('Could not create thumb folder.');									
					    }
				    }
				} else {
					// Directory already exists				
					$data['errors'] = array('Folder already exists.');
				}
			} else {
				// Could not create folder name with 'thumb'				
				$data['errors'] = array('Folder name \'thumb\' is used by system');
			}		
		} else {
			// Folder name empty			
			$data['errors'] = array('Choose appropriate name for folder.');
		}

		// Set error notifications		
		if(!empty($data)){
			$this->session->set_userdata('notifications',$data);
		}

		redirect('/'.CN_BASE, 'refresh');
	}	
	
	// Remove folder or file
	public function remove_media()
	{		
		$rm_media = $this->input->post('rm');				
		foreach($rm_media as $rm){
			// Sanitize file or folder name
			$rm = str_replace('\\', '/', $rm);
			$tmp = explode('/',$rm);			
			$tmp = array_filter($tmp);
			$tmp = array_diff($tmp, array('.','..'));
			$rm = implode('/',$tmp);						
			
			// If name exists
			if($rm){				
				$path = realpath(MM_BASE.$rm);

				// If absolute path exists
				if($path){
					if(is_file($path)){	// if file	
		        		if(unlink($path)){
		        			// path to thumb folder file
							$n = count($tmp) - 1;
							$last_el = $tmp[$n];
							$rm_thumb = str_replace($last_el, 'thumb/'.$last_el, $rm);
							$path = realpath(MM_BASE.$rm_thumb);
							unlink($path);
		        		}
					} elseif(is_dir($path)){	// if folder			
						delete_files($path, TRUE);
						rmdir($path);
					}
				}
			}														
		}
	}
	
	// Save user settings
	public function save_params()
	{		
		$params = $this->input->post();	
		
		if(isset($params['restore'])){	// if restore default settings		
			$params = read_file(realpath(FCPATH . 'assets/default.json'));
		} else { 
			// Set media path
			// Remove extra slashes from media path
			$media_path = explode('/',$params['media_path']);			
			$media_path = array_filter($media_path);
			$media_path = array_diff($media_path, array('.','..'));
			$params['media_path'] = implode('/',$media_path);

			// Check if path exists
			if(!is_dir(realpath(APPPATH . '../assets/'.$params['media_path']))){
				// Set error message if path not exists
				$data = array(
					'errors' => array('<strong>'.$params['media_path'].'</strong>: is not valid path for media folder')				
				);

				$this->session->set_userdata('notifications',$data);
				redirect();
			}	

			// Check if other fields left empty
			$fields = array('allowed_types','max_size','max_width','max_height','media_path','max_filename');
			$stored_params = json_decode(read_file(realpath(FCPATH . 'assets/params.json')));

			// Set default value
			foreach($fields as $key){				
				if(!$params[$key]){
					$params[$key] = $stored_params->$key;
				}					
			}

		    // Set default value of checkboxes
			$params['overwrite'] = isset($params['overwrite']) ? 1 : 0;
			$params['remove_spaces'] = isset($params['remove_spaces']) ? 1 : 0;			
			$params['encrypt_name'] = isset($params['encrypt_name']) ? 1 : 0;			
			$params = json_encode($params);
		}
		
		// path to params.json to save default settings
		$path = realpath(APPPATH . '../assets/params.json');		

		if (!write_file($path, $params)) 
		{	
			// set error message if settings not saved
			$data = array(
				'errors' => array('Unable to save media manager settings')				
			);

			$this->session->set_userdata('notifications',$data);					
		}
		
		redirect('/'.CN_BASE, 'refresh');
	}
}

/* End of file media.php */
/* Location: ./application/controllers/media.php */