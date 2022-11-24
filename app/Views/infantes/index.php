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
                <div class="datos-infante">
                        <div class="agregar-name_infante">
                            <p>Nombre de Actividad:</p>
                            <input type="text" name="" id="nombre">
                        </div>
                        <div class="agregar-apellidos_infante">
                            <p>Descripción:</p>
                            <input type="text" name="" id="apellidos">
                        </div>
                        <div class="agregar-edad_infante">
                            <p>Edad:</p>
                            <input type="text" name="" id="edad">
                        </div>
                        <div class="agregar-curp_infante">
                            <p>CURP:</p>
                            <input type="text" name="" id="curp">
                        </div>
                        <div class="agregar-diagnostico_infante">
                            <p>Diagnostico:</p>
                            <input type="text" name="" id="diagnostico">
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