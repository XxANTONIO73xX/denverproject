<?php
namespace App\Models;
use CodeIgniter\Model;
use Exception;

class TerapeutaModel extends Model{
    protected $table = "terapeutas";
    protected $primaryKey = "id";
    protected $allowedFields = [
        "id",
        "nombre",
        "apellidos",
        "correo",
        "pass",
        "descripcion"
    ];
}