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
            "url": 'https://denvermx.online/public/infante',
            "dataSrc": 'infantes',
            "type":'GET'
        },
        columns:[
            {"data": 'id'},
            {"data": 'nombre'},
            {"data": 'apellidos'},
            {"data": 'edad'},
            {"data": 'curp'},
            {"data": 'diagnostico'},
            {"targets": -1, "data":null, "defaultContent":'<button onclick="abrirModalEditar()" id="editar" name="editar"><i class="fa-solid fa-pen-to-square"></i></button> <button id="eliminar" name="eliminar"><i class="fa-solid fa-trash"></i></i></button> <button id="ver" name="ver"><i class="fa-solid fa-eye"></i></button>'},
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
                    url: 'https://denvermx.online/public/infante/' + data.id,
                    type: 'DELETE',
                    dataType: "json",
                })
                    .done(function (data, res) {
                        console.log("El infante ha sido eliminado con exito");
                    
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
                        console.log("Error", "Ocurrio un problema al eliminar el infante")
                    })
            }
        });
    });

    $('#table tbody').on('click', "button[name='ver']", function(){
        var modalBg = document.querySelector('.modal-visualizar_bg');
        modalBg.classList.add('bg-active-vis');
        var data = table.row($(this).parents('tr')).data();
    
        $.ajax({
            url: 'https://denvermx.online/public/infante/' + data.id,
            data:{},
            type: "GET",
            dataType: "json"
        })
        .done(function(data, res) {
            
            modalBg.innerHTML = `
            <div class="modal-visualizar_container">
                <div class="modal-visualizar_box">
                    <div class="nombre-infante">
                        <h3>${data.infante.nombre}</h3>
                    </div>
                    <div class="apellidos-infante">
                        <h3>${data.infante.apellidos}</h3>
                    </div>
                    <div class="edad-infante">
                        <p>${data.infante.edad}</p>
                    </div>
                    <div class="curp-infante">
                        <p>${data.infante.curp}</p>
                    </div>
                    <div class="diagnostico-infante">
                        <p>${data.infante.diagnostico}</p>
                    </div>
                    <div class="botones-accion">
                        <button onclick="cerrarModalEditar()" class="btn-cancelar">Cancelar</button>
                    </div>
                </div>
            </div>`;
        }); 
    });
});



