<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $title ?></title>
    <link rel="stylesheet" href="<?php base_url()?>assets/Denver/Login/css/styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet"> 
    <script src="<?php base_url()?>assets/jquery/jquery-3.6.1.min.js"></script>
</head>
<body>
    <div class="login-box">
        <div class="login-content">
            <div class="logo">
                <img src="<?php base_url()?>assets/Denver/Login/img/denver.png">
            </div>
            <div id="form-login">
                <div class="correo">
                    <img src="<?php base_url()?>assets/Denver/Login/img/correo.png">
                    <input placeholder="Correo" type="email" id="email">
                </div>
                <div class="password">
                    <img src="<?php base_url()?>assets/Denver/Login/img/password.png">
                    <input placeholder="Contraseña" type="password" id="password">
                </div>
                <div class="boton-login">
                    <button id="login">Log In</button>
                </div>
            </div>
            <div class="registro">
                <a href="">Registrate aquí</a>
            </div>
        </div>
    </div>
    <script src="<?php base_url()?>assets/Denver/Login/js/app.js"></script>
</body>
</html>