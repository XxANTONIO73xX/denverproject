function agregar(id) {
    var modalBg = document.querySelector('.modal-bg');
    modalBg.classList.remove('bg-active');
    check = document.getElementById("check");
    if(id === 0){
        if(check.checked){
            //patente pendiente malvados y asociados
        }else{
            $.ajax({
                url: 'https://denvermx.online/public/padre',
                type: 'POST',
                data: {
                    "nombre": $("#nombre").val(),
                    "apellido": $("#apellido").val(),
                    "direccion": $("#direccion").val(),
                    "telefono": $("#telefono").val(),
                    "correo": $("#correo").val(),
                    "pass": $("#pass").val(),
                    "idInfante": $("#select_infante").val()
                },
                dataType: "json",
            })
                .done(function (data, res) {
                    if(data.hasOwnProperty('error')){
                        Swal.fire({
                            position: 'center',
                            icon: 'error',
                            title: 'Ha ocurrido un error',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    }else{
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
        }
    }else{

    }
}