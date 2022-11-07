if(sessionStorage.getItem('usuario') === null){
    location.href = '/index.html';
}

$("#cerrarSesion").click(function (e) { 
    sessionStorage.removeItem('usuario')
    location.href = '/index.html';
});