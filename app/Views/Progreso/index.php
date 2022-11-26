<link rel="stylesheet" href="<?php base_url() ?>assets/progreso/css/styles.css">
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
                        <div class="agregar-name_padre">
                            <p>Nombre:</p>
                            <input type="text" name="" id="nombre">
                        </div>
                        <div class="agregar-apellido_padre">
                            <p>Apellido:</p>
                            <input type="text" name="" id="apellido">
                        </div>
                        <div class="agregar-direccion_padre">
                            <p>Direccion:</p>
                            <input type="text" name="" id="direccion">
                        </div>
                        <div class="agregar-telefono_padre">
                            <p>Telefono:</p>
                            <input type="text" name="" id="telefono">
                        </div>
                        <div class="agregar-correo_padre">
                            <p>Correo Electronico:</p>
                            <input type="email" name="" id="correo">
                        </div>
                        <div class="agregar-descripcion_actividad">
                            <p>Password:</p>
                            <input type="text" name="" id="pass">
                        </div>
                        <div id="selectInfante" class="select-infante">
                            <select name="idInfante" id="select_infante">
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
                    <button id="agregar" style="display: none;" class="boton-agregar_modal"><i class="fa-solid fa-file-circle-plus"></i>  Agregar Padre</button>
                </div>
                <h1>Progreso</h1>
                <hr>
            </div>
            <div class="table">
                <table id="table" class="cell-border display compact order-column">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Padre</th>
                            <th>Infante</th>
                            <th>Nivel</th>
                            <th>Topico</th>
                            <th>N°. Actividad</th>
                            <th>Respuesta</th>
                            <th>Evidencia</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
    
    <script src="<?php base_url() ?>assets/progreso/js/dataTable.js"></script>
    <script src="<?php base_url() ?>assets/progreso/js/botones.js"></script>
</body>
</html>