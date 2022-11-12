if(sessionStorage.getItem('usuario') !== null){
    location.href = '/actividades';
}

$("#login").click(function () { 
    let email = $("#email").val();
    let pass = $("#password").val();
    $.ajax({
        type: "POST",
        url: "https://denvermx.online/api/public/padre/login",
        data: {
            "email": email,
            "password": pass
        },
        dataType: "json",
    }).done(function(data){
        sessionStorage.setItem("usuario", data.user)
        location.href = "/actividades"
    });
});