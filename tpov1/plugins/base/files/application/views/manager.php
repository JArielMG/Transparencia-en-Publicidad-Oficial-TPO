<div id="manager" class="container-fluid">
  <!-- BEGIN HEADER -->
  <div id="page-title" class="row">
    <div class="col-md-12">
      <h2><span class="glyphicon glyphicon-picture"></span> Archivos</h2>
    </div>
  </div>
  <!-- END HEADER -->
  <!-- BEGIN TOOLBAR CONTAINER -->
  <div id="controls" class="row">
    <div class="col-md-12">
      <div id="toolbar" class="btn-toolbar">
        <div id="toolbar-offcanvas" class="btn-wrapper">               
          <button id="showTreeView" type="button" class="btn btn-sm btn-default visible-xs-inline-block"><span class="glyphicon glyphicon-list"></span> <span class="hidden-xs">Folders</span></button>
        </div>                                  
        <div id="toobar-upload" class="btn-wrapper">
          <button type="button" data-toggle="collapse" data-target="#collapseUpload" class="btn btn-sm btn-success"><span class="glyphicon glyphicon-plus"></span> <span class="hidden-xs">Upload</span></button>
        </div>
        <div id="toolbar-create" class="btn-wrapper">
          <button type="button" data-toggle="collapse" data-target="#collapseFolder" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-folder-open"></span> <span class="hidden-xs">Create New Folder</span></button>
        </div>
        <div id="toolbar-delete" class="btn-wrapper">          
          <button type="button" class="btn btn-sm btn-default" onclick="delete_media()"><span class="glyphicon glyphicon-remove"></span> <span class="hidden-xs">Delete</span></button>
        </div>
        <div id="toolbar-options" class="btn-wrapper">          
          <button id="optionBtn" type="button" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-cog"></span> <span class="hidden-xs">Options</span></button>
        </div>        
      </div>
    </div>
  </div> 
  <!-- END TOOLBAR CONTAINER -->
  <!-- PAGE CONTAINER -->
  <div id="page-view" class="row">               
    <!-- BEGIN NOTIFICATIONS CONTAINER -->
    <div id="notifications" class="col-md-12">
    <?php $msg = $this->session->userdata('notifications'); ?>
    <?php if(isset($msg) && !empty($msg)): ?>              
      <?php if(isset($msg['success']) && !empty($msg['success'])): // Success Messages ?>          
        <div class="alert alert-success fade in" role="alert">    
          <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>        
          <?php foreach($msg['success'] as $key => $sc): ?>
            <?php echo $sc; ?>
          <?php endforeach; ?>
        </div>
      <?php endif; ?>        
      <?php if(isset($msg['errors']) && !empty($msg['errors'])): // Error Messages ?>
        <div class="alert alert-warning fade in" role="alert">    
        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>        
        <?php foreach($msg['errors'] as $key => $error): ?>
          <?php echo $error; ?>
        <?php endforeach; ?>
        </div>
      <?php endif; ?>        
    <?php endif; ?>
    <?php $this->session->unset_userdata('notifications'); ?>
    </div> 
    <!-- END NOTIFICATIONS CONTAINER -->    
    <div id="wrap" class="wrap">
      <!-- FOLDER TREE STRUCTURE CONTAINER -->
      <div id="treeview" class="col-lg-2 col-md-3 col-sm-3 oc">                                                                          
        <ul id="media-home">
          <li>
            <?php $path = $this->session->userdata('path'); ?>           
            <a class="<?php if(!$path) echo 'active'; ?> mediapath" href="home"><span class="glyphicon glyphicon-folder-open"></span> <?php echo $params->media_path; ?></a>            
            <?php if(isset($foldertree)): ?>
              <?php generate_folder_tree($foldertree,$path); ?>
            <?php endif; ?> 
          </li>
        </ul>                                                
      </div>
      <!-- END OF FOLDER TREE STRUCTURE CONTAINER -->      
      <div class="col-lg-10 col-md-9 col-sm-9 col-xs-12">    
        <!-- File Upload Form -->        
        <div id="collapseUpload" class="media-actions collapse">   
          <form action="<?php echo site_url(CN_BASE.'do_upload'); ?>" id="uploadForm" class="form-inline dropzone" role="form" method="post" enctype="multipart/form-data">                        
            <div class="form-group fallback">              
              <label for="upload-file">Upload file</label>      
              <input type="file" id="upload-file" class="form-control" name="filedata[]" multiple>  
              <button class="btn btn-primary" id="upload-submit"><span class="glyphicon glyphicon-upload"></span> Start Upload</button>
            </div>   
            <div class="meter"><span class="roller"></span></div>             
            <button type="button" class="btn btn-primary upload-btn"><span class="glyphicon glyphicon-upload"></span> Start Upload</button>                                        
          </form>
          <p class="help-block">Upload files (Maximum Size: <?php echo $params->max_size; ?> MB)</p>
        </div>      
        <!-- Create Folder Form -->
        <div id="collapseFolder" class="media-actions collapse">
          <form action="<?php echo site_url(CN_BASE.'create_folder'); ?>" class="form-inline" role="form" method="post">
            <div class="form-group">
              <label class="sr-only" for="folderpath">Folder path</label>
              <input type="text" id="folderpath" class="form-control input-sm" readonly value="<?php echo $this->session->userdata('path').'/'; ?>">
            </div>
            <div class="form-group">
              <label class="sr-only" for="foldername">Folder name</label>
              <input type="text" id="foldername" name="foldername" class="form-control input-sm">
            </div>          
            <button type="submit" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-folder-open"></span> Create Folder</button>                              
          </form>
        </div>
        <!-- Media View -->
        <div id="mediaview">                   
          <form id="mediaForm" action="<?php echo site_url(CN_BASE); ?>" method="POST">       
            <?php include 'medialist.php'; ?>
            <input id="path" name="path" type="hidden" />                        
          </form>
        </div>           
      </div>
    </div>                      
  </div>
  <!-- END PAGE CONTAINER -->
