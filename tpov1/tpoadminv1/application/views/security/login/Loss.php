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
    <link rel="shortcut icon" href="<?php echo URL_BASE; ?>images/favicon.ico" />
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

    <script src='https://www.google.com/recaptcha/api.js'></script>
    <link rel="stylesheet" href="<?php echo URL_BASE; ?>css/rfbi.css">
    <style>
body {
    background-image: url( <?php echo URL_BASE; ?>images/tpobk.jpg);
}
.head {
	position: absolute;
	top:-10%;
	left: 35%;
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
			<img src="<?php echo getAvatarD3D(); ?>" alt=""/>			
		</div>
                <section class="login_content">
                    <form action="Sec_Dorecovery" method="POST" name="rform" id="rform">
                        <h1><?php echo $this->lang->line('lbl_recovery');?></h1>
                        <div>
                            <input type="mail" class="form-control" placeholder="<?php echo $this->lang->line('lbl_mail');?>" required="" name="mail"/>
                        </div>
                        <div>
                            <br>
                            <div class="g-recaptcha" data-sitekey="6LdK6goTAAAAAJOd_9x_XlPxWm3DuHnsv3cITA-T"></div>
                            <br>
                        </div>
                        <div>
                            <a class="btn btn-default submit" href='javascript:document.rform.submit();'><?php echo $this->lang->line('lbl_save');?></a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">

                            <p class="change_link"><?php echo $this->lang->line('lbl_member');?>
                                <a href="Sec_Login" class="to_register"> <?php echo $this->lang->line('lbl_login');?> </a>
                            </p>
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <p>©2015 All Rights Reserved <br><?php echo $this->lang->line('lbl_title');?> - <?php echo $this->lang->line('lbl_ver');?></p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
            <div id="register" class="animate form" style="background:#F7F7F7;padding:33px;-webkit-border-radius: 20px;-moz-border-radius: 20px;
border-radius: 20px;">
                <section class="login_content">
                    <form>
                        <h1>New Account</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="Username" required="" />
                        </div>
                        <div>
                            <input type="email" class="form-control" placeholder="Email" required="" />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="Password" required="" />
                        </div>
                        <div>
                            <br>
                            <div class="g-recaptcha" data-sitekey="6LdK6goTAAAAAJOd_9x_XlPxWm3DuHnsv3cITA-T"></div>
                            <br>
                        </div>                        
                        <div>
                            <a class="btn btn-default submit" href="index.html">Submit</a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">

                            <p class="change_link">Already a member ?
                                <a href="#tologin" class="to_register"> Log in </a>
                            </p>
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <!--h1><i class="fa fa-paw" style="font-size: 26px;"></i> Gentelella Alela!</h1-->

                                <p>©2015 All Rights Reserved. Gentelella Alela!</p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>


            <div id="loss" class="animate form" style="background:#F7F7F7;padding:33px;-webkit-border-radius: 20px;-moz-border-radius: 20px;
border-radius: 20px;">
                <section class="login_content">
                    <form>
                        <h1>Loss Password</h1>
                        <div>
                            <input type="email" class="form-control" placeholder="Email" required="" />
                        </div>
                        <div>
                            <a class="btn btn-default submit" href="index.html">Submit</a>
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
</body>
</html>
