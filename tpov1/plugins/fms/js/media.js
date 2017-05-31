/*global $*/
var msnry;

$(document).ready(function() {  
    // show tooltip over form labels 
    $('[data-toggle="tooltip"]').tooltip();    

    // Safari Browser check for muliple file upload issue
    var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
    if (isSafari) {
        $('#upload-file').removeAttr('multiple')
    }

    setViewHeight();

    $( window ).resize(function(){
        setViewHeight();
    });

    // Get column width for masonry layout
    // Column width changes for mobile laout
    var cw = 200;
    var wd = $(window).width();
    if((wd > 0) && (wd <= 767)) {
        cw = 120;
    }

    // Initiating masonry layout
    msnry = new Masonry('#masonry-container', {
      columnWidth: cw,
      itemSelector: '.item',
      gutter: 10
    }); 

    var groups = {};
    $('.galleryItem').each(function() {
        var id = parseInt($(this).attr('data-group'), 10);      
        if(!groups[id]) {
            groups[id] = [];
        }       
        groups[id].push(this);
    });    

    $.each(groups, function() {      
        $(this).magnificPopup({
            type: 'image',
            closeOnContentClick: true,
            closeBtnInside: false,
            gallery: { enabled:true }
        })      
    });       

    // Off-Canvas code
    $('body').addClass('js');
    var menulink = $('#showTreeView'),
        wrap = $('#wrap');
    menulink.click(function() {
        menulink.toggleClass('active');
        wrap.toggleClass('active');
        return false;
    });    

    // Set default view if cookie exists      
    var view  = ($.cookie('view')) ? '#details' : '#thumbs';     
    $(view).addClass('active');
    $(view + 'View').removeClass('hidden');
    if(view == '#thumbs'){
        $('#toolbar-select').removeClass('hidden');
        msnry.layout();
    }  

    // Load media of selected folder
    $('a.mediapath').click(function(e) {        
        e.preventDefault();
        $('#path').val($(this).attr('href'));
        $('#mediaForm').submit();
    });

    // Delete file or folder
    $('a.delete-item').click(function(e) {
        e.preventDefault();
        var dom = this;
        var media = $(this).attr('data-media');
        var msg;
        if (media == 'folder') {
            msg = 'This action will delete the selected folder and all its contents.'
        } else if (media == 'file') {
            msg = 'This action will delete the selected file.'
        }
        bootbox.confirm(msg, function(r) {
            if (r === true) {
                // ajax request to remove file/folder
                $.post(site_url + '/remove_media', {
                    'rm[]': [$(dom).attr('href')]
                }).done(function() {                                                          
                    window.location.assign(site_url);
                })
            }
        })
    });

    // Enable select button, disable media links
    $('#toolbar-select button').click(function(e) {                
        $(this).toggleClass('active');
        $('.cover').toggleClass('media-disabled');
        $('.media-item').removeClass('media-selected');
        $('#thumbsView input').prop('checked',false);
    }); 

    // Select media items
    $('.media-item').click(function() {  
        if($('#toolbar-select button').hasClass('active')){
            $(this).toggleClass('media-selected');            
            $(this).find('input').prop('checked',function(i,val) {
                return !val;
            });
        }    
    });

    // Media manager settings
    $('#optionBtn').click(function() {
        $('#optionModal').modal('show');
    });   
});

// Delete multiple files or folder
function delete_media() {
    var checked = $('#mediaForm input:checkbox').is(':checked');
    if (checked === true) {
        bootbox.confirm('This action will delete the selected media.', function(r) {
            if (r === true) {
                $.post(site_url + '/remove_media', $('#mediaForm').serialize()).done(function(r) {                    
                    window.location.assign(site_url);                    
                });
            }
        });
    } else {
        bootbox.alert('Select atleast one media or folder.');
    }
}

// Switch between thumbs and details view
function setViewType(view) {    
    var id = $('.mode a.active').attr('id');            
    if (id != view) {
        // Set cookie for details view
        if (view == 'details') {
            if (!$.cookie('view')) {
                $.cookie('view', 1, {
                    expires: 7, // cookie expiration days
                    path: '/'
                });
            }            
        } else {
            $.removeCookie('view', { path: '/' });            
        }
        $('.mode a').toggleClass('active');
        $('.mode-view').toggleClass('hidden');
        $('#toolbar-select').toggleClass('hidden');
        if(view == 'thumbs'){
            msnry.layout();
        }       
    }
}

function setViewHeight() {
    var ht = $(window).height() - 177;    
    $('.mode-view').css('height',ht);
}