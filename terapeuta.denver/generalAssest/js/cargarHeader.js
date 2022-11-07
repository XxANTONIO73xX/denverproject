document.body.innerHTML += `
<link rel="stylesheet" href="../template/styles.css">
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
        <img src="../generalAssest/img/denver.png" alt="Logotipo de denver">
    </div>
    <nav>
        <ul class="menu">
            <li><a href="#"><i class="fa-regular fa-clipboard"></i> Curriculum</a></li>
            <li><a href="#">Padres</a></li>
            <li><a href="#">Infantes</a></li>
            <li><a href="#">Progreso</a></li>
            <li><a href="#">Evaluar</a></li>
        </ul>
    </nav>
</aside>`;