</div>
<!-- Modal For Media Manager Settigs -->
<div class="modal fade" id="optionModal" tabindex="-1" role="dialog" aria-labelledby="optionModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- Modal Header -->
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="optionModalLabel">Media Manager Settings</h4>
      </div>
      <form id="paramForm" class="form-horizontal" role="form" action="<?php echo site_url(CN_BASE.'save_params'); ?>" method="POST">
        <div class="modal-body">                
          <!-- Allowed Extensions -->
          <div class="form-group">
            <label for="allowedTypes" class="col-sm-4 control-label small" data-toggle="tooltip" title="Allowed extension types (separated by comma)">Allowed Types</label>
            <div class="col-sm-8">
              <input type="text" class="form-control input-sm" id="allowedTypes" name="allowed_types" placeholder="Allowed Extensions (separated by comma)" value="<?php echo $params->allowed_types; ?>">
            </div>
          </div>
          <!-- Max. File Size -->                  
          <div class="form-group">
            <label for="maxSize" class="col-sm-4 control-label small" data-toggle="tooltip" title="Maximum file size (MB) can be uploaded">Maximum Size (in MB)</label>
            <div class="col-sm-8">
              <input type="number" min="1" class="form-control input-sm" id="maxSize" name="max_size" placeholder="Maximum size (MB)" value="<?php echo $params->max_size; ?>">
            </div>
          </div>
          <!-- Max. Width -->
          <div class="form-group">
            <label for="maxWidth" class="col-sm-4 control-label small" data-toggle="tooltip" title="Maximum width of images allowed to be uploaded">Maximum Width (in Px)</label>
            <div class="col-sm-8">
              <input type="number" min="1" class="form-control input-sm" id="maxWidth" name="max_width" placeholder="Maximum Width (in Px for images)" value="<?php echo $params->max_width; ?>">
            </div>
          </div>
          <!-- Max. Height -->
          <div class="form-group">
            <label for="maxHeight" class="col-sm-4 control-label small" data-toggle="tooltip" title="Maximum height of images allowed to be uploaded">Maximum Height (in Px)</label>
            <div class="col-sm-8">
              <input type="number" min="1" class="form-control input-sm" id="maxHeight" name="max_height" placeholder="Maximum Height (in Px for images)" value="<?php echo $params->max_height; ?>">
            </div>
          </div>   
          <!-- Media Folder -->                 
          <div class="form-group">
            <label for="mediaPath" class="col-sm-4 control-label small" data-toggle="tooltip" title="Valid path to media folder">Media Folder</label>
            <div class="col-sm-8">
              <div class="input-group">
                <div class="input-group-addon">assets/</div>
                <input type="text" class="form-control input-sm" id="mediaPath" name="media_path" placeholder="Media folder path" value="<?php echo $params->media_path; ?>">
              </div>
            </div>
          </div> 
          <!-- Max. File Name -->         
          <div class="form-group">
            <label for="maxFilename" class="col-sm-4 control-label small" data-toggle="tooltip" title="Maximum characters of file name to be uploaded (0: Unlimited)">Maximum File Name</label>
            <div class="col-sm-8">
              <input type="number" min="0" class="form-control input-sm" id="maxFilename" name="max_filename" placeholder="Maximum filename (in characters)" value="<?php echo $params->max_filename; ?>">
            </div>
          </div>
          <!-- Overwrite-->
          <div class="form-group">
            <label class="col-sm-4 control-label small" data-toggle="tooltip" title="If checked files with same name and type will be overwritten">Overwrite</label>
            <div class="col-sm-8">                
                <input type="checkbox" name="overwrite" <?php if($params->overwrite) echo 'checked'; ?>>                
            </div>            
          </div> 
          <!-- Remove Spaces -->
          <div class="form-group">
            <label class="col-sm-4 control-label small" data-toggle="tooltip" title="Remove spaces between name of uploaded files">Remove Spaces</label>
            <div class="col-sm-8">                
                <input type="checkbox" name="remove_spaces" <?php if($params->remove_spaces) echo 'checked'; ?>>                
            </div>            
          </div> 
          <!-- Encrypt Media Name -->
          <div class="form-group">
            <label class="col-sm-4 control-label small" data-toggle="tooltip" title="Encrypt name of uploaded files">Encrypt File Name</label>
            <div class="col-sm-8">                
                <input type="checkbox" name="encrypt_name" <?php if($params->encrypt_name) echo 'checked'; ?>>                
            </div>            
          </div>
          <!-- Restore Default Settings -->
          <div class="form-group">
            <label class="col-sm-4 control-label small" data-toggle="tooltip" title="Restore default settings of media manager">Restore Default Settings</label>
            <div class="col-sm-8">                
                <input type="checkbox" name="restore">                
            </div>            
          </div>  
          <p class="small"><strong>Note: </strong>Set file-size, width, height, file-name to 0 for no limit</p>                                 
        </div>
        <!-- Modal Footer -->      
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </div> 
      </form>     
    </div>
  </div>
