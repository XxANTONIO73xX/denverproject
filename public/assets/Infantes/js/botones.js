function agregar(id) {
    var modalBg = document.querySelector('.modal-bg');
    modalBg.classList.remove('bg-active');
    check = document.getElementById("check");
    if (id === 0) {
        $.ajax({
            url: 'https://denvermx.online/public/infante',
            type: 'POST',
            data: {
                "nombre": $("#nombre").val(),
                "apellidos": $("#apellidos").val(),
                "edad": $("#edad").val(),
                "curp": $("#curp").val(),
                "diagnostico": $("#diagnostico").val()
            },
            dataType: "json",
        })
            .done(function (data, res) {
                if (data.hasOwnProperty('error')) {
                    Swal.fire({
                        position: 'center',
                        icon: 'error',
                        title: 'Ha ocurrido un error',
                        showConfirmButton: false,
                        timer: 1500
                    })
                } else {
                    Swal.fire({
                        position: 'center',
                        icon: 'success',
                        title: 'Se ha agregado correctamente',
                        showConfirmButton: false,
                        timer: 1500
                    }).then(function () {
                        window.location.reload()
                    });
                }
            })
            
    } else {

    }
}