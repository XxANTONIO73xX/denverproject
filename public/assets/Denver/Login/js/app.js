if(sessionStorage.getItem('usuario') !== null){
    location.href = 'https://denvermx.online/public/denver/actividades';
}

$("#login").click(function () { 
    let email = $("#email").val();
    let pass = $("#password").val();
    $.ajax({
        type: "POST",
        url: "https://denvermx.online/public/padre/login",
        data: {
            "email": email,
            "password": pass
        },
        dataType: "json",
    }).done(function(data){
        if(data.hasOwnProperty('error')){
            alert(data.error)
        }else{
            sessionStorage.setItem("usuario", data.user)
            sessionStorage.setItem("id",data.user.id)
            location.href = "https://denvermx.online/public/denver/actividades"
        }
    });
});