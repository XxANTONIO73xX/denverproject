$.ajax({
    type: "GET",
    url: "https://denvermx.online/public/topicos/levels",
    dataType: "json",
}).done(function(data){
    index = document.getElementsByClassName("index");
    index = index[0]
    data.niveles.forEach(numero => {
        index.innerHTML += `
        <li class="level" id="level">
            <p>Nivel ${numero.nivel}</p>
            <ul class="topics" id="${numero.nivel}">
            </ul>
        </li>`
        levels = index.getElementsByClassName('level')
        for(let level of levels){
            level.addEventListener('click', (e)=>{
                hijos = level.children;
                lista = hijos[1]
                if(lista.classList.toggle("abrir")){
                    lista.classList.add("abrir")
                }
            })
        }
    });
    topics = index.getElementsByClassName("topics");
    for(let topic of topics){
        data.topicos.forEach(topico =>{
            if(topico.nivel === topic.id){
                topic.innerHTML +=`
                <li onclick="cargarActividades(${topico.id})">${topico.nombre}</li>
                `
            }
        })
    }
    
});

function cargarActividades(idTopico){
    $.ajax({
        type: "GET",
        url: "https://denvermx.online/public/actividades/bytopic/"+idTopico,
        dataType: "json",
    }).done(function(data){
        topicoContent = document.getElementById("topico-cont")
        topicoContent.innerHTML =`
        <div class="nivel-cont">
            <h1>NIVEL ${data.topico.nivel}</h1>
            <div class="topico-cont" id="activities">
                <h1>${data.topico.nombre}</h1>
            </div>
        </div>`;
        actividadesContent = document.getElementById("activities")
        data.actividades.forEach(actividad =>{
            topicoContent.offsetHeight += 300
            actividadesContent.innerHTML +=`
            <div class="activities-box" id="activities-box">
            <div class="activities-titulo">
                <h2>Actividad ${actividad.id}</h2>
                <p>${actividad.nombre}</p>
            </div>
            <div class="activities-descripcion">
                <p>${actividad.descripcion}</p>
                <button id="responder-button" onclick="mostrarResponder(${actividad.id})">Responder</button>
            </div>
            <div id="act-respuestas-${actividad.id}" class="activities-respuesta">
                <form id="formulario-${actividad.id}" method="POST" enctype="multipart/form-data">
                    <div class="select-nino">
                        <select name="respuestaUsuario" id="select-desempeno-${actividad.id}">
                            <option value="Lo hace solo">Lo hace solo</option>
                            <option value="Lo hace con ayuda">Lo hace con ayuda</option>
                            <option value="No lo hace">No lo hace</option>
                        </select>
                    </div>
                    <div class="subir-archivos">
                        <div class="file-upload">     
                            <div class="image-upload-wrap">
                                <input name="evidencia" id="${actividad.id}" class="file-upload-input" type='file'>
                                <div class="drag-text">
                                    <h3>Suelta el archivo aquí</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="archivos" id="archivos-${actividad.id}">
                    </div>
                    <div class="values">
                        <input name="idPadre" type="hidden" value="${sessionStorage.getItem("id")}">
                        <input name="idTopico" type="hidden" value="${data.topico.id}">
                        <input name="idActividad" type="hidden" value="${actividad.id}">
                    </div>                  
                </form>
                <button id="${actividad.id}" class="enviar">Enviar</button>
            </div>
        </div>`
        })
    });
}

function mostrarResponder(id) {
    element = document.getElementById("act-respuestas-"+id);
    element.style.display='block';
}


$(document).on('change','.file-upload-input', function(e){ //esta función se ejecutará en todos los casos
    let files;
    e.preventDefault();
    files = e.target.files;
    idArchivos = "archivos-"+e.target.id;
    res = showFiles(files,idArchivos);
    if(res == false){
    input.value = null;
    }
});

$(document).on('click', '.enviar', function(e){
    formId = "formulario-"+e.target.id
    formulario = new FormData(document.getElementById(formId))
    $.ajax({
        url: 'https://denvermx.online/public/respuesta',
        type: 'POST',
        data: formulario,
        cache: false,
        contentType: false,
        processData: false,
        dataType: "json",
    })
        .done(function (data, res) {
            if(data.hasOwnProperty('error')){
                alert("Ha ocurrido un error")
            }else{
                alert("Envio exitoso!")
            }
        })
});

function showFiles(files,idArchivos){
    if(files.length === 1){
        console.log(files);
        console.log("Si es una imagen");
        res = processFile(files[0],idArchivos);
        return res;
    }else{
        alert("No puedes enviar mas de una imagen");
        return false;
    }
}

function processFile(file,idArchivos){
    const docType = file.type;
    console.log(file.type);
    const validExtension = ['image/jpeg', 'image/jpg', 'image/png', 'video/mp4' ];

    if(validExtension.includes(docType)){
        const fileReader = new FileReader();
        fileReader.addEventListener('load', (e) =>{
            const fileUrl = fileReader.result;
            const enlace = document.getElementById(idArchivos);
            enlace.innerHTML = `<a href="${fileUrl}" download id="evidencia">Descarga tu evidencia aqui</a>`;
        });

        fileReader.readAsDataURL(file);
        return true;
    }else{
        alert("No es una imagen/archivo valido. Formatos permitidos: .jpg .jpeg .png .mp4");
        return false;
    }
}