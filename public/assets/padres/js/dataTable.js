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
            "url": 'https://denvermx.online/public/padre',
            "dataSrc": 'padres',
            "type":'GET'
        },
        columns:[
            {"data": 'id'},
            {"data": 'nombre'},
            {"data": 'apellido'},
            {"data": 'direccion'},
            {"data": 'telefono'},
            {"data": 'correo'},
            {"data": 'pass'},
            {"data": 'idInfante.id'},
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

    $('#table tbody').on('click', "button[name='ver']", function(){
        var modalBg = document.querySelector('.modal-visualizar_bg');
        modalBg.classList.add('bg-active-vis');
        var data = table.row($(this).parents('tr')).data();
    
        $.ajax({
            url: 'https://denvermx.online/public/padre/' + data.id,
            data:{},
            type: "GET",
            dataType: "json"
        })
        .done(function(data, res) {
            
            modalBg.innerHTML = `
            <div class="modal-visualizar_container">
            <div class="modal-visualizar_box">
                <div class="nombre-padre">
                    <h2>${data.padre.nombre}</h2>
                </div>
                <div class="apellido-padre">
                    <p>${data.padre.apellido}</p>
                </div>
                <div class="direccion-padre">
                    <p>${data.padre.direccion}</p>
                </div>
                <div class="telefono-padre">
                    <p>${data.padre.telefono}</p>
                </div>
                <div class="correo-padre">
                    <p>${data.padre.correo}</p>
                </div>
                <div class="infante-padre">
                    <div class="infante">
                        <h3>${data.infante.nombre}</h3>
                    </div>
                </div>
                <div class="botones">
                    <button onclick="cerrarModalVisualizar()" class="btn-cancelar">Cancelar</button>
                </div>
            </div>
        </div>`;
        }); 
    });
});
$.ajax({
    type: "GET",
    url: "https://denvermx.online/public/infante",
    dataType: "json"
}).done(function(data){
    data.infantes.forEach(infante => {
        $("#select_infante").append(`<option value="${infante.id}">${infante.nombre} Appellido: ${infante.apellido}</option>`)
    });
});


