if(sessionStorage.getItem('usuario') === null){
    location.href = 'http://denvermx.loc/';
}

$("#cerrarSesion").click(function (e) { 
    sessionStorage.removeItem('usuario')
    location.href = 'http://denvermx.loc/';
});
