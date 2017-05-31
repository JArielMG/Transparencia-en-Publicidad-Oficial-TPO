<?php $path = $this->session->userdata('path'); ?>
<div id="media-container" class="table-responsive">	
	<!-- Set View Buttons -->
    <div id="mediaViewBtn" class="media btn-group">     	    	
    	<div class="controls pull-left">
    		<div class="mode">
	    		<a id="thumbs" onclick="setViewType('thumbs')" class=""><span class="glyphicon glyphicon-th-large"></span></a>
	    		<a id="details" onclick="setViewType('details')" class=""><span class="glyphicon glyphicon-list"></span></a>
    		</div>    	
    	</div>   
    	<div class="btn-toolbar"> 
	    	<div id="toolbar-select" class="btn-wrapper hidden">               
				<button type="button" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-check"></span> <span class="hidden-xs">Select Items</span></button>        
			</div>		
		</div>   	
    </div>
    <!-- THUMB VIEW MEDIA CONTAINER -->
    <!-- END OF FOLDER TREE STRUCTURE CONTAINER --> 
	<div id="thumbsView" class="mode-view hidden">			
		<div id="masonry-container">			
		<?php if(!empty($path)): // Up button if media inside folder ?>
			<div class="item text-center folder">		
				<div id="up-folder" >
					<a class="btn btn-primary mediapath" href="up"><span class="glyphicon glyphicon-arrow-up"></span></a>			
				</div>
			</div>
		<?php endif; ?>
		<!-- Media List of folders -->
		<?php if(isset($folders)): ?>
			<?php foreach($folders as $folder): ?>
				<div class="item media-item text-center folder">
					<div class="cover"></div>																				
					<div class="media-folder">
						<input type="checkbox" name="rm[]" class="hidden" value="<?php echo $folder['path']; ?>">
						<a class="media-icon mediapath" href="<?php echo $folder['path']; ?>"><span class="glyphicon glyphicon-folder-close"></span></a>						
					</div>
					<div class="media-link">
						<a class="mediapath" href="<?php echo $folder['path']; ?>"><?php echo $folder['name']; ?></a>
					</div>
				</div>				
			<?php endforeach; ?>
		<?php endif; ?>
		<!-- Media List of images -->
		<?php if(isset($images)): ?>
			<?php $i = 0; ?>
			<?php foreach($images as $image): ?>				
				<div class="item media-item">
					<div class="cover"></div>					
					<div class="media-image">
						<input type="checkbox" name="rm[]" class="hidden" value="<?php echo $image['path']; ?>">
						<a class="media-thumb galleryItem" data-group="1" href="<?php echo base_url($image['anchor_url']); ?>">
							<img src="<?php echo base_url($image['img_url']); ?>" alt="<?php echo $image['name']; ?>" 
							style="<?php echo 'width:'.$image['width_x'].'px;height:'.$image['height_x'].'px;'; 
							if($image['width_x'] < 90){
								echo 'margin-top:'.((90 - $image['width_x'])/2).'px';
							}
							?>" 
							width="<?php echo $image['width_x']; ?>" height="<?php echo $image['height_x']; ?>" />
						</a>						
					</div>					
					<div class="media-link">
						<a class="galleryItem" data-group="2" href="<?php echo base_url($image['anchor_url']); ?>" style="<?php echo 'width:'.$image['width_x'].'px'; ?>"><?php echo $image['name']; ?></a>
					</div>
				</div>
			<?php $i++; ?>
			<?php endforeach; ?>
		<?php endif; ?>		
		<?php if(isset($docs)): // Media List of other documents ?>
			<?php foreach($docs as $doc): ?>						
				<div class="item media-item text-center doc">
					<div class="cover"></div>					
					<div class="media-doc">
						<input type="checkbox" name="rm[]" class="hidden" value="<?php echo $doc['path']; ?>">
						<a href="<?php echo base_url($doc['doc_url']); ?>" target="_blank">
							<img src="<?php echo base_url($doc['icon_url-32']); ?>" alt="<?php echo $doc['name']; ?>" style="width:32px;height:32px" width="32" height="32" />						
						</a>						
					</div>					
					<div class="media-link">
						<a href="<?php echo base_url($doc['doc_url']); ?>" target="_blank"><?php echo $doc['name']; ?></a>
					</div>
				</div>				
			<?php endforeach; ?>			
		<?php endif; ?>
		</div>		
	</div>
	<!-- END OF THUMB VIEW MEDIA CONTAINER -->
	<!-- TABLE VIEW MEDIA CONTAINER -->
	<div id="detailsView" class="mode-view hidden">		
		<table class="table table-striped table-condensed">
		<thead>
			<tr>
				<th></th>
				<th>Preview</th>
				<th>Name</th>
				<th style="width:15%">Dimensions (px)</th>
				<th style="width:8%">File size</th>
				<th style="width:8%">Delete</th>
			</tr>
		</thead>
		<tbody>		
		<?php if(!empty($path)): // Up button if inside folder ?>
			<tr>						
				<td colspan="6"><a class="mediapath" href="up"><span class="glyphicon glyphicon-arrow-up"></span></a></td>
			</tr>
		<?php endif; ?>
		<?php if(isset($folders)): // Media List of folders ?>
			<?php foreach($folders as $folder): ?>
				<tr>
					<td><input type="checkbox" name="rm[]" value="<?php echo $folder['path']; ?>"></td>
					<td><a class="mediapath" href="<?php echo $folder['path']; ?>"><span class="glyphicon glyphicon-folder-close"></span></a></td>
					<td><a class="mediapath" href="<?php echo $folder['path']; ?>"><?php echo $folder['name']; ?></a></td>
					<td></td>
					<td></td>
					<td><a class="btn btn-danger btn-xs delete-item" target="_top" href="<?php echo $folder['path']; ?>" title="Delete" data-media="folder"><span class="glyphicon glyphicon-trash"></span></a></td>				
				</tr>
			<?php endforeach; ?>
		<?php endif; ?>
		<?php if(isset($images)): // Media List of images ?>
			<?php $i = 0; ?>
			<?php foreach($images as $image): ?>				
				<tr>
					<td><input type="checkbox" name="rm[]" value="<?php echo $image['path']; ?>"></td>
					<td><a class="galleryItem" data-group="3" href="<?php echo base_url($image['anchor_url']); ?>">
					<img src="<?php echo base_url($image['img_url']); ?>" alt="<?php echo $image['name']; ?>" style="<?php echo 'width:'.$image['width_16'].'px;height:'.$image['height_16'].'px'; ?>" width="<?php echo $image['width_16']; ?>" height="<?php echo $image['height_16']; ?>" /></a></td>
					<td><a class="galleryItem" data-group="4" href="<?php echo base_url($image['anchor_url']); ?>"><?php echo $image['name']; ?></a></td>
					<td><?php echo $image['width'].' &#215; '.$image['height']; ?></td>
					<td><?php echo $image['size']; ?></td>
					<td><a class="btn btn-danger btn-xs delete-item" target="_top" href="<?php echo $image['path']; ?>" title="Delete" data-media="file"><span class="glyphicon glyphicon-trash"></span></a></td>									
				</tr>
			<?php $i++; ?>
			<?php endforeach; ?>
		<?php endif; ?>
		<?php if(isset($docs)): // Media List of other documents ?>
			<?php foreach($docs as $doc): ?>
				<tr>
					<td><input type="checkbox" name="rm[]" value="<?php echo $doc['path']; ?>"></td>
					<td><a href="<?php echo base_url($doc['doc_url']); ?>" target="_blank">
					<img src="<?php echo base_url($doc['icon_url-16']); ?>" alt="<?php echo $doc['name']; ?>" style="width:16px;height:16px" width="16" height="16"/></a></td>
					<td><a href="<?php echo base_url($doc['doc_url']); ?>" target="_blank"><?php echo $doc['name']; ?></a></td>
					<td></td>
					<td><?php echo $doc['size']; ?></td>
					<td><a class="btn btn-danger btn-xs delete-item" target="_top" href="<?php echo $doc['path']; ?>" title="Delete" data-media="file"><span class="glyphicon glyphicon-trash"></span></a></td>									
				</tr>
			<?php endforeach; ?>
		<?php endif; ?>
		</tbody>	
		</table>
	</div>
	<!-- END OF TABLE VIEW MEDIA CONTAINER -->
</div>