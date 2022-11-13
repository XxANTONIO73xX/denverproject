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

    public function login($email, $pass){
        $result = $this->asArray()->where([
            "correo" => $email,
            "pass" => $pass
        ])->first();
        return $result;
    }
}