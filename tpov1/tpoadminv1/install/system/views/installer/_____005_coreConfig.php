<?php
/**
 *
 * Created By    SimTabi™
 *
 * Company       SimTabi™ Creative Studios
 * Company URL   http://simtabi.com/ | info@simatbi.com
 * Author        @myImani | twitter.com/myImani
 * Author URL    www.mnimani.com | hello@mnimani.com
 * Copyright     Copyright © 2011-2013 SimTabi™ Creatives
 * License       http://simtabi.com/support/license/
 *            OR
 * License       http://envato.com/support/license/
 *
 * Date           2/18/14
 * Time           11:59 AM
 * Project        theCharlie CMS
 *
 *
 * File Name:     coreConfig.php
 *
 * LICENSE AGREEMENT:
 *
 * This source file is subject to the licensing terms that
 * is available through the world-wide-web at the following URI:
 * http://simtabi.com/support/license/
 *
 *
 */




/*
* Security fix to dis allow direct file access!
*/
defined('____DONT')
or die('Not allowed to directly access ME :( Sorry folk :)!');


?>

<form action="" method="POST" role="form" class="coreConfig">


    <div class="theWell">
        <div class="page-header">
            <h1>Variables del módulo </h1>
        </div>
        <?php if(isset($error)) echo $error;?>
        <div class="form-group">
            <div class="input-group col-xs-12">
                <input type="text" class="form-control" placeholder="Clave reCAPTCHA del sitio" name="configRecaptcha" value="<?php if(isset($_POST['configRecaptcha'])) { echo $_POST['configRecaptcha']; } ?>">
                <span class="input-group-addon"><i class="fa fa-edit"></i>Clave reCAPTCHA del sitio</span>
            </div>
            <p>
            <br>
            <br>
            En caso de no contar con la clave para el servidor: "<?php echo $_SERVER['SERVER_NAME']; ?>"<br>
            Favor de ingresar al sitio <a href="https://www.google.com/recaptcha/intro/index.html" target="_reCAPTCHA"> Google reCAPTCHA </a> y obtener una.            
            </p>
        </div>
        <input type="hidden" name="sampleData" value="sampleData">
        <button type="submit" class="btn btn-lg thatBtn btn-success pull-right" name="configCore">Continuar</button>
    </div>

</form>