</div>
<div id="media-modal-popup" class="container mfp-hide">
  <div class="row white-popup">
    <div class="mfp-close"></div>
    <div class="col-md-7">
        <h2 class="mfp-imageName"></h2>
        <div class="mfp-imageLink"></div>
    </div>
    <div class="col-md-5"><div class="mfp-imageTitle"></div></div>
  </div>
</div>
<?php
// Function to generate folder tree structure
function generate_folder_tree($arr,$path)
{  
  ?>
  <ul class="folder-list">
  <?php foreach($arr as $k => $v): ?>    
    <li>
      <?php if($path == $arr[$k]['path']): // if current opened folder ?>
      <a class="active mediapath" href="<?php echo $arr[$k]['path']; ?>"><span class="glyphicon glyphicon-folder-open"></span> <?php echo $k; ?></a>    
      <?php else: ?>
      <a class="mediapath" href="<?php echo $arr[$k]['path']; ?>"><span class="glyphicon glyphicon-folder-close"></span> <?php echo $k; ?></a>
      <?php endif; ?>
      <?php if(isset($arr[$k]['children'])): // Recursive call ?>
        <?php generate_folder_tree($arr[$k]['children'],$path); ?>
      <?php endif; ?>
    </li>
  <?php endforeach; ?>
  </ul>
  <?php 
}
?>
