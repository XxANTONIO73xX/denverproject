function quedoAgregado() {

    var modalBg = document.querySelector('.modal-bg');
    modalBg.classList.remove('bg-active');

    $.ajax({
        url: 'http://api.kikosbarbershop.online/public/cita',
        type: 'POST',
        data: {
            "nombre": $("#nombre").val(),
            "descripcion": $("#descripcion").val(),
            "check": $("#check").val(),
            "nombreTopico": $("#nombreTopico").val(),
            "nivel": $("#nivel").val()
        },
        dataType: "json",
    })
        .done(function (data, res) {
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'Se ha agregado correctamente',
                showConfirmButton: false,
                timer: 1500
            }).then(function () {
                window.location.reload()
            });
        })
        .fail(function () {
            console.log("Error", "Ocurrio un problema al guardar la cita")
        })
}