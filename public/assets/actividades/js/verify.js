if(sessionStorage.getItem('usuario') === null){
    location.href = 'https://denvermx.online/public/denver/';
}

$("#cerrarSesion").click(function (e) { 
    sessionStorage.removeItem('usuario')
    location.href = 'https://denvermx.online/public/denver/';
});