function agregar(id) {
    var modalBg = document.querySelector('.modal-bg');
    modalBg.classList.remove('bg-active');
    check = document.getElementById("check");
    if(id === 0){
        if(check.checked){
            //patente pendiente malvados y asociados
        }else{
            $.ajax({
                url: 'https://denvermx.online/public/actividades/insertar',
                type: 'POST',
                data: {
                    "nombre": $("#nombre").val(),
                    "descripcion": $("#descripcion").val(),
                    "idTopico": $("#select_topico").val()
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