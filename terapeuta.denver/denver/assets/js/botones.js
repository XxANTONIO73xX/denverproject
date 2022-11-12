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


function quedoAgregado() {

    var modalBg = document.querySelector('.modal-bg');
    modalBg.classList.remove('bg-active');

    $.ajax({
        url: 'http://api.kikosbarbershop.online/public/cita',
        type: 'POST',
        data: {
            "nombre": $("#nombre").val(),
            "descripcion": $("#descripcion").val(),
            "check": $("#check").val(),
            "nombreTopico": $("#nombreTopico").val(),
            "nivel": $("#nivel").val()
        },
        dataType: "json",
    })
        .done(function (data, res) {
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'Se ha agregado correctamente',
                showConfirmButton: false,
                timer: 1500
            }).then(function () {
                window.location.reload()
            });
        })
        .fail(function () {
            console.log("Error", "Ocurrio un problema al guardar la cita")
        })

}