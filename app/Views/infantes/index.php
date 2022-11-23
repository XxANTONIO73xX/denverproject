    <link rel="stylesheet" href="<?php base_url() ?>assets/Infantes/css/styles.css">
    <script src="https://kit.fontawesome.com/7a089fb5de.js" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
                            <select name="idTopico" id="select_topico">
                            </select>
                        </div>
                    </div>
                </form>
                <div class="botones-accion">
                    <button onclick="cerrarModalEditar()" class="btn-cancelar">Cancelar</button>
                    <button class="btn-agregar" onclick="agregar(0)">Agregar</button>
                </div>
            </div>
        </div>
    </div>
    <!--------------------------------------------------MODAL PARA VISUALIZAR-------------------------------------------------->
    <div class="modal-visualizar_bg">
        
    </div>
    <!--------------------------------------------------MODAL PARA ELIMINAR-------------------------------------------------->
    <main>
        <div class="conteiner-main">
            <div class="title">
                <div class="add">
                    <button id="agregar" class="boton-agregar_modal"><i class="fa-solid fa-file-circle-plus"></i>  Agregar Infante</button>
                </div>
                <h1>Infantes</h1>
                <hr>
            </div>
            <div class="table">
                <table id="table" class="cell-border display compact order-column">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Edad</th>
                            <th>CURP</th>
                            <th>Diagnostico</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
    
    <script src="<?php base_url() ?>assets/Infantes/js/dataTable.js"></script>
    <script src="<?php base_url() ?>assets/Infantes/js/botones.js"></script>
</body>
</html>