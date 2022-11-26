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
            "url": 'https://denvermx.online/public/actividad',
            "dataSrc": 'actividades',
            "type":'GET'
        },
        columns:[
            {"data": 'id'},
            {"data": 'nombre'},
            {"data": 'descripcion'},
            {"data": 'topico.nombre'},
            {"data": 'topico.nivel'},
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
                    url: 'https://denvermx.online/public/actividad/' + data.id,
                    type: 'DELETE',
                    dataType: "json",
                })
                    .done(function (data, res) {
                        console.log("La actividad ha sido eliminada con exito");
                    
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
                        console.log("Error", "Ocurrio un problema al eliminar la actividad")
                    })
            }
        });
    });

    $('#table tbody').on('click', "button[name='ver']", function(){
        var modalBg = document.querySelector('.modal-visualizar_bg');
        modalBg.classList.add('bg-active-vis');
        var data = table.row($(this).parents('tr')).data();
    
        $.ajax({
            url: 'https://denvermx.online/public/actividad/' + data.id,
            data:{},
            type: "GET",
            dataType: "json"
        })
        .done(function(data, res) {
            
            modalBg.innerHTML = `
            <div class="modal-visualizar_container">
            <div class="modal-visualizar_box">
                <div class="nombre-actividad">
                    <h2>${data.actividades.nombre}</h2>
                </div>
                <div class="descripcion-actividad">
                    <p>${data.actividades.descripcion}</p>
                </div>
                <div class="topico-nivel">
                    <div class="topico">
                        <h2>${data.actividades.topico.nombre}</h2>
                    </div>
                    <div class="nivel">
                        <h2>Nivel ${data.actividades.topico.nivel}</h2>
                    </div>
                </div>
                <div class="botones">
                    <button onclick="cerrarModalVisualizar()" class="btn-cancelar">Cancelar</button>
                </div>
            </div>
        </div>`;
        }); 
    });

    $('#table tbody').on('click', "button[name='editar']", function(){
        var dataTable = table.row($(this).parents('tr')).data();
        $.ajax({
            url: 'https://denvermx.online/public/actividad/' + dataTable.id,
            data:{},
            type: "GET",
            dataType: "json"
        }).done(function(data){
            $("#nombre").val(data.actividades.nombre)
            $("#descripcion").val(data.actividades.descripcion)
            $("#select_topico").val(data.actividades.topico.id)
            $("#nombreTopico").val(data.actividades.topico.nombre)
            $("#nivel").val(data.actividades.topico.nivel)
        })
        $(".btn-agregar").attr("onclick", "agregar("+dataTable.id+")")
    })

});
$.ajax({
    type: "GET",
    url: "https://denvermx.online/public/topico",
    dataType: "json"
}).done(function(data){
    data.topicos.forEach(topico => {
        $("#select_topico").append(`<option value="${topico.id}">${topico.nombre} Nivel: ${topico.nivel}</option>`)
    });
});


