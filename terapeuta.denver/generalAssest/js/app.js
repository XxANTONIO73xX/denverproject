if(sessionStorage.getItem('usuario') !== null){
    location.href = '/denver';
}

$("#login").click(function () { 
    let email = $("#email").val();
    let pass = $("#password").val();
    alert("medio")
    $.ajax({
        type: "POST",
        url: "http://localhost/api.denver/public/terapeuta/login",
        data: {
            "email": email,
            "password": pass
        },
        dataType: "json",
    }).done(function(data){
        sessionStorage.setItem("usuario", data.user)
        location.href = "/denver"
    });
});