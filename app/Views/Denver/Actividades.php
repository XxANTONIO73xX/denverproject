<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="<?php echo base_url()?>/assets/actividades/styles/estilosActividades.css">
    <title>Actividades</title>
    <script src="<?php echo base_url()?>/assets/jquery/jquery-3.6.1.min.js"></script>
    <script src="https://kit.fontawesome.com/7a089fb5de.js" crossorigin="anonymous"></script>
</head>
<body>  
    <header>
        <nav>
            <div class="nav-bar">
                <div class="nav-content">
                    <ul>
                        <li><a href="">Elemento 1</a></li>
                        <li><a href="">Elemento 2</a></li>
                    </ul>
                    <img src="<?php echo base_url()?>/assets/actividades/img/denver.png">
                    <ul>
                        <li><a href="">Elemento 3</a></li>
                        <li id="cerrarSesion"><a href="">Cerrar Sesión</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="page-container">
            <aside>
                <div class="index-levels">
                    <ul class="index">
                    </ul>
                </div>
            </aside>
            <div class="activities-container" id="topico-cont">
                <div class="nivel-cont">
                    <h1>NIVEL 1</h1>
                    <div class="topico-cont" id="activities">
                        <h1>TOPICO 1</h1>
                        <div class="activities-box" id="activities-box">
                            <div class="activities-titulo">
                                <h2>Actividad 1</h2>
                                <p>Localiza los sonidos girándose hacia la fuente</p>
                            </div>
                            <div class="activities-descripcion">
                                <p>Demuestra consciencia del sonido girando los ojos y la cabeza.</p>
                                <button id="responder-button" onclick="mostrarResponder()">Responder</button>
                            </div>
                            <div id="act-respuestas" class="activities-respuesta">
                                <div class="select-nino">
                                    <select name="" id="select-desempeno">
                                        <option value="">Lo hace solo</option>
                                        <option value="">Lo hace con ayuda</option>
                                        <option value="">No lo hace</option>
                                    </select>
                                </div>
                                <div class="subir-archivos">
                                    <div class="file-upload">     
                                        <div class="image-upload-wrap">
                                            <input class="file-upload-input" type='file'>
                                            <div class="drag-text">
                                                <h3>Suelta el archivo aquí</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>       
        </div>
    </main>
    <script src="<?php echo base_url()?>/assets/actividades/js/verify.js"></script>
    <script src="<?php echo base_url()?>/assets/actividades/js/app.js"></script>
</body> 
</html>