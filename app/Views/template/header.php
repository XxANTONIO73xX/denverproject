<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $tittle ?></title>
    <link rel="stylesheet" href="<?php base_url() ?>assets/template/styles.css">
    <script src="https://kit.fontawesome.com/7a089fb5de.js" crossorigin="anonymous"></script>
    <script src="<?php base_url() ?>assets/jquery/jquery-3.6.1.min.js"></script>
</head>
<body>
    <header>
        <div class="options">
            <div class="user"><i class="fa-solid fa-circle-user"></i>
                <ul class="settings">
                    <li><a href="#"><i class="fa-solid fa-gear"></i> Editar Perfil</a></li>
                    <li id="cerrarSesion"><i class="fa-solid fa-right-from-bracket"></i> Cerrar sesión</li>
                </ul>
            </div>
        </div>
    </header>
    <aside>
        <div class="logo-denver">
            <img src="<?php base_url() ?>assets/template/img/denver.png" alt="Logotipo de denver">
        </div>
        <nav>
            <ul class="menu">
                <li><a href="https://denvermx.online/public/curriculum"><i class="fa-regular fa-clipboard"></i> Curriculum</a></li>
                <li><a href="https://denvermx.online/public/padres">Padres</a></li>
                <li><a href="https://denvermx.online/public/infantes">Infantes</a></li>
                <li><a href="#">Progreso</a></li>
                <li><a href="#">Evaluar</a></li>
            </ul>
        </nav>
    </aside>
    <script src="<?php base_url() ?>assets/template/js/verify.js"></script>