function showContent() {
    element = document.getElementById("createTopico");
    selectTopico = document.getElementById("selectTopico");
    check = document.getElementById("check");
    if (check.checked) {
        element.style.display='block';
        selectTopico.style.display='none';
    }
    else {
        element.style.display='none';
        selectTopico.style.display='block';
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

modalBtn.addEventListener('click', function (){
    modalBg.classList.add('bg-active');
});

modalClose.addEventListener('click', function (){
    modalBg.classList.remove('bg-active');
});

function quedoAgregado() {

    var modalBg = document.querySelector('.modal-bg');
    modalBg.classList.remove('bg-active');

    Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Se ha realizado correctamente',
        showConfirmButton: false,
        timer: 1500
    })

}

function quedoEliminado() {
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
          Swal.fire(
            '¡Borrado!',
            'Se ha eliminado correctamente.',
            'success'
          )
        }
      })
}
