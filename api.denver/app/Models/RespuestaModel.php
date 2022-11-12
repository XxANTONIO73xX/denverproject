<?php
namespace App\Models;
use CodeIgniter\Model;

class RespuestaModel extends Model{
    protected $table = "respuestas";
    protected $primaryKey = "id";
    protected $allowedFields = [
        "id",
        "idPadre",
        "idActividad",
        "idTopico",
        "respuestaUsuario",
        "evidencia"
    ];
}