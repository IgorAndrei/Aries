<?php
include('cookies/login.php'); // Includes Login Script

if(isset($_SESSION['login_user'])){
header("location: profile/profile.php");
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


    <head>

        <meta charset="utf-8">
        <title>SGA SporeGroup</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=0.8">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="assets/img/ico/spore_ico.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="assets/css/main.css">

        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>        
        

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>

        <div class="page-container">
            <div> 
            <img src="assets/img/Logo Spore.png" width="140" height="178">
            </div>

<div id="login" >
            
            <form action="" method="post">
            <input type="username" id="username" name="username" class="username" placeholder="Usuario">
            <input type="password" id="password" name="password" class="password" placeholder="Password">
			<input name="submit" type="submit" value=" Ingresar ">
            <div>
          	<div class="error"><span>+</span></div>
            
            <span><?php echo $error; ?></span> </div>
            </form>
            </div>
          <div class="connect">
                <p>Siguenos:</p>

                    <a class="facebook" href=" https://www.facebook.com/SporeGroup"></a>
                    <a class="twitter" href="https://twitter.com/SporeGroup"></a>
					<a class="linkdl" href=""></a>
					<a class="email" href="mailto:contacto@sporegroup.cl"></a>
                    
                </p>
            </div>
        </div>


    </body>

</html>
