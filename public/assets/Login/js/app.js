if(sessionStorage.getItem('usuario') !== null){
    location.href = 'https://denvermx.online/public/curriculum';
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
        if(data.hasOwnProperty('error')){
            alert(data.error)
        }else{
            sessionStorage.setItem("usuario", data.user)
            location.href = "https://denvermx.online/public/curriculum"
        }
    });
});