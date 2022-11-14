    <link rel="stylesheet" href="<?php base_url() ?>assets/Curriculum/css/styles.css">
    <script src="https://kit.fontawesome.com/7a089fb5de.js" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="sweetalert2.all.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <!--------------------------------------------------MODAL PARA AGREGAR-------------------------------------------------->
    <div class="modal-bg">
        <div class="modal-container">
            <div class="modal-box">
                <form>
                    <div class="datos-actividad">
                        <div class="agregar-name_actividad">
                            <p>Nombre de Actividad:</p>
                            <input type="text" name="" id="nombre">
                        </div>
                        <div class="agregar-descripcion_actividad">
                            <p>Descripción:</p>
                            <input type="text" name="" id="descripcion">
                        </div>
                    </div>
                    <div class="topico-add">
                        <div class="checkbox-topico">
                            <input type="checkbox" id="check" value="1" onchange="showContent()"/> 
                            <p>Crear tópico</p>
                        </div>
                        <div id="createTopico" class="crear-topico_input">
                            <div class="topic">
                                <p>Nombre de tópico</p>
                                <input type="text" id="nombreTopico">
                            </div>
                            <div class="niv">
                                <p>Nivel</p>
                                <input type="text" id="nivel">
                            </div>
                        </div>
                        <div id="selectTopico" class="select-topico">
                            <select name="" id="select_topico">
                                <option value="topico1">Tópico I</option>
                                <option value="topico1">Tópico II</option>
                                <option value="topico3">Tópico III</option>
                            </select>
                        </div>
                    </div>
                </form>
                <div class="botones-accion">
                    <button onclick="cerrarModalEditar()" class="btn-cancelar">Cancelar</button>
                    <button class="btn-agregar" onclick="quedoAgregado()">Agregar</button>
                </div>
            </div>
        </div>
    </div>
    <!--------------------------------------------------MODAL PARA VISUALIZAR-------------------------------------------------->
    <div class="modal-visualizar_bg">
        <div class="modal-visualizar_container">
            <div class="modal-visualizar_box">
                <div class="nombre-actividad">
                    <h2>Actividad 1</h2>
                </div>
                <div class="descripcion-actividad">
                    <p>Puede ser en respuesta a una pista del adulto para empezar pero apilar 3 ó más bloques independientemente. </p>
                </div>
                <div class="topico-nivel">
                    <div class="topico">
                        <h2>Habilidades Sociales</h2>
                    </div>
                    <div class="nivel">
                        <h2>Nivel 4</h2>
                    </div>
                </div>
                <div class="botones">
                    <button onclick="cerrarModalVisualizar()" class="btn-cancelar">Cancelar</button>
                </div>
            </div>
        </div>
    </div>
    <!--------------------------------------------------MODAL PARA ELIMINAR-------------------------------------------------->
    <script src="../generalAssest/js/cargarHeader.js"></script>
    <main>
        <div class="conteiner-main">
            <div class="title">
                <div class="add">
                    <button id="agregar" class="boton-agregar_modal"><i class="fa-solid fa-file-circle-plus"></i>  Nutrir Curriculum</button>
                </div>
                <h1>Curriculum</h1>
                <hr>
            </div>
            <div class="table">
                <table id="table" class="cell-border display compact order-column">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Topico</th>
                            <th>Nivel</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
    
    <script src="<?php base_url() ?>assets/Curriculum/js/dataTable.js"></script>
    <script src="<?php base_url() ?>assets/Curriculum/js/botones.js"></script>
</body>
</html>