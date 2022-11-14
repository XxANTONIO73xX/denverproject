if(sessionStorage.getItem('usuario') === null){
    location.href = 'https://denvermx.online/public/';
}

$("#cerrarSesion").click(function (e) { 
    sessionStorage.removeItem('usuario')
    location.href = 'https://denvermx.online/public/';
});
