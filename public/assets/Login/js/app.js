if(sessionStorage.getItem('usuario') !== null){
    location.href = 'https://denvermx.online/public/curricu';
}

$("#login").click(function () { 
    let email = $("#email").val();
    let pass = $("#password").val();
    $.ajax({
        type: "POST",
        url: "https://denvermx.online/public/terapeuta/login",
        data: {
            "email": email,
            "password": pass
        },
        dataType: "json",
    }).done(function(data){
        sessionStorage.setItem("usuario", data.user)
        location.href = "https://denvermx.online/public/curriculum"
    });
});