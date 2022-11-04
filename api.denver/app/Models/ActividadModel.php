<?php
namespace App\Models;
use CodeIgniter\Model;

class ActividadModel extends Model{
    protected $table = "actividad";
    protected $primaryKey = "id";

    protected $allowedFields = [
        "id",
        "nombre",
        "descripcion",
        "idTopico"
    ];

    public function obtenerPorTopico($id){
        $result = $this->asArray()->where(["idTopico" => $id])->findAll();
        return $result;
    }
}



?>