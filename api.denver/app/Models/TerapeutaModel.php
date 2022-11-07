<?php
namespace App\Models;

use App\Controllers\Respuesta;
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

    public function login($email, $pass){
        $result = $this->asArray()->where([
            "correo" => $email,
            "pass" => $pass
        ])->first();
        return $result;
    }
}