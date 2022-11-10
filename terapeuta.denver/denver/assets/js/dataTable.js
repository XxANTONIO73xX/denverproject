$(document).ready( function () {
    $('#table').DataTable({
        ajax: {
            "url": 'https://denvermx.online/public/actividad',
            "dataSrc": 'actividades',
            "type":'GET'
        },
        columns:[
            {"data": 'nombre'},
            {"data": 'descripcion'},
            {"data": 'topico.nombre'},
            {"data": 'topico.nivel'},
            {"targets": -1, "data":null, "defaultContent":'<button onclick="abrirModalEditar()" id="editar"><i class="fa-solid fa-pen-to-square"></i></button> <button onclick="quedoEliminado()" id="eliminar"><i class="fa-solid fa-trash"></i></i></button> <button onclick="abrirModalVisualizar()" id="ver"><i class="fa-solid fa-eye"></i></button>'},
        ]
    });
} );


