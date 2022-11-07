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

var modalBtn = document.querySelector('.boton-agregar_modal');
var modalBg = document.querySelector('.modal-bg');
var modalClose = document.querySelector('.btn-cancelar')

modalBtn.addEventListener('click', function (){
    modalBg.classList.add('bg-active');
});

modalClose.addEventListener('click', function (){
    modalBg.classList.remove('bg-active');
});