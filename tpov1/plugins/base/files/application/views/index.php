<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Media Manager</title>    
    <link href='<?php echo base_url();?>assets/css/bootstrap.min.css' rel='stylesheet'>        
    <link href='<?php echo base_url();?>assets/css/magnific-popup.css' rel='stylesheet'>    
    <link href='<?php echo base_url();?>assets/css/dropzone.css' rel='stylesheet'>
    <link href='<?php echo base_url();?>assets/css/media.css' rel='stylesheet'>        
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>      
      <script src='<?php echo base_url();?>assets/js/html5shiv.min.js'></script>
      <script src='<?php echo base_url();?>assets/js/respond.min.js'></script>
    <![endif]-->
  </head>
  <body>
    <?php include 'manager.php'; ?>        
    <script src='<?php echo base_url();?>assets/js/jquery-1.11.1.min.js'></script>    
    <script src='<?php echo base_url();?>assets/js/bootstrap.min.js'></script>   
    <script src='<?php echo base_url();?>assets/js/masonry.pkgd.min.js'></script>
    <script src='<?php echo base_url();?>assets/js/jquery.magnific-popup.min.js'></script>    
    <script src='<?php echo base_url();?>assets/js/bootbox.min.js'></script>
    <script src='<?php echo base_url();?>assets/js/cookie.js'></script>    
    <script src='<?php echo base_url();?>assets/js/dropzone.min.js'></script>
    <script src='<?php echo base_url();?>assets/js/media.js'></script>
    <script src='<?php echo base_url();?>assets/js/client.js'></script>
    <script>var site_url = '<?php echo site_url(CN_BASE); ?>';</script>            
    <script>
    // Drag and drop support for files upload
    Dropzone.options.uploadForm = {
        paramName: 'filedata', // The name that will be used to transfer the file
        uploadMultiple: true,
        maxFilesize: <?php echo $params->max_size; ?>, //MB 
        maxFiles: 10,   
        parallelUploads: 1,
        addRemoveLinks: true,
        autoProcessQueue: false,
        init: function() {          
            dz = this;          
            var submitButton = $('.upload-btn');

            // On adding file
            dz.on('addedfile', function(file) {            
                submitButton.css('display','block');            
            });

            // On removing file
            dz.on('removedfile', function(file) {            
                if(!dz.getQueuedFiles().length){
                    submitButton.css('display','none');
                }
            });  

            // On clicking submit button start upload process
            submitButton.click(function(){
                dz.processQueue();
            }); 

            // process files queue if left to upload
            dz.on('success', function(file) {              
                if(dz.getQueuedFiles().length) {              
                    dz.processQueue();
                }
            });

            // Send file starts
            dz.on('sending', function(file, xhr, formData) {             
                formData.append('count',1); // set to create  
                formData.append('client',JSON.stringify(client));                          
                $('.meter').show();
            });

            // File upload Progress
            dz.on('totaluploadprogress', function(progress) {            
                $('.roller').width(progress + '%');
            });

            dz.on('queuecomplete', function(progress) {
                $('.meter').delay(999).slideUp(999);
                submitButton.css('display','none');
                window.location.assign(site_url);
            });            
        }
    };
    </script>
  </body>
</html>