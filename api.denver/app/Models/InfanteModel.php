<?php
namespace App\Models;
use CodeIgniter\Model;
use Exception;

class InfanteModel extends Model{
    protected $table = "infantes";
    protected $primaryKey = "id";
    protected $allowedFields = [
        "id",
        "nombre",
        "apellidos",
        "edad",
        "curp",
        "diagnostico"
    ];
}