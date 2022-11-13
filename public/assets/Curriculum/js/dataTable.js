$(document).ready( function () {
    var table = $('#table').DataTable({
        ajax: {
            "url": 'https://denvermx.online/api/public/actividad',
            "dataSrc": 'actividades',
            "type":'GET'
        },
        columns:[
            {"data": 'id'},
            {"data": 'nombre'},
            {"data": 'descripcion'},
            {"data": 'topico.nombre'},
            {"data": 'topico.nivel'},
            {"targets": -1, "data":null, "defaultContent":'<button onclick="abrirModalEditar()" id="editar" name="editar"><i class="fa-solid fa-pen-to-square"></i></button> <button id="eliminar" name="eliminar"><i class="fa-solid fa-trash"></i></i></button> <button onclick="abrirModalVisualizar()" id="ver"><i class="fa-solid fa-eye"></i></button>'},
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
                    url: 'https://denvermx.online/api/public/actividad/' + data.id,
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
    var data = table.row($(this).parents('tr')).data();
      $("#idActividad").val(data.id)
      var id = $("#idActividad").val();
} );


