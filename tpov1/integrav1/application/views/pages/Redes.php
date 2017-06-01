<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>INAI Redes Sociales</title>
   <link type="text/css" rel="stylesheet" href="<?php echo URL_D3D; ?>redsocial/css/styles.css" />
   <link type="text/css" rel="stylesheet" href="<?php echo URL_D3D; ?>redsocial/css/magnific-popup.css" />
   <link type="text/css" rel="stylesheet" href="<?php echo URL_D3D; ?>redsocial/css/dpSocialTimeline.css" />
   <script type="text/javascript" src="<?php echo URL_D3D; ?>redsocial/js/jquery-1.7.1.min.js"></script>
   <script type="text/javascript" src="<?php echo URL_D3D; ?>redsocial/js/jquery.magnific-popup.min.js"></script>
   <script type="text/javascript" src="<?php echo URL_D3D; ?>redsocial/js/jquery.isotope.min.js"></script>
   <script type="text/javascript" src="<?php echo URL_D3D; ?>redsocial/js/jquery.dpSocialTimeline.js"></script>
   <script type="text/javascript">
      $(document).ready(function(){		
         $('#socialTimeline').dpSocialTimeline({
            feeds: {
/*
               'twitter': {data: '<?php echo URL_D3D; ?>redsocial/twitter_oauth/user_timeline.php?screen_name=inai', limit: 6},
               'twitter_hash': {data: '<?php echo URL_D3D; ?>redsocial/twitter_oauth/search.php?q=inai', limit: 3},
*/
               'youtube_search': {data: '<?php echo URL_D3D; ?>redsocial/youtube_auth/youtube.php?q=instituto nacional de acceso a la información y protección de datos'}
/*
               'facebook_page': {data: '<?php echo URL_D3D; ?>redsocial/facebook_auth/facebook_page.php', limit: 2},
               'facebook_page': {data: '<?php echo URL_D3D; ?>redsocial/facebook_auth/facebook_page.php?page_id=111488948905604', limit: 2},
               'flickr': {data: '52617155@N08'},
               'flickr_hash': {data: 'webdesign'},
               'soundcloud': {data: 'EmpireMagazine'},
               'twitter': {data: '<?php echo URL_D3D; ?>redsocial/twitter_oauth/user_timeline.php?screen_name=inai', limit: 6},
               'twitter_hash': {data: '<?php echo URL_D3D; ?>redsocial/twitter_oauth/search.php?q=%23inai', limit: 3},
               'youtube': {data: '<?php echo URL_D3D; ?>redsocial/youtube_auth/youtube.php?username=youtube'},
               'vimeo': {data: 'digitalkitchen'}
*/
            },
            layoutMode: 'timeline',
            addLightbox: true,
            itemWidth: 200,
            total: 10
         });
      });
   </script>
</head>
<body>
    <div id="content">
        <div id="socialTimeline" style="width:650px;"></div>
    </div>
</body>
</html>
