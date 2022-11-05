<?php
namespace App\Models;
use CodeIgniter\Model;

class PadreModel extends Model{
    protected $table = "padres";
    protected $primaryKey = "id";
    protected $allowedFields = [
        "id",
        "nombre",  
        "apellido",  
        "direccion",   
        "correo",  
        "pass",  
        "idInfante",
    ];
}