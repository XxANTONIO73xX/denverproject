function showContent() {
    element = document.getElementById("createTopico");
    selectTopico = document.getElementById("selectTopico");
    check = document.getElementById("check");
    if (check.checked) {
        element.style.display = 'block';
        selectTopico.style.display = 'none';
    }
    else {
        element.style.display = 'none';
        selectTopico.style.display = 'block';
    }
}

function abrirModalEditar() {
    var modalBg = document.querySelector('.modal-bg');
    modalBg.classList.add('bg-active');
}

function cerrarModalEditar() {
    var modalBg = document.querySelector('.modal-bg');
    modalBg.classList.remove('bg-active');
}

function abrirModalVisualizar() {
    var modalBg = document.querySelector('.modal-visualizar_bg');
    modalBg.classList.add('bg-active-vis');
}

function cerrarModalVisualizar() {
    var modalBg = document.querySelector('.modal-visualizar_bg');
    modalBg.classList.remove('bg-active-vis');
}

var modalBtn = document.querySelector('.boton-agregar_modal');
var modalBg = document.querySelector('.modal-bg');
var modalClose = document.querySelector('.btn-cancelar');

modalBtn.addEventListener('click', function () {
    modalBg.classList.add('bg-active');
});

modalClose.addEventListener('click', function () {
    modalBg.classList.remove('bg-active');
});

$(document).ready( function () {
    var table = $('#table').DataTable({
        ajax: {
            "url": 'https://denvermx.online/public/respuesta',
            "dataSrc": 'respuestas',
            "type":'GET'
        },
        columns:[
            {"data": 'id'},
            {"data": 'padre.nombre'},
            {"data": 'infante.nombre'},
            {"data": 'topico.nivel'},
            {"data": 'topico.nombre'},
            {"data": 'actividad.id'},
            {"data": 'respuestaUsuario'},
            {
                "data":'evidencia',
                "render": function(data){
                    return `<button id="ver" name="ver" type="submit" onclick="window.open('${data}')"><i class="fa-solid fa-eye"></i></button>`
                }
            },
        ]
    });
    $('#table tbody').on('click', "button[name='eliminar']", function(){
        Swal.fire({
            title: '¿Estas seguro?',
            text: "No se podrá recuperar",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Sí',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) {
                var data = table.row($(this).parents('tr')).data();
                $.ajax({
                    url: 'https://denvermx.online/public/padre/' + data.id,
                    type: 'DELETE',
                    dataType: "json",
                })
                    .done(function (data, res) {
                        console.log("El padre ha sido eliminado con exito");
                    
                        Swal.fire(
                            '¡Borrado!',
                            'Se ha eliminado correctamente.',
                            'success'
                        ).then(function () {
                            window.location.reload()
                        });
                    
                        /*console.log(data);*/
                    
                    })
                    .fail(function () {
                        console.log("Error", "Ocurrio un problema al eliminar el padre")
                    })
            }
        });
    });
});