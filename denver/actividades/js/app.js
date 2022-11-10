$.ajax({
    type: "GET",
    url: "http://localhost/api.denver/public/topicos/levels",
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
        url: "http://localhost/api.denver/public/actividades/bytopic/"+idTopico,
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
                <button id="responder-button" onclick="mostrarResponder()">Responder</button>
            </div>
            <div id="act-respuestas" class="activities-respuesta">
                <div class="select-nino">
                    <select name="" id="select-desempeno">
                        <option value="">Lo hace solo</option>
                        <option value="">Lo hace con ayuda</option>
                        <option value="">No lo hace</option>
                    </select>
                </div>
                <div class="subir-archivos">
                    <div class="file-upload">     
                        <div class="image-upload-wrap">
                            <input class="file-upload-input" type='file'>
                            <div class="drag-text">
                                <h3>Suelta el archivo aquí</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>`
        })
    });
}

function mostrarResponder() {
    element = document.getElementById("act-respuestas");
    element.style.display='block';
}