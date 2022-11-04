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
        "edad",
        "direccion",
        "telefono",
        "correo",
        "pass",
        "idInfante"
    ];

    public function obtenerPorInfante($id){
        $result = $this->asArray()->where(["idInfante" => $id])->findAll();
        return $result;
    }
}



?>