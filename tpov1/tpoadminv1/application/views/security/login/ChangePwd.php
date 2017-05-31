<!-- TODO Send ControlAccess -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $this->lang->line('lbl_title');?></title>

    <!-- Bootstrap core CSS -->

    <link href="<?php echo URL_BASE; ?>css/bootstrap.min.css" rel="stylesheet">

    <link href="<?php echo URL_BASE; ?>fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo URL_BASE; ?>css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="<?php echo URL_BASE; ?>css/custom.css" rel="stylesheet">
    <link href="<?php echo URL_BASE; ?>css/icheck/flat/green.css" rel="stylesheet">

    <script src="<?php echo URL_BASE; ?>js/jquery.min.js"></script>

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    <link rel="stylesheet" href="<?php echo URL_BASE; ?>css/rfbi.css">
    <!-- D3D Libs -->
    <script src="d3d/js/js.cookie.js"></script>    
    <style>
.head {
	position: absolute;
	top:-10%;
	left: 35%;
        background-image: url( <?php echo URL_BASE; ?>images/tpobk.jpg);
}
.head img {
	width:100px;
	height:100px;
	border-radius:50%;
	-webkit-border-radius:50%;
	-o-border-radius:50%;
	-moz-border-radius:50%;
	border:6px solid rgba(221, 218, 215, 0.23);
}
	</style>
</head>
<body>
    
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>
        <a class="hiddenanchor" id="toloss"></a>

        <div id="wrapper">
            <div id="login" class="animate form" style="background:#F7F7F7;padding:33px;-webkit-border-radius: 20px;-moz-border-radius: 20px;
border-radius: 20px;">
		<div class="head">
            <img src="<?php echo getAvatarD3D(); ?>" alt="" id="img_user" onerror="error_img();" >
            </div>
                <section class="login_content">
                    <form action="Sec_Dochangepwd" method="POST" name="change" >
                        <h1><?php echo $this->lang->line('lbl_changepwd');?></h1>
                        <div> 
                            <input type="hidden" id="id" name="id" value="<?php echo $id; ?>" />
                            <input type="password" class="form-control" placeholder="<?php echo $this->lang->line('lbl_pwd');?>" id="clave1" name="clave1" required />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="<?php echo $this->lang->line('lbl_pwd_conf');?>" name="clave2" id="clave2" required />
                        </div>
                        <div>
                            <a class="btn btn-default submit" href="javascript:document.forms[0].submit();"><?php echo $this->lang->line('lbl_change');?></a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <p>©2015 All Rights Reserved <?php echo $this->lang->line('lbl_title');?> - <?php echo $this->lang->line('lbl_ver');?></p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
        </div>
    </div>
    <script>
	   document.getElementById("clave1").focus();
       $('#clave').keypress(function(event){
          var keycode = (event.keyCode ? event.keyCode : event.which);
          if(keycode == '13'){
             document.forms[0].submit(); 
          }
       });
       function error_img() {
            document.getElementById('img_user').src = "data/avatars/" + Cookies.get('ck_id_user') + '.png';                
       } 
       if ( Cookies.get('ck_id_user') > 0 ) {
            document.getElementById('img_user').src = "data/avatars/" + Cookies.get('ck_id_user') + '.jpg';                
       }
    </script>
</body>
</html>
