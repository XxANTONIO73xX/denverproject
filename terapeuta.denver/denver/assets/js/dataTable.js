$(document).ready( function () {
    $('#table').DataTable({
        ajax: {
            "url": 'http://localhost/api.denver/public/actividad',
            "dataSrc": 'actividades',
            "type":'GET'
        },
        columns:[
            {"data": 'nombre'},
            {"data": 'descripcion'},
            {"data": 'topico.nombre'},
            {"data": 'topico.nivel'},
            {"targets": -1, "data":null, "defaultContent":'<button id="editar"><i class="fa-solid fa-pen-to-square"></i></button> <button id="eliminar"><i class="fa-solid fa-trash"></i></i></button><button id="ver"><i class="fa-solid fa-eye"></i></button>'},
        ]
    });
} );


